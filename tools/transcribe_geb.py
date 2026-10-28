#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
tools/transcribe_geb.py
=======================
可恢复的《哥德尔，埃舍尔和巴赫—集异璧之大成》Typst 转写、单页验证、全书构建与视觉审核流水线。
固定模型与工具链：CodeBuddy with model glm-5.3-flash (-y -p)。
"""

import os, sys, argparse, subprocess, re, time, json, shutil
from pathlib import Path
import concurrent.futures

BOOK_DIR = Path(__file__).resolve().parents[1] / 'geb'
TOTAL_PAGES = 1089

def get_pdf_page_count(pdf_path):
    res = subprocess.run(['pdfinfo', str(pdf_path)], capture_output=True, text=True)
    if res.returncode != 0:
        return None
    m = re.search(r'Pages:\s+(\d+)', res.stdout)
    return int(m.group(1)) if m else None

def verify_single_page(page_num, book_dir=BOOK_DIR):
    chapter_file = book_dir / f'chapters/p{page_num:04d}.typ'
    if not chapter_file.exists():
        return page_num, False, "File missing"
    
    temp_typ = book_dir / f'_tmp_v_p{page_num:04d}.typ'
    temp_pdf = book_dir / f'_tmp_v_p{page_num:04d}.pdf'
    
    wrapper = f'#import "theme.typ": *\n#show: theme\n#metadata({page_num})<source-page>\n#include "chapters/p{page_num:04d}.typ"\n'
    temp_typ.write_text(wrapper, encoding='utf-8')
    try:
        res = subprocess.run(
            ['typst', 'compile', '--root', str(book_dir.parent), str(temp_typ), str(temp_pdf)],
            capture_output=True, text=True, timeout=30
        )
        if res.returncode != 0:
            return page_num, False, f"Compile error: {res.stderr.strip()[:200]}"
        pages = get_pdf_page_count(temp_pdf)
        if pages != 1:
            return page_num, False, f"Overflow detected: got {pages} pages (must be exactly 1)"
        return page_num, True, f"OK ({pages}p)"
    except Exception as e:
        return page_num, False, str(e)
    finally:
        if temp_typ.exists(): temp_typ.unlink()
        if temp_pdf.exists(): temp_pdf.unlink()

def cmd_verify(args):
    pages = parse_pages(args.pages)
    print(f"--> Verifying {len(pages)} pages in {BOOK_DIR}...")
    errors = []
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = {pool.submit(verify_single_page, p): p for p in pages}
        for fut in concurrent.futures.as_completed(futures):
            p, ok, msg = fut.result()
            if not ok:
                errors.append((p, msg))
                print(f"[FAIL] Page {p:04d}: {msg}")
            elif args.verbose:
                print(f"[PASS] Page {p:04d}: {msg}")
    if errors:
        print(f"\n[FAIL] {len(errors)}/{len(pages)} pages failed verification!")
        sys.exit(1)
    else:
        print(f"\n[PASS] All {len(pages)} checked pages passed verification!")

def transcribe_page_with_codebuddy(page_num, book_dir=BOOK_DIR, timeout=300, force=False):
    source_img = book_dir / f'work/source/p{page_num:04d}.png'
    target_typ = book_dir / f'chapters/p{page_num:04d}.typ'
    if not source_img.exists():
        return page_num, False, f"Source image {source_img} missing"
        
    if not force and target_typ.exists():
        try:
            txt = target_typ.read_text(encoding='utf-8')
            if '待转写占位' not in txt and len(txt.strip()) > 30:
                p, ok, msg = verify_single_page(page_num, book_dir)
                if ok:
                    return page_num, True, f"SKIPPED_ALREADY_DONE ({msg})"
        except Exception:
            pass
    
    prompt = (
        f"Transcribe the book page image at {source_img} into Typst syntax for {target_typ}.\n"
        f"Strict rules:\n"
        f"1. First line must be '#import \"../theme.typ\": *'.\n"
        f"2. Transcribe all text verbatim. Preserve bold/hei (#hei[...]), quotes, italics (#em[...]).\n"
        f"3. In Typst, literal square brackets '[' and ']' in text MUST be escaped as '\\[' and '\\]'.\n"
        f"4. In Typst, literal angle brackets '<' and '>' in text or logic strings MUST be escaped as '\\<' and '\\>'.\n"
        f"5. For dialogue, use #dialogueItem[Speaker][Content].\n"
        f"6. For rules, use #ruleBox[Rule Name:][Description].\n"
        f"7. Last line must be '#pagebreak(weak: true)'.\n"
        f"8. Do NOT include page-level set overrides (no #set page, no #set par, no #set text).\n"
        f"9. For indented quotes or letters, use #block(inset: (left: 2em))[...] (do NOT use #par(left-indent:...)).\n"
        f"10. If there are figures/drawings, use python via Bash to crop them into {book_dir}/assets/p{page_num:04d}/fig.png and include with #bookFigure. Do not run unrelated scripts.\n"
        f"11. Write the file to {target_typ} using the Write tool.\n"
        f"12. SPEED OPTIMIZATION: Do NOT read theme.typ, do NOT read other chapter files, and do NOT run grep/find/search commands. Directly view the image and write {target_typ}."
        + ("\n13. INDEX PAGE (2-column): Use #set text(size: 8.5pt), #set par(leading: 7pt, spacing: 2pt, first-line-indent: 0em, hanging-indent: 1.5em), and wrap all entries in #columns(2, gutter: 14pt)[ ... ]. Keep #pagebreak(weak: true) outside #columns." if page_num >= 1042 else "")
    )
    
    cmd = [
        "codebuddy",
        "--model", "glm-5.3-flash",
        "--effort", "low",
        "--tools", "Read,Write,ViewImage,Bash",
        "-y", "-p",
        prompt
    ]
    t0 = time.time()
    try:
        res = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout)
        dur = time.time() - t0
        if not target_typ.exists():
            return page_num, False, f"CodeBuddy exited code {res.returncode} but did not create {target_typ}: {res.stderr[:200]}"
        # Sanitize common import typo if any
        try:
            txt = target_typ.read_text(encoding='utf-8')
            fixed = txt.replace('“../theme.typ”', '"../theme.typ"').replace('”../theme.typ”', '"../theme.typ"')
            # Auto-escape unescaped angle brackets with spaces/logic symbols inside
            fixed = re.sub(r'(?<!\\)<([^<>]*?[\s∧∨→～\~][^<>]*?)>', r'\\<\1\\>', fixed)
            # Fix #center[...] if produced
            fixed = re.sub(r'#center\[', r'#align(center)[', fixed)
            # Separate adjacent content block and parenthesis to prevent unintended call argument parse
            fixed = re.sub(r'\]\(', r'] (', fixed)
            # Fix #heading(size: ...)[...] syntax if produced
            fixed = re.sub(r'#heading\(size:\s*[\d\.]+pt\)\[(.*?)\]', r'#align(center)[#heading(level: 2)[#text(size: 16.5pt)[\1]]]', fixed)
            # Fix #dialogueTitle[...] if produced
            fixed = re.sub(r'#dialogueTitle\[(.*?)\]', r'#align(center)[#heading(level: 2)[#text(size: 16.5pt)[\1]]]', fixed)
            # Fix #heading(...) without brackets if produced
            fixed = re.sub(r'#heading\(([^\(\)\[\]]*?)\)', r'#heading[\1]', fixed)
            # Fix #heading[level: N][...] if produced
            fixed = re.sub(r'#heading\[level:\s*(\d+)\]\[(.*?)\]', r'#heading(level: \1)[\2]', fixed)
            # Auto-balance unclosed dialogueItem brackets at end of file if any
            lines = fixed.splitlines()
            for i, l in enumerate(lines):
                if '#dialogueItem' in l and l.count('[') > l.count(']'):
                    lines[i] = l + (']' * (l.count('[') - l.count(']')))
            fixed = '\n'.join(lines)
            # Escape standalone multiplication asterisk (never in import)
            fixed = re.sub(r'(?<=[0-9a-zA-Z\)])\s+\*\s+(?=[0-9a-zA-Z\(])', r' \\* ', fixed)
            # Escape leading asterisks in bibliography or inside brackets
            fixed = re.sub(r'(?m)^\*\*\s*', r'\\*\\* ', fixed)
            fixed = re.sub(r'(?m)^\*\s*', r'\\* ', fixed)
            fixed = re.sub(r'(?<=\[)\*(?=\s)', r'\\*', fixed)
            fixed = re.sub(r'(?<=\])\*(?=[,\s0-9])', r'\\*', fixed)
            # Fix #hei[...］ or #em[...］ with fullwidth closing brackets
            fixed = re.sub(r'#hei\[([^\]]*?)］', r'#hei[\1]', fixed)
            fixed = re.sub(r'#em\[([^\]]*?)］', r'#em[\1]', fixed)
            # If back matter (page >= 1026) and not yet having set text, add compact styling
            if page_num >= 1026 and '#set text' not in fixed:
                fixed = fixed.replace('#import "../theme.typ": *', '#import "../theme.typ": *\n#set text(size: 11pt)\n#set par(leading: 10pt, spacing: 5pt)')
            if page_num >= 1042:
                # Escape all asterisks except in import
                slines = fixed.splitlines()
                for i, sl in enumerate(slines):
                    if not sl.startswith('#import'):
                        slines[i] = re.sub(r'(?<!\\)\*', r'\\*', sl)
                fixed = '\n'.join(slines)
                # Wrap in columns if not wrapped
                if '#columns' not in fixed and '#grid' not in fixed:
                    body_lines = [l for l in fixed.splitlines() if not l.startswith('#import') and not l.startswith('#set') and not l.startswith('#pagebreak')]
                    fixed = f'#import "../theme.typ": *\n#set text(size: 8.5pt)\n#set par(leading: 7pt, spacing: 2.5pt, first-line-indent: 0em, hanging-indent: 1.5em)\n#columns(2, gutter: 14pt)[\n' + '\n'.join(body_lines) + '\n]\n#pagebreak(weak: true)\n'
            if fixed != txt:
                target_typ.write_text(fixed, encoding='utf-8')
        except Exception:
            pass
        # Verify single page
        p, ok, msg = verify_single_page(page_num, book_dir)
        if not ok:
            return page_num, False, f"Verification failed after transcribe ({dur:.1f}s): {msg}"
        return page_num, True, f"Success ({dur:.1f}s, {msg})"
    except subprocess.TimeoutExpired:
        return page_num, False, f"Timeout after {timeout}s"
    except Exception as e:
        return page_num, False, str(e)

def cmd_transcribe(args):
    pages = parse_pages(args.pages)
    print(f"--> Transcribing {len(pages)} pages using CodeBuddy (glm-5.3-flash) with {args.workers} workers...")
    
    state_file = BOOK_DIR / 'work/transcribe-state.json'
    state = {}
    if state_file.exists():
        try: state = json.loads(state_file.read_text(encoding='utf-8'))
        except Exception: pass
        
    completed = 0
    errors = []
    t_start = time.time()
    
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = {pool.submit(transcribe_page_with_codebuddy, p, BOOK_DIR, args.timeout, args.force): p for p in pages}
        for fut in concurrent.futures.as_completed(futures):
            p = futures[fut]
            try:
                pn, ok, msg = fut.result()
                if ok:
                    completed += 1
                    state[str(pn)] = {"status": "PASS", "msg": msg, "time": time.time()}
                    print(f"[{completed}/{len(pages)}] [PASS] Page {pn:04d}: {msg}", flush=True)
                else:
                    errors.append((pn, msg))
                    state[str(pn)] = {"status": "FAIL", "msg": msg, "time": time.time()}
                    print(f"[{completed}/{len(pages)}] [FAIL] Page {pn:04d}: {msg}", flush=True)
            except Exception as e:
                errors.append((p, str(e)))
                print(f"[{completed}/{len(pages)}] [EXC] Page {p:04d}: {e}", flush=True)
                
            state_file.write_text(json.dumps(state, ensure_ascii=False, indent=2), encoding='utf-8')
            
    dur = time.time() - t_start
    print(f"\n--> Batch finished in {dur:.1f}s: {completed}/{len(pages)} successful, {len(errors)} failed.")

def cmd_build(args):
    main_file = BOOK_DIR / 'main.typ'
    out_pdf = BOOK_DIR / '哥德尔埃舍尔巴赫-typst.pdf'
    
    # Ensure main.typ includes all existing pages
    print("--> Generating main.typ...")
    chapters = sorted(BOOK_DIR.glob('chapters/p*.typ'))
    with open(main_file, 'w', encoding='utf-8') as m:
        m.write('// 哥德尔，埃舍尔和巴赫—集异璧之大成\n')
        m.write('#import "theme.typ": *\n')
        m.write('#show: theme\n\n')
        for c in chapters:
            m_p = re.match(r'p(\d+)\.typ', c.name)
            if m_p:
                pn = int(m_p.group(1))
                m.write(f'#metadata({pn})<source-page>\n')
                m.write(f'#include "chapters/{c.name}"\n')
    
    print(f"--> Compiling {main_file} to {out_pdf}...")
    t0 = time.time()
    res = subprocess.run(
        ['typst', 'compile', '--root', str(BOOK_DIR.parent), str(main_file), str(out_pdf)],
        capture_output=True, text=True
    )
    if res.returncode != 0:
        print(f"[FAIL] Typst build error:\n{res.stderr}", file=sys.stderr)
        sys.exit(1)
    pages = get_pdf_page_count(out_pdf)
    dur = time.time() - t0
    print(f"Build complete in {dur:.1f}s. Pages: {pages} (Expected: {TOTAL_PAGES})")
    if pages == TOTAL_PAGES:
        print(f"[PASS] Exact {TOTAL_PAGES} pages verified!")
    else:
        print(f"[WARN] Total pages ({pages}) != expected ({TOTAL_PAGES}).")

def audit_single_page(page_num, book_dir=BOOK_DIR, timeout=240, force=False):
    audit_dir = book_dir / 'work/audit'
    audit_dir.mkdir(parents=True, exist_ok=True)
    
    review_json = audit_dir / f'review-p{page_num:04d}.json'
    if not force and review_json.exists():
        try:
            data = json.loads(review_json.read_text(encoding='utf-8'))
            return page_num, True, f"ALREADY_AUDITED ({data.get('rating', 'PASS')}: {data.get('summary', '')[:60]})"
        except Exception:
            pass
            
    chapter_file = book_dir / f'chapters/p{page_num:04d}.typ'
    if not chapter_file.exists():
        return page_num, False, "Chapter file missing"
        
    source_img = book_dir / f'work/source/p{page_num:04d}.png'
    if not source_img.exists():
        return page_num, False, "Source image missing"
        
    temp_typ = book_dir / f'_aud_p{page_num:04d}.typ'
    temp_pdf = book_dir / f'_aud_p{page_num:04d}.pdf'
    typ_png = audit_dir / f'typ-p{page_num:04d}.png'
    comp_png = audit_dir / f'comp-p{page_num:04d}.png'
    
    # 1. Compile 1-page wrapper
    wrapper = f'#import "theme.typ": *\n#show: theme\n#metadata({page_num})<source-page>\n#include "chapters/p{page_num:04d}.typ"\n'
    temp_typ.write_text(wrapper, encoding='utf-8')
    try:
        res = subprocess.run(
            ['typst', 'compile', '--root', str(book_dir.parent), str(temp_typ), str(temp_pdf)],
            capture_output=True, text=True, timeout=25
        )
        if res.returncode == 0:
            subprocess.run(
                ['pdftoppm', '-r', '150', '-f', '1', '-l', '1', '-singlefile', '-png', str(temp_pdf), str(audit_dir / f'typ-p{page_num:04d}')],
                check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL
            )
            from PIL import Image
            im_s = Image.open(source_img)
            im_t = Image.open(typ_png)
            w = min(im_s.width, im_t.width)
            h = min(im_s.height, im_t.height)
            im_s = im_s.resize((w, h))
            im_t = im_t.resize((w, h))
            comp = Image.new('RGB', (w * 2 + 20, h), (200, 200, 200))
            comp.paste(im_s, (0, 0))
            comp.paste(im_t, (w + 20, 0))
            comp.save(comp_png)
    except Exception:
        pass
    finally:
        if temp_typ.exists(): temp_typ.unlink()
        if temp_pdf.exists(): temp_pdf.unlink()
        
    has_comp = comp_png.exists()
    comp_ref = f"左右对比图（左原右现）：{comp_png}\n" if has_comp else ""
    
    prompt = (
        f"你是顶级书籍排版与印刷还原专家。\n"
        f"这是第 {page_num} 页的逐页排版核验与精度修复任务。\n"
        f"原书扫描图：{source_img}\n"
        f"{comp_ref}"
        f"当前 Typst 代码文件：{chapter_file}\n\n"
        f"请对比原书扫描图与当前代码：\n"
        f"1. 核对内容保真度：文字是否有错漏、逻辑符号（如 ∧, ∨, ~, →, ∃, ∀, <, > 等）是否准确、公式与数学格式是否正确。\n"
        f"2. 核对排版结构：黑体（#hei[...]）、对话（#dialogueItem）、列表、引用缩进、图表及图注。\n"
        f"3. 如果发现任何错漏或格式问题，请直接使用 Edit 或 Write 工具修改修复 {chapter_file}！\n"
        f"4. 约束：修复后的文件必须保持首行 '#import \"../theme.typ\": *'，尾行 '#pagebreak(weak: true)'，严格单页（零溢出）。不要阅读 theme.typ 或其它文件。\n"
        f"5. 完成后，输出 JSON：{{\"page\": {page_num}, \"rating\": \"PASS\"（无改动）或 \"FIXED\"（已修复）, \"summary\": \"一句话评估总结\"}}"
    )
    cmd = [
        "codebuddy",
        "--model", "glm-5.3-flash",
        "--effort", "low",
        "--tools", "Read,Write,ViewImage,Bash",
        "-y", "-p",
        prompt
    ]
    t0 = time.time()
    try:
        cb_res = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout)
        dur = time.time() - t0
        
        # Post-sanitize if chapter_file was edited
        try:
            txt = chapter_file.read_text(encoding='utf-8')
            fixed = txt.replace('“../theme.typ”', '"../theme.typ"').replace('”../theme.typ”', '"../theme.typ"')
            fixed = re.sub(r'#center\[', r'#align(center)[', fixed)
            fixed = re.sub(r'(?<!\\)<([^<>]*?[\s∧∨→～\~][^<>]*?)>', r'\\<\1\\>', fixed)
            fixed = re.sub(r'\]\(', r'] (', fixed)
            if fixed != txt:
                chapter_file.write_text(fixed, encoding='utf-8')
        except Exception:
            pass
            
        p, ok, msg = verify_single_page(page_num, book_dir)
        if not ok:
            return page_num, False, f"Verification failed after audit ({dur:.1f}s): {msg}"
            
        rating = "PASS"
        summary = ""
        m_r = re.search(r'"rating"\s*:\s*"([A-Za-z]+)"', cb_res.stdout)
        if m_r: rating = m_r.group(1).upper()
        m_s = re.search(r'"summary"\s*:\s*"([^"\n]+)"', cb_res.stdout)
        if m_s: summary = m_s.group(1)
        
        m_json = re.search(r'\{[\s\S]*"rating"[\s\S]*\}', cb_res.stdout)
        if m_json:
            review_json.write_text(m_json.group(0), encoding='utf-8')
            
        return page_num, True, f"{rating} ({dur:.1f}s) - {summary if summary else 'OK'}"
    except subprocess.TimeoutExpired:
        return page_num, False, f"Timeout after {timeout}s"
    except Exception as e:
        return page_num, False, str(e)

def cmd_audit(args):
    pages = parse_pages(args.pages)
    print(f"--> Auditing and repairing {len(pages)} pages using CodeBuddy (glm-5.3-flash) with {args.workers} workers...")
    success = 0
    failed = 0
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as executor:
        future_map = {executor.submit(audit_single_page, p, BOOK_DIR, args.timeout, args.force): p for p in pages}
        for future in concurrent.futures.as_completed(future_map):
            p = future_map[future]
            try:
                pn, ok, msg = future.result()
                if ok:
                    success += 1
                    print(f"[AUDIT PASS] Page {pn:04d}: {msg}")
                else:
                    failed += 1
                    print(f"[AUDIT FAIL] Page {pn:04d}: {msg}")
            except Exception as e:
                failed += 1
                print(f"[AUDIT ERROR] Page {p:04d}: {e}")
    print(f"\n--> Audit finished: {success} succeeded, {failed} failed.")

def cmd_status(args):
    manifest = json.loads((BOOK_DIR / 'work/source-manifest.json').read_text())
    chapters = list(BOOK_DIR.glob('chapters/p*.typ'))
    scaffolds = 0
    transcribed = 0
    for c in chapters:
        text = c.read_text(encoding='utf-8')
        if '待转写占位' in text:
            scaffolds += 1
        else:
            transcribed += 1
            
    out_pdf = BOOK_DIR / '哥德尔埃舍尔巴赫-typst.pdf'
    pdf_pages = get_pdf_page_count(out_pdf) if out_pdf.exists() else 0
    
    print(f"Book: 哥德尔，埃舍尔和巴赫—集异璧之大成")
    print(f"Source Pages: {manifest.get('page_count', 0)}")
    print(f"Chapter Files: {len(chapters)}/{TOTAL_PAGES}")
    print(f"  - Completed High-Fidelity Transcriptions: {transcribed}")
    print(f"  - Scaffold Placeholders (Awaiting Transcribe): {scaffolds}")
    print(f"Full Typst PDF Output: {out_pdf.name} -> {pdf_pages} pages (Expected: {TOTAL_PAGES})")

def parse_pages(spec):
    if not spec or spec == 'all':
        return list(range(1, TOTAL_PAGES + 1))
    pages = []
    for part in spec.split(','):
        if '-' in part:
            s, e = map(int, part.split('-'))
            pages.extend(range(s, e + 1))
        else:
            pages.append(int(part))
    return sorted(set(pages))

def main():
    parser = argparse.ArgumentParser(description="GEB Typst Pipeline CLI")
    sub = parser.add_subparsers(dest="command")
    
    p_status = sub.add_parser("status")
    p_status.set_defaults(func=cmd_status)
    
    p_verify = sub.add_parser("verify")
    p_verify.add_argument("--pages", default="all")
    p_verify.add_argument("--workers", type=int, default=4)
    p_verify.add_argument("--verbose", "-v", action="store_true")
    p_verify.set_defaults(func=cmd_verify)
    
    p_transcribe = sub.add_parser("transcribe")
    p_transcribe.add_argument("--pages", required=True, help="Pages to transcribe, e.g. 83 or 83-85")
    p_transcribe.add_argument("--workers", type=int, default=4, help="Parallel worker threads")
    p_transcribe.add_argument("--timeout", type=int, default=300, help="Per-page timeout in seconds")
    p_transcribe.add_argument("--force", action="store_true", help="Force re-transcribing pages")
    p_transcribe.set_defaults(func=cmd_transcribe)
    
    p_audit = sub.add_parser("audit")
    p_audit.add_argument("--pages", required=True, help="Pages to audit, e.g. 1-4,81-83")
    p_audit.add_argument("--workers", type=int, default=4, help="Parallel worker threads")
    p_audit.add_argument("--timeout", type=int, default=240, help="Per-page timeout in seconds")
    p_audit.add_argument("--force", action="store_true", help="Force re-auditing already audited pages")
    p_audit.set_defaults(func=cmd_audit)
    
    p_build = sub.add_parser("build")
    p_build.set_defaults(func=cmd_build)
    
    args = parser.parse_args()
    if not args.command:
        parser.print_help()
        sys.exit(1)
    args.func(args)

if __name__ == '__main__':
    main()
