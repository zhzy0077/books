#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
run_sampled_glm_audit.py:
10% (64 pages) 抽样独立排版核验系统 (基于 pi + r4/glm-5.3-flash + 中立客观 Prompt)。

严格核验维度:
1. 纵向版面节奏与行间距 (Line Spacing / Leading / Vertical Span)
2. 页面垂直填充与底部留白分布 (Bottom Void / Vertical Density)
3. 框体高度与区块间距 (Box Heights & Block Spacing)
4. 公式布局与数学符号对齐 (Equation Layout)
5. 图像位置与尺寸 (Image Placement)
6. 文字完整度 (Text Completeness)

所有不一致均明确标注【具体原因】与【建议修复归属 (theme.typ vs chapters/pXXX.typ)】。
"""

import os, sys, subprocess, concurrent.futures, json, time, re, argparse
from pathlib import Path
from PIL import Image
import numpy as np

ROOT = Path('/home/zhizhen/Code/books')
BOOK_DIR = ROOT / 'linear-algebra-5th'
SRC_PDF = BOOK_DIR / '线性代数导论.pdf'
TYP_PDF = BOOK_DIR / '线性代数导论-typst.pdf'

AUDIT_DIR = BOOK_DIR / 'sampled-audit-glm'
IMG_DIR = AUDIT_DIR / 'images'
COMP_DIR = AUDIT_DIR / 'comparisons'
REV_DIR = AUDIT_DIR / 'reviews'

for d in (AUDIT_DIR, IMG_DIR, COMP_DIR, REV_DIR):
    d.mkdir(parents=True, exist_ok=True)

SAMPLED_64_PAGES = [
    2, 11, 21, 32, 41, 52, 61, 72, 81, 92, 101, 112, 121, 132, 141, 152, 161, 172, 181, 192,
    201, 212, 221, 232, 241, 252, 261, 272, 281, 292, 301, 312, 321, 332, 341, 352, 361, 372, 381, 392,
    401, 412, 421, 432, 441, 452, 461, 472, 481, 492, 501, 512, 521, 532, 541, 552, 561, 572, 581, 592,
    601, 612, 621, 632
]

NEUTRAL_PROMPT_TEMPLATE = """你是顶级书籍排版与印刷还原专家。
本图为第 {page} 页的左右并排对比图：左侧为【原书扫描】，右侧为【新版Typst重排】（均为 150 DPI）。
请对第 {page} 页进行客观、严格、中立的排版核验与评估：

【说明与识别标准】
1. 左右拼图关系：左半幅是原书单页，右半幅是新版单页。切勿将左右并排展示误认为排版成了双栏。对于双栏页面（如索引），左右两版内部各自呈现双栏，只要结构与内容对应即可。
2. 评级标准（以出版级排版对齐为准）：
   - PASS（合格）：文字、公式、图像内容完整无缺漏；段落行距、要点框高度与版面纵向节奏与原书吻合；公式居中/标号位置正确；页面垂直填充充实，无明显异常的大块空缺留白；整体视觉观感与原书高度吻合。
   - PARTIAL（需微调）：内容完整无缺失，但存在肉眼明显的排版失衡（如行距明显过窄或过宽、要点框或区块高度明显缩减、末行过早结束导致页面底部多出异常大块留白、公式明显偏离对齐等）。
   - FAIL（不合格）：存在实质性重大缺陷（正文/公式内容遗漏、断裂残缺、公式标号严重错行、图表缺失或严重错位等）。
3. 【意图留白页】：若左右两页在原书与新版中均为空白（如章节间有意留白页/空白扉页），属于完全一致的合格排版，直接给出 PASS 评级，discrepancies 为空数组 []。

