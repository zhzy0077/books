#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
qa_audit.py:
全自动书籍排版视觉与内容一致性独立审核流水线 (通过 pi CLI 调度多模态大模型进行双页盲审)。

特性:
1. 支持灵活采样:
   - 显式页码列表/范围 (--pages 21,36,40-50)
   - 均匀抽样 (--sample-pct 10)
   - 矩阵密集页自动识别抽样 (--matrix-dense-pct 10 --chapters-dir <path>)
2. 自动多线程渲染 (pdftoppm @150DPI) 与 PIL 双页并排拼合。
3. 自动并发调用 pi (默认 --provider r4 --model glm-5.3-flash) 进行客观评审。
4. 结构化 JSON 结果收集与自动生成 Markdown 验收审计报告 (FINAL_REPORT.md)。

用法:
    # 抽样 10% 进行矩阵专项审核
    python3 tools/qa_audit.py \
        --source-pdf linear-algebra-5th/线性代数导论.pdf \
        --typst-pdf linear-algebra-5th/线性代数导论-typst.pdf \
        --matrix-dense-pct 10 \
        --chapters-dir linear-algebra-5th/chapters \
        --output-dir linear-algebra-5th/qa-reports/matrix-audit-test

    # 指定具体页码进行常规审核
    python3 tools/qa_audit.py \
        --source-pdf linear-algebra-5th/线性代数导论.pdf \
        --typst-pdf linear-algebra-5th/线性代数导论-typst.pdf \
        --pages 21,36,40 \
        --output-dir qa-quick-check
"""

import os, sys, subprocess, concurrent.futures, json, time, re, argparse
from pathlib import Path
from PIL import Image

def get_pdf_page_count(pdf_path):
    res = subprocess.run(['pdfinfo', str(pdf_path)], capture_output=True, text=True)
    if res.returncode != 0:
        return 0
    m = re.search(r'Pages:\s+(\d+)', res.stdout)
    return int(m.group(1)) if m else 0

def find_matrix_dense_pages(chapters_dir, top_k):
    chapters_path = Path(chapters_dir)
    scores = []
    for f in os.listdir(chapters_path):
        m = re.match(r'^p(\d+)\.typ$', f)
        if not m:
            continue
        p = int(m.group(1))
        content = (chapters_path / f).read_text(encoding='utf-8')
        # 统计矩阵相关关键字频次
        score = len(re.findall(r'mat\(|vec\(|cases\(|&|\\\\', content))
        if score > 0:
            scores.append((score, p))
            
    scores.sort(key=lambda x: (-x[0], x[1]))
    selected = [p for _, p in scores[:top_k]]
    selected.sort()
    return selected

def render_and_compare(src_pdf, typ_pdf, p, images_dir, out_dir, dpi=150):
    src_png = images_dir / f'source-{p:03d}.png'
    typ_png = images_dir / f'typst-{p:03d}.png'
    comp_png = out_dir / f'comp-{p:03d}.png'
    
    if not src_png.exists():
        subprocess.run([
            'pdftoppm', '-r', str(dpi), '-f', str(p), '-l', str(p), '-singlefile', '-png',
            str(src_pdf), str(images_dir / f'source-{p:03d}')
        ], check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    
    if not typ_png.exists():
        subprocess.run([
            'pdftoppm', '-r', str(dpi), '-f', str(p), '-l', str(p), '-singlefile', '-png',
            str(typ_pdf), str(images_dir / f'typst-{p:03d}')
        ], check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    
    if not comp_png.exists():
        im_src = Image.open(src_png)
        im_typ = Image.open(typ_png)
        w = min(im_src.width, im_typ.width)
        h = min(im_src.height, im_typ.height)
        im_src = im_src.resize((w, h))
        im_typ = im_typ.resize((w, h))
        comp = Image.new('RGB', (w * 2 + 20, h), (200, 200, 200))
        comp.paste(im_src, (0, 0))
        comp.paste(im_typ, (w + 20, 0))
        comp.save(comp_png)

def review_one(p, out_dir, reviews_dir, focus="general", model="glm-5.3-flash", provider="r4"):
    out_file = reviews_dir / f'review-{p:03d}.json'
    if out_file.exists():
        try:
            data = json.loads(out_file.read_text(encoding='utf-8'))
            return p, data.get('rating', 'UNKNOWN'), data.get('issues', []), data.get('major_defect', False), data
        except Exception:
            pass

    comp_png = out_dir / f'comp-{p:03d}.png'
    
    if focus == "matrix":
        prompt = f"""你是书籍排版转写的一致性独立验收员，本次专项目标是【矩阵密集页面的排版与行高核验】。
