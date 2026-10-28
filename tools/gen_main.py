#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gen_main.py:
根据指定书籍目录下的 chapters/ 自动生成 main.typ。
支持 source-page marker 注入以驱动语义化页脚反查系统。

用法:
    python3 tools/gen_main.py --book-dir linear-algebra-5th
"""

import os, sys, argparse, re, json
from pathlib import Path

def generate_main(book_dir):
    book_path = Path(book_dir).resolve()
    chapters_dir = book_path / 'chapters'
    main_file = book_path / 'main.typ'
    bookmarks_file = book_path / 'bookmarks.json'
    
    if not chapters_dir.exists():
        print(f"Error: chapters directory not found at {chapters_dir}", file=sys.stderr)
        sys.exit(1)
        
    pages = []
    for f in os.listdir(chapters_dir):
        m = re.match(r'^p(\d+)\.typ$', f)
        if m:
            pages.append(int(m.group(1)))
            
    pages.sort()
    print(f"Found {len(pages)} chapter pages in {chapters_dir}")
    
    bookmarks_by_page = {}
    if bookmarks_file.exists():
        try:
            with open(bookmarks_file, encoding='utf-8') as bf:
                b_list = json.load(bf)
                for item in b_list:
                    # page 1 cover usually has custom set page, handled inside p001.typ
                    if item.get('page') != 1:
                        bookmarks_by_page.setdefault(item['page'], []).append((item.get('level', 1), item['title']))
            print(f"Loaded {sum(len(v) for v in bookmarks_by_page.values())} bookmarks from {bookmarks_file}")
        except Exception as e:
            print(f"Warning: Failed to load {bookmarks_file}: {e}", file=sys.stderr)
            
    with open(main_file, 'w', encoding='utf-8') as m:
        m.write('// 自动生成的书籍主入口文件\n')
        m.write('#import "theme.typ": *\n')
        m.write('#show: theme\n\n')
        if bookmarks_by_page:
            m.write('#let bookmark(level, title) = place(top + left, hide(heading(level: level, outlined: true)[#title]))\n\n')
            
        for n in pages:
            # 注入源页身份 marker，供 theme footer 用 query(<source-page>) 反查当前页
            m.write(f'#metadata({n})<source-page>\n')
            if n in bookmarks_by_page:
                for level, title in bookmarks_by_page[n]:
                    t_esc = title.replace('"', '\\"')
                    m.write(f'#bookmark({level}, "{t_esc}")\n')
            target_file = f'chapters/p{n:04d}.typ' if (chapters_dir / f'p{n:04d}.typ').exists() else f'chapters/p{n:03d}.typ'
            m.write(f'#include "{target_file}"\n')
            
    print(f"[OK] Generated {main_file} successfully.")

def main():
    parser = argparse.ArgumentParser(description="Generate main.typ from chapters/ directory.")
    parser.add_argument('--book-dir', default='linear-algebra-5th', help="Path to book directory")
    args = parser.parse_args()
    generate_main(args.book_dir)

if __name__ == '__main__':
    main()