请严格输出如下 JSON 格式，严禁包含任何 json 代码块以外的闲聊文字：
```json
{{
  "page": {page},
  "rating": "PASS",
  "line_spacing_aligned": true,
  "equation_layout_aligned": true,
  "image_position_aligned": true,
  "text_symbols_aligned": true,
  "discrepancies": [
    {{
      "category": "行间距 或 垂直版面节奏 或 公式布局 或 图像位置 或 文字与符号",
      "description": "具体不一致现象描述",
      "cause": "标明具体原因",
      "fix_target": "theme 或 chapter",
      "theme_suggestion": "建议如何调整"
    }}
  ],
  "summary": "本页排版一句话总结"
}}
```
注意：rating 字段只能填写 "PASS"、"PARTIAL" 或 "FAIL" 之一。若有缺陷请如实列出。"""

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

    # 意图性空白页快速判定
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
                    "summary": "左右两版均为空白页，排版意图完全一致。"
                }
                rev_file.write_text(json.dumps(blank_data, ensure_ascii=False, indent=2), encoding='utf-8')
                return p, blank_data
        except Exception:
            pass

    prompt = NEUTRAL_PROMPT_TEMPLATE.format(page=p)

    cmd = [
        'pi', '--provider', 'r4', '--model', 'glm-5.3-flash',
        '--thinking', 'off', '--no-extensions', '--no-mcp', '--no-skills',
        '--no-prompt-templates', '--no-session', '--no-tools',
        '-p', f'@{comp_png}', prompt
    ]

    for attempt in range(4):
        try:
            res = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, timeout=120)
            if res.returncode != 0:
                err = res.stderr.strip()
                if '429' in err:
                    time.sleep(5 * (attempt + 1))
                    continue
                time.sleep(3)
                continue

            out = res.stdout.strip()
            # 提取 JSON
            m = re.search(r'```json\s*(\{.*?\})\s*```', out, re.DOTALL)
            if m:
                raw_json = m.group(1)
            else:
                m2 = re.search(r'(\{.*\})', out, re.DOTALL)
                raw_json = m2.group(1) if m2 else out

            data = json.loads(raw_json)
            data['page'] = p
            r = str(data.get('rating', '')).upper()
            if 'PARTIAL' in r:
                data['rating'] = 'PARTIAL'
            elif 'FAIL' in r:
                data['rating'] = 'FAIL'
            elif 'PASS' in r:
                data['rating'] = 'PASS'
            rev_file.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding='utf-8')
            return p, data
        except Exception as e:
            if attempt < 3:
                time.sleep(3 * (attempt + 1))
            else:
                fallback = {
                    "page": p,
                    "rating": "ERROR",
                    "line_spacing_aligned": False,
                    "equation_layout_aligned": False,
                    "image_position_aligned": False,
                    "text_symbols_aligned": False,
                    "discrepancies": [{"category": "系统执行", "description": f"Audit execution failed: {str(e)}", "cause": "Timeout or parse error", "fix_target": "chapter"}],
                    "summary": f"Audit call error: {str(e)}"
                }
                rev_file.write_text(json.dumps(fallback, ensure_ascii=False, indent=2), encoding='utf-8')
                return p, fallback

def generate_reports(target_pages):
    all_reviews = {}
    for p in target_pages:
        rf = REV_DIR / f'review-{p:03d}.json'
        if rf.exists():
            try:
                all_reviews[p] = json.loads(rf.read_text(encoding='utf-8'))
            except Exception:
                pass

    total = len(target_pages)
    done = len(all_reviews)
    ratings = {'PASS': 0, 'PARTIAL': 0, 'FAIL': 0, 'ERROR': 0}
    alignments = {'line_spacing': 0, 'equation_layout': 0, 'image_position': 0, 'text_symbols': 0}

    for p, d in all_reviews.items():
        r = d.get('rating', 'ERROR')
        ratings[r] = ratings.get(r, 0) + 1
        if d.get('line_spacing_aligned', False): alignments['line_spacing'] += 1
        if d.get('equation_layout_aligned', False): alignments['equation_layout'] += 1
        if d.get('image_position_aligned', False): alignments['image_position'] += 1
        if d.get('text_symbols_aligned', False): alignments['text_symbols'] += 1

    pass_rate = (ratings['PASS'] / total * 100) if total else 0

    prog_text = f"""# 10% 抽样独立排版核验仪表板 (pi + r4/glm-5.3-flash)

- **抽样总页数**: {total} 页 (覆盖全书各大章节、前言、附录与索引，奇偶页均衡)
- **已完成核验**: {done} / {total} ({done/total*100:.1f}%)
- **完全合格 (PASS)**: {ratings['PASS']} ({ratings['PASS']/total*100:.1f}%)
- **次要微调 (PARTIAL)**: {ratings['PARTIAL']} ({ratings['PARTIAL']/total*100:.1f}%)
- **需修正缺陷 (FAIL/ERROR)**: {ratings['FAIL'] + ratings['ERROR']} ({(ratings['FAIL']+ratings['ERROR'])/total*100:.1f}%)

