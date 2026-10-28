#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
check_pages.py:
快速核验书籍排版页数与编译状态：
1. 编译全书并检查总输出页数是否完全吻合预期。
2. 可选：逐页（或抽样）检测各单页是否出现溢出（即单页源码编译产生超过 1 页）。

用法:
    python3 tools/check_pages.py --book-dir linear-algebra-5th --expected 634
    python3 tools/check_pages.py --book-dir linear-algebra-5th --check-overflow --pages 1-50
"""

import os, sys, argparse, subprocess, re
from pathlib import Path
import concurrent.futures

def get_pdf_page_count(pdf_path):
    res = subprocess.run(['pdfinfo', str(pdf_path)], capture_output=True, text=True)
    if res.returncode != 0:
        return None
    m = re.search(r'Pages:\s+(\d+)', res.stdout)
    return int(m.group(1)) if m else None

def check_single_page(book_dir, page_num):
    book_path = Path(book_dir).resolve()
    c4 = book_path / f'chapters/p{page_num:04d}.typ'
    c3 = book_path / f'chapters/p{page_num:03d}.typ'
    chapter_file = c4 if c4.exists() else c3
    if not chapter_file.exists():
        return page_num, False, "File not found"
        
    temp_typ = book_path / f'_tmp_chk_p{page_num:04d}.typ'
    temp_pdf = book_path / f'_tmp_chk_p{page_num:04d}.pdf'
    
    wrapper = f'#import "theme.typ": *\n#show: theme\n#metadata({page_num})<source-page>\n#include "{chapter_file.relative_to(book_path)}"\n'
    temp_typ.write_text(wrapper, encoding='utf-8')
    try:
        res = subprocess.run(
            ['typst', 'compile', '--root', str(book_path), str(temp_typ), str(temp_pdf)],
            capture_output=True, text=True, timeout=20
        )
        if res.returncode != 0:
            return page_num, False, f"Compile error: {res.stderr.strip()}"
        pages = get_pdf_page_count(temp_pdf)
        # Note: if page has #pagebreak() at end, wrapper yields 2 pages (page 1 + empty page 2).
        if pages not in (1, 2):
            return page_num, False, f"Overflow detected: got {pages} pages"
        return page_num, True, f"OK ({pages} pages)"
    except Exception as e:
        return page_num, False, str(e)
    finally:
        if temp_typ.exists(): temp_typ.unlink()
        if temp_pdf.exists(): temp_pdf.unlink()

def main():
    parser = argparse.ArgumentParser(description="Check book compilation and page counts.")
    parser.add_argument('--book-dir', default='linear-algebra-5th', help="Book directory path")
    parser.add_argument('--expected', type=int, default=634, help="Expected total page count")
    parser.add_argument('--check-overflow', action='store_true', help="Check individual pages for overflow")
    parser.add_argument('--pages', help="Specific page range for overflow check (e.g. 1-50)")
    args = parser.parse_args()

    book_path = Path(args.book_dir).resolve()
    main_typ = book_path / 'main.typ'
    out_pdf = book_path / f'_tmp_total_check.pdf'

    print(f"--> Compiling full book from {main_typ}...")
    res = subprocess.run(
        ['typst', 'compile', '--root', str(book_path), str(main_typ), str(out_pdf)],
        capture_output=True, text=True
    )
    if res.returncode != 0:
        print(f"[FAIL] Typst compile failed:\n{res.stderr}", file=sys.stderr)
        sys.exit(1)
        
    pages = get_pdf_page_count(out_pdf)
    if out_pdf.exists(): out_pdf.unlink()
    
    print(f"Total compiled pages: {pages} (Expected: {args.expected})")
    if pages == args.expected:
        print(f"[PASS] Page count matches exactly {args.expected}!")
    else:
        print(f"[FAIL] Page count mismatch: got {pages}, expected {args.expected}")
        sys.exit(1)

    if args.check_overflow:
        if args.pages:
            if '-' in args.pages:
                s, e = map(int, args.pages.split('-'))
                target_pages = list(range(s, e + 1))
            else:
                target_pages = [int(x) for x in args.pages.split(',')]
        else:
            target_pages = list(range(1, args.expected + 1))

        print(f"--> Checking overflow for {len(target_pages)} pages...")
        errors = []
        with concurrent.futures.ThreadPoolExecutor(max_workers=8) as pool:
            futures = {pool.submit(check_single_page, args.book_dir, p): p for p in target_pages}
            for fut in concurrent.futures.as_completed(futures):
                p, ok, msg = fut.result()
                if not ok:
                    print(f"  [ERROR] Page {p:03d}: {msg}")
                    errors.append((p, msg))
        if not errors:
            print("[PASS] All checked pages passed single-page overflow checks!")
        else:
            print(f"[FAIL] {len(errors)} pages had issues.")

if __name__ == '__main__':
    main()
