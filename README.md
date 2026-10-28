# Books

This repository contains Typst source projects, reusable book-processing tools,
project fonts, source PDFs, and final PDF outputs for three books.

## Projects

- `geb/` - 哥德尔、埃舍尔、巴赫：集异璧之大成 (Gödel, Escher, Bach: an Eternal Golden Braid)
- `linear-algebra-5th/` - Linear Algebra and Its Applications, fifth edition
- `数学分析八讲/` - Mathematical Analysis in Eight Lectures
- `tools/` - PDF preparation, migration, compilation, comparison, and audit tools
- `fonts/` - Fonts used for Typst builds

The repository does not include virtual environments, temporary work logs,
model sessions, intermediate backups, or generated review caches.

## GEB Build

```sh
typst compile --root . geb/main.typ geb/哥德尔埃舍尔巴赫-typst.pdf
```

## Linear Algebra Build

```sh
typst compile --root . linear-algebra-5th/main.typ linear-algebra-5th/线性代数导论-typst.pdf
```

## Mathematical Analysis Build

```sh
typst compile --root . 数学分析八讲/main.typ 数学分析八讲/数学分析八讲-typst.pdf
```

The `typst` builds use the fonts under `fonts/` and should be run from the
repository root.

After compiling, reuse the original JPEG/JBIG2 cover compression in both PDFs:

```sh
python -m pip install pikepdf
python tools/optimize_pdf_covers.py
```

See `tools/README.md` for the complete processing pipeline.