本图片为第 {p} 页的双页并排对比图：左侧为【原书扫描页】，右侧为【新版 Typst 重排页】，同为 150DPI。

请真实客观对比两图，输出 JSON 格式（不要输出 markdown 代码块以外的解释）：
```json
{{
  "page": {p},
  "rating": "PASS" 或 "PARTIAL" 或 "FAIL",
  "major_defect": true 或 false,
  "matrix_collision": true 或 false,
  "issues": ["差异1", "差异2"],
  "fix_needed": true 或 false
}}
```
判定标准：
- PASS: 内容完全、版式严谨契合，矩阵与文本行高舒展、无任何碰撞压盖。
- PARTIAL: 内容完整，无矩阵挤压碰撞，仅存在少量换行断行、字重等次要排版微调，major_defect 为 false。
- FAIL / major_defect = true: 存在主要缺陷（特别关注：1. 行高过低导致矩阵/向量/大括号相互撞在一起或与上下行文字压盖；2. 矩阵整行/整列缺失或元素错误；3. 公式/文本大面积重叠或严重溢出压页脚）。
重点核查：
1) 矩阵、列向量、方程组大括号（cases）是否发生上下相撞、行间距过紧或元素文字压盖；
2) 矩阵维度、元素数字、负号、括号定界符是否与原书一致且完整；
3) 是否存在错行溢出或底边压页脚。"""
    else:
        prompt = f"""你是书籍排版转写的一致性独立验收员。
本图片为第 {p} 页的双页并排对比图：左侧为【原书扫描页】，右侧为【新版 Typst 重排页】，同为 150DPI。

