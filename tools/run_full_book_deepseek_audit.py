#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
run_full_book_deepseek_audit.py:
全书 634 页深度视觉与排版一致性审计系统 (基于 pi + r4/deepseek-v4.1-flash)。

核验维度:
1. 行间距 (Line Spacing)
2. 公式布局 (Equation Layout)
3. 图像位置与尺寸 (Image Placement)
4. 内容与文字符号完整度

每一处不一致均明确标注【具体原因】与【建议修复归属 (主题 theme.typ 修正 vs 单页 chapter 修正)】。
"""

import os, sys, subprocess, concurrent.futures, json, time, re, argparse
from pathlib import Path
from PIL import Image
import numpy as np

ROOT = Path('/home/zhizhen/Code/books')
BOOK_DIR = ROOT / 'linear-algebra-5th'
SRC_PDF = BOOK_DIR / '线性代数导论.pdf'
TYP_PDF = BOOK_DIR / '线性代数导论-typst.pdf'

AUDIT_DIR = BOOK_DIR / 'full-audit-deepseek'
IMG_DIR = AUDIT_DIR / 'images'
COMP_DIR = AUDIT_DIR / 'comparisons'
REV_DIR = AUDIT_DIR / 'reviews'

for d in (AUDIT_DIR, IMG_DIR, COMP_DIR, REV_DIR):
    d.mkdir(parents=True, exist_ok=True)

PROMPT_TEMPLATE = """你是顶级书籍排版与印刷还原专家。
本图为第 {page} 页的左右并排对比图：左侧为【原书扫描】，右侧为【新版Typst重排】（均为 150 DPI）。
请对第 {page} 页进行专业客观的排版核验与评估：

【核心说明与识别标准】
1. 左右拼图关系：左半幅是原书单页，右半幅是新版单页。切勿将“左右并排展示”误认为新版排版成了双栏！对于双栏页面（如索引页），左右两版内部各自呈现双栏，只要结构与内容对应即为合格。
2. 评级标准（以专业出版印刷合格标准为准）：
   - PASS（合格/完全达标）：文字、数学公式、图像内容完整无缺漏；公式居中/左齐、标号位置正确；无重叠碰撞、无源码泄漏（如 quad 乱码或 align 语法错误）；版面节奏自然平衡、与原书视觉观感高度吻合。数字排版中微小的字体字偶距或细微像素级行距差异属于 Typst 正常渲染，必须评为 PASS。
   - PARTIAL（需微调）：内容完整无缺失，但存在肉眼一目了然且非微观渲染差异的排版瑕疵（如公式明显偏左未居中、标题上方间距严重缺失、或多行大块留白失衡）。
   - FAIL（不合格）：存在实质性重大缺陷，如正文/公式内容遗漏、断裂残缺、公式标号严重错行掉行、源码语法泄漏、图表缺失或严重错位等。
3. 【意图留白页】：若左右两页在原书与新版中均为空白（如章节间有意留白页/空白扉页），属于完全一致的合格排版，必须直接给出 PASS 评级，discrepancies 为空数组 []。

【强制要求】
若新版内容完整、公式与图像对齐良好且无实质排版缺陷，请公允给出 PASS 评级，并在 summary 中总结还原质量。
仅当给出 PARTIAL 或 FAIL 时，才标明具体的不一致现象、具体原因与建议修复归属。

