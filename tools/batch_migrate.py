#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
batch_migrate.py:
批量将原始/未格式化的 Typst 单页源码迁移至标准化语义 Theme 版式。

特性:
1. 自动备份原始文件至 chapters_backup/。
2. 调用大模型 (默认 r4/deepseek-v4.1-flash 或 glm-5.3-flash) 执行语义标签替换。
3. 自动语法后处理 (修复 CJK 公式转义、修复函数参数内非法 # 符号、保证结尾 pagebreak)。
4. 本地即时 Typst 单页编译校验，若失败自动回滚并记录日志。

用法:
    python3 tools/batch_migrate.py --book-dir linear-algebra-5th --pages 20-30 --workers 5
"""

import os, sys, re, json, time, subprocess, concurrent.futures, argparse
from pathlib import Path

def needs_migration(content):
    if '#import "../theme.typ": *' not in content and "#import '../theme.typ': *" not in content:
        return True
    if 'font:' in content:
        return True
    if re.search(r'#(?:v|h)\(', content):
        return True
    if '#block(' in content:
        return True
    if '#set math.equation' in content:
        return True
    return False

def post_process_code(code):
    # 1. 修复函数内部参数里的非法 # 前缀 (如 grid(#box[...]) -> grid(box[...]))
    def clean_fn_args(m):
        fn_name = m.group(1)
        body = m.group(2)
        cleaned_body = re.sub(r'#([a-zA-Z]+)(?=\[|\()', r'\1', body)
        return f"{fn_name}({cleaned_body})"
    code = re.sub(r'(grid|table|figure|align|block)\(([\s\S]*?)\)', clean_fn_args, code)

    # 2. 修复 $...$ 数学公式中未加引号/text()包裹的中文字符
    def fix_math_cjk(text):
        def rep(m):
            inner = m.group(1)
            parts = re.split(r'("(?:\\.|[^"\\])*"|text\([^\)]*\))', inner)
            for i in range(len(parts)):
                if not parts[i].startswith('"') and not parts[i].startswith('text('):
                    parts[i] = re.sub(r'([\u4e00-\u9fff]+)', r'text("\1")', parts[i])
            return "$" + "".join(parts) + "$"
        return re.sub(r'\$([^\$]+)\$', rep, text)
    code = fix_math_cjk(code)

    # 3. 确保末尾有 #pagebreak()
    code = code.strip()
    if not code.endswith('#pagebreak()'):
        code += '\n\n#pagebreak()\n'
    return code

def test_compile(book_path, page_num):
    temp_typ = book_path / f'_test_mig_p{page_num:03d}.typ'
    temp_pdf = book_path / f'_test_mig_p{page_num:03d}.pdf'
    
    wrapper = f'#import "theme.typ": *\n#show: theme\n#metadata({page_num})<source-page>\n#include "chapters/p{page_num:03d}.typ"\n'
    temp_typ.write_text(wrapper, encoding='utf-8')
    try:
        res = subprocess.run(
            ['typst', 'compile', '--root', str(book_path), str(temp_typ), str(temp_pdf)],
            capture_output=True, text=True, timeout=30
        )
        if res.returncode != 0:
            return False, f"Compile error: {res.stderr}"
        
        info = subprocess.run(['pdfinfo', str(temp_pdf)], capture_output=True, text=True, timeout=10)
        m = re.search(r'Pages:\s+(\d+)', info.stdout)
        pages = int(m.group(1)) if m else 0
        if pages not in (1, 2):
            return False, f"Unexpected page count: {pages} (expected 2 with pagebreak)"
        return True, "OK"
    except Exception as e:
        return False, str(e)
    finally:
        if temp_typ.exists(): temp_typ.unlink()
        if temp_pdf.exists(): temp_pdf.unlink()

def migrate_page(book_path, page_num, model="deepseek-v4.1-flash", provider="r4"):
    chapters_dir = book_path / 'chapters'
    backup_dir = book_path / 'chapters_backup'
    log_dir = book_path / 'migration_logs'
    
    backup_dir.mkdir(parents=True, exist_ok=True)
    log_dir.mkdir(parents=True, exist_ok=True)

    file_path = chapters_dir / f'p{page_num:03d}.typ'
    if not file_path.exists():
        return page_num, "SKIPPED_NOT_FOUND"
    
    orig_code = file_path.read_text(encoding='utf-8')
    if not needs_migration(orig_code):
        return page_num, "SKIPPED_ALREADY_MIGRATED"
    
    # 备份原文件
    backup_file = backup_dir / f'p{page_num:03d}.typ'
    if not backup_file.exists():
        backup_file.write_text(orig_code, encoding='utf-8')
    
    prompt = f"""你是Typst版式迁移专家。请根据以下转写规范，将输入的Typst页面代码改写为符合规范的标准代码。

【规范要求】
1. 首行必须为 `#import "../theme.typ": *`。
2. 严禁出现 `#text(font:)`、`#v(`、`#h(`、`#block(stroke:`、`#set math.equation`。
3. 语义替换规则：
   - 题号/术语/行内黑体: 用 `#hei[...]`
   - 小节标题: 用 `#subsec[...]`，节标题用 `#sec[...]`
   - 带横线栏目标题（如 ■ 要点回顾 / ■ 范例解析）: 用 `#barHead[■ 要点回顾]`
   - 习题题号: 用 `#ti[题号][题面]`，子项用 `#sub[...]`
   - 概念框: 用 `#gainian[名称][解释]`（必须是两个中括号）
   - 单行文本定理/性质框: 用 `#dingli[文本]`
   - 独立公式框: 用 `#dingliC[公式]`
   - 要点框: 用 `#yaodian[内容]`
   - 向量/矩阵: 用方括号 `$vec(delim: "[", ...)$` 或 `$mat(delim: "[", ...)$`，严禁圆括号
   - 独立居中公式: 用 `#dmath[$ ... $]`（严禁在内层再嵌套 `$`）
   - 圆括号参数列表内属于代码模式，不要在函数前加 `#`（例如写 `align(center, subsec[...])`，不要写 `#subsec`）
   - 末尾保持 `#pagebreak()`
4. 严格保持所有正文文字和数学公式内容一字不差！绝对不得省略任何文字或公式！

【输入代码】
```typst
{orig_code}
```

只输出迁移后的Typst代码，放在 ```typst ... ``` 代码块中，不要任何解释。"""

    cmd = [
        "pi", "--provider", provider, "--model", model, "--thinking", "off",
        "--no-extensions", "--no-mcp", "--no-skills", "--no-prompt-templates", "--no-session", "--no-tools",
        "-p", prompt
    ]
    
    for attempt in range(2):
        try:
            res = subprocess.run(cmd, cwd=book_path, capture_output=True, text=True, timeout=90)
            if res.returncode != 0:
                continue
            
            m = re.search(r'```(?:typst)?\s*\n(.*?)\n```', res.stdout, re.DOTALL)
            raw_code = m.group(1).strip() if m else res.stdout.strip()
            new_code = post_process_code(raw_code)
            
            # 临时写入并校验
            file_path.write_text(new_code, encoding='utf-8')
            ok, msg = test_compile(book_path, page_num)
            if ok:
                return page_num, "SUCCESS"
            else:
                # 回滚
                file_path.write_text(orig_code, encoding='utf-8')
                (log_dir / f'p{page_num:03d}_fail.log').write_text(f"Attempt {attempt}:\n{msg}\n\nGenerated code:\n{new_code}")
        except Exception as e:
            file_path.write_text(orig_code, encoding='utf-8')
            (log_dir / f'p{page_num:03d}_err.log').write_text(str(e))
    
    return page_num, "FAILED"

def main():
    parser = argparse.ArgumentParser(description="Batch migrate Typst pages to theme semantics.")
    parser.add_argument('--book-dir', default='linear-algebra-5th', help="Book directory path")
    parser.add_argument('--pages', required=True, help="Pages to migrate (e.g. 1-10 or 21,36,40)")
    parser.add_argument('--model', default='deepseek-v4.1-flash', help="Model to use (default: deepseek-v4.1-flash)")
    parser.add_argument('--provider', default='r4', help="Provider for pi (default: r4)")
    parser.add_argument('--workers', type=int, default=5, help="Concurrent workers (default: 5)")
    args = parser.parse_args()

    book_path = Path(args.book_dir).resolve()
    target_pages = []
    for part in args.pages.split(','):
        part = part.strip()
        if '-' in part:
            s, e = map(int, part.split('-'))
            target_pages.extend(range(s, e + 1))
        elif part:
            target_pages.append(int(part))
            
    target_pages = sorted(list(set(target_pages)))
    print(f"Starting batch migration for {len(target_pages)} pages using {args.provider}/{args.model} (workers={args.workers})...")
    
    t0 = time.time()
    results = {}
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = {pool.submit(migrate_page, book_path, p, args.model, args.provider): p for p in target_pages}
        for fut in concurrent.futures.as_completed(futures):
            p = futures[fut]
            try:
                pg, status = fut.result()
                results[pg] = status
                print(f"p{pg:03d}: {status}", flush=True)
            except Exception as e:
                results[p] = f"EXCEPTION: {e}"
                print(f"p{p:03d}: EXCEPTION: {e}", flush=True)

    elapsed = time.time() - t0
    success_cnt = sum(1 for s in results.values() if s == "SUCCESS")
    skipped_cnt = sum(1 for s in results.values() if "SKIPPED" in s)
    failed_cnt = sum(1 for s in results.values() if s == "FAILED" or "EXCEPTION" in s)
    print("\n" + "="*50)
    print(f"Migration completed in {elapsed:.1f}s | Success: {success_cnt}, Skipped: {skipped_cnt}, Failed: {failed_cnt}")

if __name__ == '__main__':
    main()