请真实客观对比两图，输出 JSON 格式（不要输出 markdown 代码块以外的解释）：
```json
{{
  "page": {p},
  "rating": "PASS" 或 "PARTIAL" 或 "FAIL",
  "major_defect": true 或 false,
  "issues": ["差异1", "差异2"],
  "fix_needed": true 或 false
}}
```
判定标准：
- PASS: 内容完全、版式严谨契合原书、层次清晰、无错行溢出压页脚。
- PARTIAL: 内容完整，版式良好，仅有非破坏性的次要排版差异，major_defect 为 false。
- FAIL / major_defect = true: 存在主要缺陷（公式错误/缺失、大面积文本丢失、错行溢出压页脚、严重叠字）。"""

    cmd = [
        'pi', '--provider', provider, '--model', model, '--thinking', 'off',
        '--no-extensions', '--no-mcp', '--no-skills', '--no-prompt-templates', '--no-session', '--no-tools',
        '-p', f'@{comp_png}', prompt
    ]
    
    for attempt in range(2):
        try:
            res = subprocess.run(cmd, capture_output=True, text=True, timeout=300)
            if res.returncode == 0:
                txt = res.stdout
                m = re.search(r'```(?:json)?\s*\n(.*?)\n```', txt, re.DOTALL)
                raw_json = m.group(1).strip() if m else txt.strip()
                data = json.loads(raw_json)
                out_file.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding='utf-8')
                return p, data.get('rating', 'UNKNOWN'), data.get('issues', []), data.get('major_defect', False), data
            else:
                print(f"[WARN] pi returned code {res.returncode} for page {p}: {res.stderr[:200]}")
        except Exception as e:
            print(f"[WARN] Error reviewing page {p} (attempt {attempt}): {e}")
            time.sleep(2)
            
    err_data = {"page": p, "rating": "ERROR", "major_defect": True, "issues": ["Failed after 2 attempts"]}
    return p, "ERROR", ["Failed after 2 attempts"], True, err_data

def generate_report(out_dir, summary, results):
    report_file = out_dir / 'FINAL_REPORT.md'
    total = summary['sample_size']
    pass_cnt = summary['pass_count']
    partial_cnt = summary['partial_count']
    fail_cnt = summary['fail_count']
    pass_rate = (pass_cnt + partial_cnt) / total * 100 if total else 0
    clean_rate = pass_cnt / total * 100 if total else 0

    lines = [
        f"# 自动化独立视觉与内容一致性审计报告",
        f"",
        f"- **测试轮次/专案**: {summary.get('focus', 'General')} Audit",
        f"- **评审模型**: `{summary.get('model', 'glm-5.3-flash')}`",
        f"- **抽检样本量**: {total} 页",
        f"- **合格率 (PASS + PARTIAL)**: **{pass_rate:.1f}%** ({pass_cnt + partial_cnt}/{total})",
        f"- **纯洁通过率 (完全 PASS)**: **{clean_rate:.1f}%** ({pass_cnt}/{total})",
        f"- **主要缺陷 (FAIL / major_defect)**: **{fail_cnt}** 处",
        f"",
        f"---",
        f"",
        f"## 1. 审核结果总览",
        f"",
        f"| 评级 | 数量 | 占比 | 判定定义 |",
        f"| :--- | :--- | :--- | :--- |",
        f"| **PASS** | {pass_cnt} | {clean_rate:.1f}% | 内容完全、排版严谨、无任何格式缺陷 |",
        f"| **PARTIAL** | {partial_cnt} | {partial_cnt/total*100:.1f}% | 内容完整无缺失，仅有非破坏性次要排版微调 |",
        f"| **FAIL** | {fail_cnt} | {fail_cnt/total*100:.1f}% | 存在主要缺陷 (公式缺失、错行溢出、严重碰撞等) |",
        f"",
        f"---",
        f"",
        f"## 2. 逐页详细结果清单",
        f"",
        f"| 页码 | 评级 | 主要缺陷? | 问题与核验记录 |",
        f"| :--- | :--- | :--- | :--- |"
    ]

    for p in sorted(results.keys()):
        r = results[p]
        rating = r.get('rating', 'UNKNOWN')
        major = "❌ 是" if r.get('major_defect') else "✅ 否"
        issues = "<br>".join(r.get('issues', [])) or "无"
        lines.append(f"| 第 {p:03d} 页 | **{rating}** | {major} | {issues} |")

    report_file.write_text("\n".join(lines), encoding='utf-8')
    print(f"[OK] Report written to: {report_file}")

def main():
    parser = argparse.ArgumentParser(description="Automated Visual & Semantic QA Audit Pipeline via pi.")
    parser.add_argument('--source-pdf', required=True, help="Path to scanned original PDF")
    parser.add_argument('--typst-pdf', required=True, help="Path to compiled Typst PDF")
    parser.add_argument('--output-dir', default='qa-audit-out', help="Output directory for reports and images")
    parser.add_argument('--pages', help="Comma-separated pages or range (e.g. 21,36,40-50)")
    parser.add_argument('--sample-pct', type=float, help="Uniformly sample N% of all pages (e.g. 10)")
    parser.add_argument('--matrix-dense-pct', type=float, help="Sample top N% matrix-heavy pages (e.g. 10)")
    parser.add_argument('--chapters-dir', help="Directory of chapters/ (required for matrix-dense sampling)")
    parser.add_argument('--focus', choices=['general', 'matrix'], default='general', help="Review focus")
    parser.add_argument('--model', default='glm-5.3-flash', help="LLM model (default: glm-5.3-flash)")
    parser.add_argument('--provider', default='r4', help="Provider for pi (default: r4)")
    parser.add_argument('--workers', type=int, default=5, help="Workers for LLM reviews (default: 5)")
    args = parser.parse_args()

    total_pdf_pages = get_pdf_page_count(args.source_pdf)
    if total_pdf_pages == 0:
        print(f"Error: Could not read pages from source PDF {args.source_pdf}", file=sys.stderr)
        sys.exit(1)

    # 确定待审页码集合
    if args.pages:
        target_pages = []
        for part in args.pages.split(','):
            part = part.strip()
            if '-' in part:
                s, e = map(int, part.split('-'))
                target_pages.extend(range(s, e + 1))
            elif part:
                target_pages.append(int(part))
    elif args.matrix_dense_pct:
        if not args.chapters_dir:
            print("Error: --chapters-dir is required when using --matrix-dense-pct", file=sys.stderr)
            sys.exit(1)
        top_k = max(1, int(round(total_pdf_pages * (args.matrix_dense_pct / 100.0))))
        target_pages = find_matrix_dense_pages(args.chapters_dir, top_k)
        args.focus = 'matrix'
    elif args.sample_pct:
        step = max(1, int(round(100.0 / args.sample_pct)))
        target_pages = list(range(step // 2, total_pdf_pages + 1, step))
    else:
        print("Error: Must specify one of --pages, --sample-pct, or --matrix-dense-pct", file=sys.stderr)
        sys.exit(1)

    target_pages = sorted(list(set(target_pages)))
    out_dir = Path(args.output_dir).resolve()
    images_dir = out_dir / 'images'
    reviews_dir = out_dir / 'reviews'
    images_dir.mkdir(parents=True, exist_ok=True)
    reviews_dir.mkdir(parents=True, exist_ok=True)

    print(f"============================================================")
    print(f"Starting QA Audit on {len(target_pages)} pages")
    print(f"Source PDF : {args.source_pdf}")
    print(f"Typst PDF  : {args.typst-pdf if hasattr(args, 'typst-pdf') else args.typst_pdf}")
    print(f"Focus      : {args.focus}")
    print(f"Model      : {args.provider}/{args.model} (workers={args.workers})")
    print(f"Output Dir : {out_dir}")
    print(f"============================================================")

    # 1. 渲染双页拼合图
    t0 = time.time()
    print("Step 1: Rendering comparison images...")
    with concurrent.futures.ThreadPoolExecutor(max_workers=8) as pool:
        futures = [pool.submit(render_and_compare, args.source_pdf, args.typst_pdf, p, images_dir, out_dir) for p in target_pages]
        concurrent.futures.wait(futures)
    print(f"Rendering finished in {time.time() - t0:.1f}s")

    # 2. 并发 LLM 视觉审查
    print(f"Step 2: Conducting independent reviews via pi...")
    results = {}
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = {pool.submit(review_one, p, out_dir, reviews_dir, args.focus, args.model, args.provider): p for p in target_pages}
        for fut in concurrent.futures.as_completed(futures):
            p = futures[fut]
            try:
                pg, rating, issues, major_defect, full_data = fut.result()
                results[pg] = full_data
                status_icon = "✅" if rating == "PASS" else ("⚠️" if rating == "PARTIAL" else "❌")
                print(f"{status_icon} Page {pg:03d}: {rating} (Major Defect: {major_defect})")
            except Exception as e:
                results[p] = {"rating": "ERROR", "issues": [str(e)], "major_defect": True}
                print(f"❌ Page {p:03d} EXCEPTION: {e}")

    # 3. 统计并输出报告
    pass_cnt = sum(1 for r in results.values() if r.get("rating") == "PASS")
    partial_cnt = sum(1 for r in results.values() if r.get("rating") == "PARTIAL")
    fail_cnt = sum(1 for r in results.values() if r.get("rating") == "FAIL" or r.get("major_defect"))

    summary = {
        "focus": args.focus,
        "model": f"{args.provider}/{args.model}",
        "sample_size": len(target_pages),
        "pages": target_pages,
        "pass_count": pass_cnt,
        "partial_count": partial_cnt,
        "fail_count": fail_cnt
    }
    (out_dir / 'summary.json').write_text(json.dumps(summary, ensure_ascii=False, indent=2), encoding='utf-8')
    generate_report(out_dir, summary, results)

if __name__ == '__main__':
    main()
