#import "../theme.typ": *

当得到最简行阶梯形矩阵 $bold(R) = "rref"(A)$ 时, 容易看出零空间. $bold(R)$ 的主元列包含了单位矩阵 $bold(I)$.

#align(center)[
  #grid(columns: (auto, auto, auto), column-gutter: 12pt, align: horizon,
    [最简行阶梯形\
     矩阵 $bold(R)$],
    [$U = mat(delim: "[", 1, 2, 2, 4; 0, 2, 0, 4)$],
    [化为 $bold(R) = mat(delim: "[", 1, 0, 2, 0; 0, 1, 0, 2) .$],
  )
]
#align(center)[
  #grid(columns: (auto, auto), column-gutter: 24pt,
    [↑], [↑],
  )
]
#align(center)[主元列]

上述变形先从 $U$ 的第 1 行中减去第 2 行, 再用 $1/2$ 乘第 2 行得到该行主元为 1.

此时自由的第 3 列为第 1 个主元列的 2 倍, 所以 $-2$ 在 $bold(s)_1 = (-2, 0, 1, 0)$ 中出现. 由最简方程组 $bold(R) x = 0$ 更容易发现特殊解. 在 $bold(R)$ 的每一个自由列中, 适当改变元素的正负号可以确定 $bold(s)$. 第二个特殊解为 $bold(s)_2 = (0, -2, 0, 1)$.

在转到讨论 $m times n$ 矩阵 $A$ 及其零空间 $N(A)$ 与特殊解之前, 这里重复一条注记. 对于不少矩阵 $A$, $A x = 0$ 的唯一解是 $x = 0$. 由于没有特殊解, 零空间 $N(A)$ 即 $Z$, 它仅含零向量. 各列向量唯一一个生成 $bold(b) = 0$ 的线性组合就是 “零组合”. $A x = 0$ 的解是平凡的 (只是 $x = 0$), 但该想法并不平凡.

零空间为零向量空间 $Z$ 的情形极其重要. 它表明 $A$ 的各列向量是线性无关的. 除了零线性组合, 各列向量不可能给出零向量的其他线性组合. 所有列均有主元, 于是没有列是自由的. 读者在后续章节将会再次看到这个线性无关的概念.

#barHead[最简行阶梯形矩阵 $bold(R)$ 中的主元变量与自由变量]

#align(center)[$A = mat(delim: "[", p, p, f, p, f) , quad bold(R) = mat(delim: "[", 1, 0, a, 0, c; 0, 1, b, 0, d; 0, 0, 0, 1, e; 0, 0, 0, 0, 0) , quad bold(s)_1 = mat(delim: "[", -a; -b; 1; 0; 0) , quad bold(s)_2 = mat(delim: "[", -c; -d; 0; -e; 1) .$]

#grid(columns: (1fr, 1fr, 1.4fr), column-gutter: 10pt, row-gutter: 3pt,
  [由 $bold(R)$ 可知 $A$ 有\
   3 个主元列 $p$,\
   2 个自由列 $f$;],
  [$bold(I)$ 含于主元列,\
   $bold(F)$ 含于自由列,\
   3 个主元: 秩 $r = 3$;],
  [特殊解 $bold(s)_1, bold(s)_2$ 满足 $bold(R) bold(s)_1 = 0$, $bold(R) bold(s)_2 = 0$,\
   由 $bold(R)$ 得 $bold(s)_1, bold(s)_2$ 中的 $-a, -b, dots.c, -e$,\
   $bold(R) bold(s) = 0$ 意味着 $A bold(s) = 0$.],
)

$bold(R)$ 清楚地表明: 第 3 列 $= a$(第 1 列) $+ b$(第 2 列). 相同的列关系对 $A$ 必真. 特殊解 $bold(s)_1$ 重现了该线性组合关系, 那么 $bold(s)_1 = (-a, -b, 1, 0, 0)$ 满足 $bold(R) bold(s)_1 = 0$. $A$ 的零空间即 $bold(R)$ 的零空间, 亦即 $bold(s)_1$ 与 $bold(s)_2$ 的全部线性组合.

以下过程分析具有 3 个主元的 $4 times 7$ 最简行阶梯形矩阵 $bold(R)$:



#pagebreak()
