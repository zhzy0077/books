#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gen_main.py:
根据指定书籍目录下的 chapters/ 自动生成 main.typ。
支持 source-page marker 注入以驱动语义化页脚反查系统。

用法:
    python3 tools/gen_main.py --book-dir linear-algebra-5th
"""

import os, sys, argparse, re
from pathlib import Path

def generate_main(book_dir):
    book_path = Path(book_dir).resolve()
    chapters_dir = book_path / 'chapters'
    main_file = book_path / 'main.typ'
    
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
    
    with open(main_file, 'w', encoding='utf-8') as m:
        m.write('// 自动生成的书籍主入口文件\n')
        m.write('#import "theme.typ": *\n')
        m.write('#show: theme\n\n')
        for n in pages:
            # 注入源页身份 marker，供 theme footer 用 query(<source-page>) 反查当前页
            m.write(f'#metadata({n})<source-page>\n')
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
