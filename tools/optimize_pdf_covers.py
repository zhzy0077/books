#!/usr/bin/env python3
"""Reuse the original compressed cover images after compiling both books.

Requires pikepdf: python -m pip install pikepdf
"""

from pathlib import Path
import os
import tempfile

import pikepdf


ROOT = Path(__file__).resolve().parents[1]
BOOKS = (
    ("linear-algebra-5th", "线性代数导论"),
    ("数学分析八讲", "数学分析八讲"),
)


def cover_image(page):
    images = [
        (name, obj)
        for name, obj in page.Resources.XObject.items()
        if obj.get("/Subtype") == pikepdf.Name.Image
    ]
    if len(images) != 1:
        raise ValueError("Expected exactly one cover image")
    return images[0]


def optimize(directory, title):
    source = ROOT / directory / f"{title}.pdf"
    target = ROOT / directory / f"{title}-typst.pdf"
    before = target.stat().st_size
    with pikepdf.open(source) as original, pikepdf.open(target) as output:
        if len(original.pages) != len(output.pages):
            raise ValueError(f"Page counts differ: {title}")
        for index in (0, len(output.pages) - 1):
            _, image = cover_image(original.pages[index])
            name, existing = cover_image(output.pages[index])
            if (image.Width, image.Height) != (existing.Width, existing.Height):
                raise ValueError(f"Cover dimensions differ: {title}, page {index + 1}")
            output.pages[index].Resources.XObject[name] = output.copy_foreign(image)
        fd, temporary = tempfile.mkstemp(suffix=".pdf", dir=target.parent)
        os.close(fd)
        try:
            output.save(temporary, object_stream_mode=pikepdf.ObjectStreamMode.generate)
            os.chmod(temporary, target.stat().st_mode & 0o777)
            os.replace(temporary, target)
        finally:
            Path(temporary).unlink(missing_ok=True)
    print(f"{title}: {before:,} → {target.stat().st_size:,} bytes")


if __name__ == "__main__":
    for directory, title in BOOKS:
        optimize(directory, title)