### 各维度一致性达标率
- **行间距一致率**: {alignments['line_spacing']}/{total} ({alignments['line_spacing']/total*100:.1f}%)
- **公式布局一致率**: {alignments['equation_layout']}/{total} ({alignments['equation_layout']/total*100:.1f}%)
- **图像位置一致率**: {alignments['image_position']}/{total} ({alignments['image_position']/total*100:.1f}%)
- **文字完整一致率**: {alignments['text_symbols']}/{total} ({alignments['text_symbols']/total*100:.1f}%)

---
更新时间: {time.strftime('%Y-%m-%d %H:%M:%S')}
"""
    (AUDIT_DIR / 'PROGRESS.md').write_text(prog_text, encoding='utf-8')

    # 汇总差异登记表
    reg_lines = [
        "# 10% 抽样页面不一致项登记表 (GLM-5.3-flash Neutral Validation)\n",
        f"| 页码 | 评级 | 类别 | 问题描述 | 原因 | 修复归属 |",
        f"| :--- | :---: | :--- | :--- | :--- | :--- |"
    ]
    for p in target_pages:
        if p in all_reviews:
            d = all_reviews[p]
            r = d.get('rating', 'UNKNOWN')
            if r != 'PASS':
                for disc in d.get('discrepancies', []):
                    cat = disc.get('category', '其他')
                    desc = disc.get('description', '').replace('\n', ' ')
                    cause = disc.get('cause', '').replace('\n', ' ')
                    tgt = disc.get('fix_target', 'chapter')
                    reg_lines.append(f"| {p:03d} | {r} | {cat} | {desc} | {cause} | {tgt} |")

    (AUDIT_DIR / 'DISCREPANCIES_REGISTRY.md').write_text('\n'.join(reg_lines), encoding='utf-8')

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--pages', type=str, default=None, help='逗号分隔的特定页码')
    parser.add_argument('--workers', type=int, default=2, help='并发核验数 (默认2, 避免429)')
    parser.add_argument('--force', action='store_true', help='强制重新核验')
    args = parser.parse_args()

    if args.pages:
        target_pages = [int(x.strip()) for x in args.pages.split(',') if x.strip()]
    else:
        target_pages = SAMPLED_64_PAGES

    print('=' * 60)
    print(f'Auditing {len(target_pages)} sampled pages with pi + r4/glm-5.3-flash (Neutral Prompt)')
    print(f'Workers: {args.workers} | Target Dir: {AUDIT_DIR}')
    print('=' * 60)

    print('--> Step 0: Compiling Typst book to 线性代数导论-typst.pdf...')
    t0 = time.time()
    subprocess.run([
        'typst', 'compile', str(BOOK_DIR / 'main.typ'), str(TYP_PDF),
        '--font-path', str(ROOT / 'fonts')
    ], check=True)
    print(f'Compilation completed in {time.time() - t0:.1f}s.')

    print('--> Step 1: Pre-rendering comparison images...')
    t1 = time.time()
    with concurrent.futures.ThreadPoolExecutor(max_workers=8) as executor:
        futures = [executor.submit(render_page, p, 150, args.force) for p in target_pages]
        concurrent.futures.wait(futures)
    print(f'Rendering completed in {time.time() - t1:.1f}s.')

    print(f'--> Step 2: Conducting deep reviews via pi (workers={args.workers})...')
    completed = 0
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as executor:
        future_to_page = {executor.submit(review_page, p, args.force): p for p in target_pages}
        for future in concurrent.futures.as_completed(future_to_page):
            completed += 1
            p = future_to_page[future]
            try:
                page_num, res = future.result()
                rating = res.get('rating', 'UNKNOWN')
                symbol = '✅' if rating == 'PASS' else ('⚠️' if rating == 'PARTIAL' else '❌')
                summary = res.get('summary', '')[:40]
                print(f'[{completed}/{len(target_pages)}] {symbol} Page {p:03d} -> {rating} ({summary})')
            except Exception as e:
                print(f'[{completed}/{len(target_pages)}] ❌ Page {p:03d} -> EXCEPTION: {e}')

            if completed % 5 == 0 or completed == len(target_pages):
                generate_reports(SAMPLED_64_PAGES)

    generate_reports(SAMPLED_64_PAGES)
    print('=' * 60)
    print(f'Sampled Audit completed.')
    print(f'Progress: {AUDIT_DIR / "PROGRESS.md"}')
    print(f'Discrepancies: {AUDIT_DIR / "DISCREPANCIES_REGISTRY.md"}')
    print('=' * 60)

if __name__ == '__main__':
    main()