请严格输出如下 JSON 格式，严禁包含任何 json 代码块以外的闲聊文字：
```json
{{
  "page": {page},
  "rating": "PASS 或 PARTIAL 或 FAIL",
  "line_spacing_aligned": true 或 false,
  "equation_layout_aligned": true 或 false,
  "image_position_aligned": true 或 false,
  "text_symbols_aligned": true 或 false,
  "discrepancies": [
    {{
      "category": "行间距 或 公式布局 或 图像位置 或 文字与符号",
      "description": "具体不一致现象描述",
      "cause": "标明具体原因",
      "fix_target": "theme 或 chapter",
      "theme_suggestion": "若为 theme，建议如何调整 theme.typ 规则或宏参数"
    }}
  ],
  "summary": "本页排版一句话总结"
}}
```"""

def render_page(p, dpi=150, force=False):
    src_png = IMG_DIR / f'src-{p:03d}.png'
    typ_png = IMG_DIR / f'typ-{p:03d}.png'
    comp_png = COMP_DIR / f'comp-{p:03d}.png'

    if not src_png.exists():
        subprocess.run([
            'pdftoppm', '-r', str(dpi), '-f', str(p), '-l', str(p), '-singlefile', '-png',
            str(SRC_PDF), str(IMG_DIR / f'src-{p:03d}')
        ], check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

    if force and typ_png.exists():
        typ_png.unlink(missing_ok=True)
    if not typ_png.exists():
        subprocess.run([
            'pdftoppm', '-r', str(dpi), '-f', str(p), '-l', str(p), '-singlefile', '-png',
            str(TYP_PDF), str(IMG_DIR / f'typ-{p:03d}')
        ], check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

    if force and comp_png.exists():
        comp_png.unlink(missing_ok=True)
    if not comp_png.exists():
        im_s = Image.open(src_png)
        im_t = Image.open(typ_png)
        w = min(im_s.width, im_t.width)
        h = min(im_s.height, im_t.height)
        im_s = im_s.resize((w, h))
        im_t = im_t.resize((w, h))
        comp = Image.new('RGB', (w * 2 + 20, h), (200, 200, 200))
        comp.paste(im_s, (0, 0))
        comp.paste(im_t, (w + 20, 0))
        comp.save(comp_png)

def review_page(p, force=False):
    rev_file = REV_DIR / f'review-{p:03d}.json'
    if not force and rev_file.exists():
        try:
            data = json.loads(rev_file.read_text(encoding='utf-8'))
            if 'rating' in data:
                return p, data
        except Exception:
            pass

    comp_png = COMP_DIR / f'comp-{p:03d}.png'

    # 意图性空白页快速判定 (完全空白/两边标准差极低)
    if comp_png.exists():
        try:
            im = Image.open(comp_png).convert('L')
            arr = np.array(im)
            if float(arr.std()) < 10.0:
                blank_data = {
                    "page": p,
                    "rating": "PASS",
                    "line_spacing_aligned": True,
                    "equation_layout_aligned": True,
                    "image_position_aligned": True,
                    "text_symbols_aligned": True,
                    "discrepancies": [],
                    "summary": "原书与新版左右两页均为空白页，内容与版面完全一致，合格。"
                }
                rev_file.write_text(json.dumps(blank_data, ensure_ascii=False, indent=2), encoding='utf-8')
                return p, blank_data
        except Exception:
            pass

    prompt = PROMPT_TEMPLATE.format(page=p)
    cmd = [
        'pi', '--provider', 'r4', '--model', 'deepseek-v4.1-flash', '--thinking', 'off',
        '--no-extensions', '--no-mcp', '--no-skills', '--no-prompt-templates', '--no-session', '--no-tools',
        '-p', f'@{comp_png}', prompt
    ]

    for attempt in range(4):
        try:
            time.sleep(0.5)
            res = subprocess.run(cmd, capture_output=True, text=True, timeout=120)
            if res.returncode == 0:
                txt = res.stdout
                m = re.search(r'```(?:json)?\s*\n(.*?)\n```', txt, re.DOTALL)
                raw = m.group(1).strip() if m else txt.strip()
                data = json.loads(raw)
                rev_file.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding='utf-8')
                return p, data
            else:
                err_msg = res.stderr or res.stdout
                if "429" in err_msg or "TOO_MANY_REQUESTS" in err_msg or "In-flight" in err_msg:
                    sleep_sec = 4 * (attempt + 1)
                    print(f"[RATE_LIMIT] p{p:03d} hit 429, backing off for {sleep_sec}s...", file=sys.stderr)
                    time.sleep(sleep_sec)
                else:
                    print(f"[WARN] p{p:03d} attempt {attempt} error: {err_msg[:120]}", file=sys.stderr)
                    time.sleep(2)
        except Exception as e:
            print(f"[WARN] p{p:03d} attempt {attempt} exception: {e}", file=sys.stderr)
            time.sleep(3)

    err_data = {
        "page": p,
        "rating": "ERROR",
        "discrepancies": [{"category": "未知", "description": "审查请求超时或解析失败", "cause": "网络或模型错误", "fix_target": "theme"}],
        "summary": "审核未成功获取有效结果"
    }
    rev_file.write_text(json.dumps(err_data, ensure_ascii=False, indent=2), encoding='utf-8')
    return p, err_data

def update_aggregated_reports(all_results):
    total = len(all_results)
    pass_cnt = sum(1 for r in all_results.values() if r.get('rating') == 'PASS')
    partial_cnt = sum(1 for r in all_results.values() if r.get('rating') == 'PARTIAL')
    fail_cnt = sum(1 for r in all_results.values() if r.get('rating') in ('FAIL', 'ERROR'))

    line_spacing_ok = sum(1 for r in all_results.values() if r.get('line_spacing_aligned', False))
    equation_ok = sum(1 for r in all_results.values() if r.get('equation_layout_aligned', False))
    image_ok = sum(1 for r in all_results.values() if r.get('image_position_aligned', False))

    # 1. 进度仪表板 PROGRESS.md
    prog_lines = [
        f"# 全书 634 页深度一致性核验仪表板 (pi + r4/deepseek-v4.1-flash)",
        f"",
        f"- **总页数**: 634 页",
        f"- **已完成核验**: {total} / 634 ({total / 634 * 100:.1f}%)",
        f"- **完全合格 (PASS)**: {pass_cnt} ({pass_cnt / total * 100:.1f}%)",
        f"- **次要微调 (PARTIAL)**: {partial_cnt} ({partial_cnt / total * 100:.1f}%)",
        f"- **需修正缺陷 (FAIL/ERROR)**: {fail_cnt} ({fail_cnt / total * 100:.1f}%)",
        f"",
        f"### 各维度一致性达标率",
        f"- **行间距一致率**: {line_spacing_ok}/{total} ({line_spacing_ok/total*100:.1f}%)",
        f"- **公式布局一致率**: {equation_ok}/{total} ({equation_ok/total*100:.1f}%)",
        f"- **图像位置一致率**: {image_ok}/{total} ({image_ok/total*100:.1f}%)",
        f"",
        f"---",
        f"更新时间: {time.strftime('%Y-%m-%d %H:%M:%S')}"
    ]
    (AUDIT_DIR / 'PROGRESS.md').write_text("\n".join(prog_lines), encoding='utf-8')

    # 2. 主题修改建议集 THEME_DISCREPANCIES.md
    theme_issues = []
    for p, r in sorted(all_results.items()):
        for d in r.get('discrepancies', []):
            if d.get('fix_target') == 'theme':
                theme_issues.append((p, d))

    theme_lines = [
        f"# 主题修正建议汇总表 (Target: theme.typ)",
        f"",
        f"共收集到 **{len(theme_issues)}** 项可通过 `theme.typ` 全局优化的排版建议：",
        f"",
        f"| 页码 | 类别 | 不一致现象 | 根本原因 | 建议主题修改方案 |",
        f"| :--- | :--- | :--- | :--- | :--- |"
    ]
    for p, d in theme_issues:
        theme_lines.append(f"| 第 {p:03d} 页 | **{d.get('category')}** | {d.get('description')} | {d.get('cause')} | {d.get('theme_suggestion', '通用排版调优')} |")

    (AUDIT_DIR / 'THEME_DISCREPANCIES.md').write_text("\n".join(theme_lines), encoding='utf-8')

    # 3. 完整不一致问题记录清单 DISCREPANCIES_REGISTRY.md
    reg_lines = [
        f"# 全书排版不一致项完整清单 (带原因与修复归属)",
        f"",
        f"| 页码 | 评级 | 类别 | 现象说明 | 产生原因 | 修复归属 | 建议方案 |",
        f"| :--- | :--- | :--- | :--- | :--- | :--- | :--- |"
    ]
    for p, r in sorted(all_results.items()):
        rating = r.get('rating', 'UNKNOWN')
        discs = r.get('discrepancies', [])
        if not discs:
            reg_lines.append(f"| 第 {p:03d} 页 | **{rating}** | - | 无显著排版差异 | - | - | - |")
        else:
            for d in discs:
                reg_lines.append(f"| 第 {p:03d} 页 | **{rating}** | {d.get('category')} | {d.get('description')} | {d.get('cause')} | **{d.get('fix_target')}** | {d.get('theme_suggestion', '-')} |")

    (AUDIT_DIR / 'DISCREPANCIES_REGISTRY.md').write_text("\n".join(reg_lines), encoding='utf-8')

def main():
    parser = argparse.ArgumentParser(description="Full book 634 pages audit with deepseek-v4.1-flash.")
    parser.add_argument('--pages', help="Specific page range (e.g. 1-50, or 21,36)")
    parser.add_argument('--workers', type=int, default=2, help="Concurrent workers (default: 2, strictly <=2)")
    parser.add_argument('--force', action='store_true', help="Re-review even if review exists")
    parser.add_argument('--filter-ratings', help="Filter target pages by current rating (e.g. 'PARTIAL' or 'PARTIAL,FAIL')")
    args = parser.parse_args()

    if args.pages:
        target_pages = []
        for part in args.pages.split(','):
            part = part.strip()
            if '-' in part:
                s, e = map(int, part.split('-'))
                target_pages.extend(range(s, e + 1))
            elif part:
                target_pages.append(int(part))
    else:
        target_pages = list(range(1, 635))

    if args.filter_ratings:
        allowed = set(r.strip() for r in args.filter_ratings.split(','))
        filtered = []
        for p in target_pages:
            rf = REV_DIR / f'review-{p:03d}.json'
            if rf.exists():
                try:
                    d = json.loads(rf.read_text(encoding='utf-8'))
                    if d.get('rating') in allowed:
                        filtered.append(p)
                except Exception:
                    pass
        target_pages = filtered

    target_pages = sorted(list(set(target_pages)))
    print(f"============================================================")
    print(f"Auditing {len(target_pages)} pages with pi + r4/deepseek-v4.1-flash")
    print(f"Workers: {args.workers} | Target Dir: {AUDIT_DIR}")
    print(f"============================================================")

    # 0. 自动编译最新 PDF
    print(f"--> Step 0: Compiling Typst book to {TYP_PDF.name}...")
    subprocess.run(['typst', 'compile', str(BOOK_DIR / 'main.typ'), str(TYP_PDF)], check=True)

    # 1. 批量渲染对比图 (并发 10)
    print(f"--> Step 1: Pre-rendering comparison images...")
    t0 = time.time()
    with concurrent.futures.ThreadPoolExecutor(max_workers=10) as pool:
        futures = [pool.submit(render_page, p, force=args.force) for p in target_pages]
        concurrent.futures.wait(futures)
    print(f"Rendering completed in {time.time() - t0:.1f}s.")

    # 2. 批量调用 pi 审查 (并发 workers)
    print(f"--> Step 2: Conducting deep reviews via pi (workers={args.workers})...")
    all_results = {}
    
    # 加载已有的 review
    for p in range(1, 635):
        rf = REV_DIR / f'review-{p:03d}.json'
        if rf.exists():
            try:
                all_results[p] = json.loads(rf.read_text(encoding='utf-8'))
            except Exception:
                pass

    t1 = time.time()
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = {pool.submit(review_page, p, args.force): p for p in target_pages}
        done_cnt = 0
        for fut in concurrent.futures.as_completed(futures):
            p = futures[fut]
            try:
                pg, data = fut.result()
                all_results[pg] = data
                done_cnt += 1
                rating = data.get('rating', 'UNKNOWN')
                icon = "✅" if rating == "PASS" else ("⚠️" if rating == "PARTIAL" else "❌")
                print(f"[{done_cnt}/{len(target_pages)}] {icon} Page {pg:03d} -> {rating} ({data.get('summary', '')[:40]})", flush=True)
                
                # 每完成 10 页实时刷新一次报告
                if done_cnt % 10 == 0 or done_cnt == len(target_pages):
                    update_aggregated_reports(all_results)
            except Exception as e:
                print(f"Page {p:03d} exception: {e}", file=sys.stderr)

    update_aggregated_reports(all_results)
    print(f"============================================================")
    print(f"Audit completed in {time.time() - t1:.1f}s.")
    print(f"Progress: {AUDIT_DIR / 'PROGRESS.md'}")
    print(f"Theme Discrepancies: {AUDIT_DIR / 'THEME_DISCREPANCIES.md'}")
    print(f"Registry: {AUDIT_DIR / 'DISCREPANCIES_REGISTRY.md'}")
    print(f"============================================================")

if __name__ == '__main__':
    main()
