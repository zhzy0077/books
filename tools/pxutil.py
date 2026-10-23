#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""像素级工具: 墨迹/横线/字形测量 (300dpi 渲染)."""
import numpy as np
from PIL import Image

DPI = 300
S = DPI / 72.0


def load(path):
    return np.asarray(Image.open(path).convert("L"))


def px(v_pt):
    return int(round(v_pt * S))


def ink_bbox(a, x0, y0, x1, y1, thr=160):
    """返回给定 pt 区域内的墨迹 bbox (pt) 与像素密度."""
    sub = a[px(y0):px(y1), px(x0):px(x1)] < thr
    if not sub.any():
        return None
    ys, xs = np.where(sub)
    return dict(x0=round((px(x0) + xs.min()) / S, 2), y0=round((px(y0) + ys.min()) / S, 2),
                x1=round((px(x0) + xs.max()) / S, 2), y1=round((px(y0) + ys.max()) / S, 2),
                w=round((xs.max() - xs.min()) / S, 2), h=round((ys.max() - ys.min()) / S, 2),
                density=round(float(sub.mean()), 4))


def glyph_height(a, yc, half, x0, x1, thr=160):
    """在 yc±half (pt) 的横带内测 CJK 墨水高度 (pt)."""
    b = ink_bbox(a, x0, yc - half, x1, yc + half, thr)
    return b


def h_rules(a, min_len_pt=40, thr=160, gap=2):
    """检测水平长横线: 返回 [(y_pt, x0_pt, x1_pt, len_pt)]."""
    H, W = a.shape
    mask = a < thr
    rules = []
    for y in range(H):
        row = mask[y]
        if row.sum() < px(min_len_pt):
            continue
        xs = np.where(row)[0]
        # 找连续段
        splits = np.where(np.diff(xs) > gap)[0]
        starts = np.concatenate(([0], splits + 1))
        ends = np.concatenate((splits, [len(xs) - 1]))
        for s, e in zip(starts, ends):
            L = xs[e] - xs[s]
            if L >= px(min_len_pt):
                rules.append((round(y / S, 2), round(xs[s] / S, 2), round(xs[e] / S, 2), round(L / S, 2)))
    # 合并相邻 y
    rules.sort()
    merged = []
    for r in rules:
        if merged and abs(r[0] - merged[-1][0]) <= 1.0:
            merged[-1] = (merged[-1][0], min(merged[-1][1], r[1]), max(merged[-1][2], r[2]), max(merged[-1][3], r[3]))
        else:
            merged.append(list(r) if isinstance(r, tuple) else r)
            merged[-1] = tuple(merged[-1])
    return merged


if __name__ == "__main__":
    import sys
    if len(sys.argv) > 1:
        a = load(sys.argv[1])
        print("rules:")
        for r in h_rules(a):
            print(" ", r)
    else:
        print("Usage: python3 pxutil.py <image.png>")
