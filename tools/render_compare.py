#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
render_compare.py:
快速生成原书扫描 PDF 与 Typst 重排 PDF 的并排对比图 (150 DPI).

用法:
    python3 tools/render_compare.py --source <source.pdf> --typst <typst.pdf> --pages 21,36,40 --output-dir renders/
"""

import os, sys, argparse, subprocess
from pathlib import Path
from PIL import Image

def render_page(pdf_path, page_num, out_png, dpi=150):
    cmd = [
        'pdftoppm', '-r', str(dpi),
        '-f', str(page_num), '-l', str(page_num),
        '-singlefile', '-png',
        str(pdf_path), str(out_png.with_suffix(''))
    ]
    subprocess.run(cmd, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

def compare_page(src_pdf, typ_pdf, page_num, out_dir, dpi=150):
    out_dir = Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    
    tmp_src = out_dir / f'_tmp_src_{page_num:03d}.png'
    tmp_typ = out_dir / f'_tmp_typ_{page_num:03d}.png'
    comp_file = out_dir / f'comp-{page_num:03d}.png'
    
    try:
        render_page(src_pdf, page_num, tmp_src, dpi=dpi)
        render_page(typ_pdf, page_num, tmp_typ, dpi=dpi)
        
        im_src = Image.open(tmp_src)
        im_typ = Image.open(tmp_typ)
        
        w = min(im_src.width, im_typ.width)
        h = min(im_src.height, im_typ.height)
        im_src = im_src.resize((w, h))
        im_typ = im_typ.resize((w, h))
        
        comp = Image.new('RGB', (w * 2 + 20, h), (200, 200, 200))
        comp.paste(im_src, (0, 0))
        comp.paste(im_typ, (w + 20, 0))
        comp.save(comp_file)
        print(f"[OK] Page {page_num:03d} comparison saved to: {comp_file}")
        return comp_file
    finally:
        if tmp_src.exists(): tmp_src.unlink()
        if tmp_typ.exists(): tmp_typ.unlink()

def parse_pages(page_str):
    pages = []
    for part in page_str.split(','):
        part = part.strip()
        if '-' in part:
            s, e = map(int, part.split('-'))
            pages.extend(range(s, e + 1))
        elif part:
            pages.append(int(part))
    return sorted(list(set(pages)))

def main():
    parser = argparse.ArgumentParser(description="Render side-by-side comparison images between source and typst PDFs.")
    parser.add_argument('--source', required=True, help="Path to original scanned source PDF")
    parser.add_argument('--typst', required=True, help="Path to compiled typst PDF")
    parser.add_argument('--pages', required=True, help="Comma-separated pages or ranges (e.g. 21,36,40-42)")
    parser.add_argument('--output-dir', default='renders', help="Output directory (default: renders)")
    parser.add_argument('--dpi', type=int, default=150, help="Rendering DPI (default: 150)")
    args = parser.parse_args()

    pages = parse_pages(args.pages)
    for p in pages:
        compare_page(args.source, args.typst, p, args.output_dir, dpi=args.dpi)

if __name__ == '__main__':
    main()
