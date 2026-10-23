#import "../theme.typ": *

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #grid(
    columns: (auto, auto, auto),
    column-gutter: 3em,
    align: (center + horizon, left + horizon, right + horizon),
    $ bold(A) bold(x) = mat(delim: "[", "第 1 行"; "第 2 行"; dots.v; "第 m 行") bold(x) = mat(delim: "[", 0; 0; dots.v; 0) . $,
    [
      $arrow.l quad ("第 1 行") dot bold(x) = 0$ \
      $arrow.l quad ("第 2 行") dot bold(x) = 0$ \
      $quad quad quad dots.v$ \
      $arrow.l quad ("第 m 行") dot bold(x) = 0$
    ],
    $ (1) $,
  )
]

上述第 1 个方程说明第 1 行垂直于 $bold(x)$, 最后 1 个方程说明第 $m$ 行垂直于 $bold(x)$. 类似地, 每行与 $bold(x)$ 的点积均为零, 因此 $bold(x)$ 也垂直于各行向量的任意线性组合. 从而整个行空间 $C(bold(A)^T)$ 正交于零空间 $N(bold(A))$.

借助于简要的矩阵表达方式, 上述正交关系还有第 2 种证明方法. $bold(A)$ 的行空间中向量是 $bold(A)$ 的各行向量的线性组合, 记为 $bold(A)^T bold(y)$. 将 $bold(A)^T bold(y)$ 与零空间中任意向量 $bold(x)$ 做点积, 可知它们是垂直的:

#eqnumL([零空间正交于行空间], $ bold(x)^T (bold(A)^T bold(y)) = (bold(A) bold(x))^T bold(y) = 0^T bold(y) = 0 . $, 2)

第 1 种证明方法更好, 因为从等式 (1) 可以看清 $bold(A)$ 的各行向量左乘 $bold(x)$ 得到零的过程. 而第 2 种证明方法表明了 $bold(A)$ 与 $bold(A)^T$ 同时出现在基本定理中的原因.

例 3　如下 $bold(A)$ 的各行向量垂直于零空间中的向量 $bold(x) = (1, 1, -1)$:

#align(center)[
  #grid(
    columns: (auto, auto, auto),
    column-gutter: 2.5em,
    align: (center + horizon, center + horizon, left + horizon),
    $ bold(A) bold(x) = mat(delim: "[", 1, 3, 4; 5, 2, 7) mat(delim: "[", 1; 1; -1) = mat(delim: "[", 0; 0) $,
    [给出点积],
    [
      $1 + 3 - 4 = 0,$ \
      $5 + 2 - 7 = 0.$
    ],
  )
]

下面转向另外两个子空间. 例 3 中, 列空间为整个 $R^2$, $bold(A)^T$ 的零空间只含零向量 (与任意向量正交). 一般地, $bold(A)$ 的列空间与 $bold(A)^T$ 的零空间总是正交子空间.

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  $bold(A)^T$ 的零空间中每个向量 $bold(y)$ 垂直于 $bold(A)$ 的每一列.

  $R^m$ 中, 左零空间 $N(bold(A)^T)$ 与列空间 $C(bold(A))$ 正交.
]

如果将 $bold(A)$ 前一对空间的正交关系应用于 $bold(A)^T$, 即得 $bold(A)^T$ 的零空间正交于 $bold(A)^T$ 的行空间, 而 $bold(A)^T$ 的行空间就是 $bold(A)$ 的列空间. 证毕.

下面给出一个更直观形象的证明. 观察 $bold(A)^T bold(y) = 0$ 可知, $bold(A)$ 的每列左乘 $bold(y)$ 得到 0:

#align(center)[$ C(bold(A)) perp N(bold(A)^T) quad bold(A)^T bold(y) = mat(delim: "[", ("第 1 列")^T; ("第 2 列")^T; dots.v; ("第 n 列")^T) bold(y) = mat(delim: "[", 0; 0; dots.v; 0) . $ #h(2em) (3)]

$bold(y)$ 与 $bold(A)$ 每列的点积为零. 于是左零空间中的 $bold(y)$ 垂直于 $bold(A)$ 的每个列向量, 进而垂直于整个列空间.

#pagebreak()