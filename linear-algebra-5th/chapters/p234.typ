#import "../theme.typ": *

矩阵 $bold(I) - bold(P)$ 应当也是一个投影矩阵, 利用它可生成直角三角形的另一边 $bold(e)$, 即向量 $bold(b)$ 的与向量 $bold(a)$ 垂直的部分. 注意, $(bold(I) - bold(P)) bold(b)$ 等于 $bold(b) - bold(p)$, 也就是 $bold(e)$, 它在 $bold(a)$ 的左零空间中.

当 $bold(P)$ 的作用是投影到一个子空间中时, $bold(I) - bold(P)$ 的作用是投影到其正交补子空间中. 例 2 中, $bold(I) - bold(P)$ 的作用是投影到垂直于 $bold(a)$ 的平面上.

现在跳出向直线投影的限定, 并在 $R^m$ 中向一个 $n$ 维子空间做投影. 这会更复杂一些, 关键的公式将汇总为 (5)—(7). 建议读者记住这三个等式.

#subsec[到子空间上的投影]

考察 $R^m$ 中的 $n$ 个向量 $bold(a)_1, bold(a)_2, dots.c, bold(a)_n$. 假设它们是线性无关的.

#hei[问]  求出与给定向量 $bold(b)$ 距离最近的线性组合

#align(center)[$ bold(p) = hat(x)_1 bold(a)_1 + hat(x)_2 bold(a)_2 + dots.c + hat(x)_n bold(a)_n quad ("指" bold(b), bold(p) "末端最近, 下同") . $]

这相当于将 $R^m$ 中的任意向量 $bold(b)$ 投影到 $bold(a)_1, bold(a)_2, dots.c, bold(a)_n$ 所生成的子空间中.

当 $n = 1$ 时 (即只有一个向量 $bold(a)_1$), 上述问题就是求到过 $bold(a)_1$ 的直线上的投影. 这条直线就是某个矩阵 $bold(A)$ 的列空间, 而该矩阵只有一列. 一般情况下, $m times n$ 矩阵 $bold(A)$ 有 $n$ 列 $bold(a)_1, bold(a)_2, dots.c, bold(a)_n$.

上述问题中考察的 $R^m$ 中的线性组合就是 $bold(A)$ 的列空间中的向量 $bold(A x)$. 所求的线性组合 $bold(p) = bold(A) hat(bold(x))$ (即投影) 距离 $bold(b)$ 最近. $hat(bold(x))$ 上方的尖帽表明这个最佳选择 $hat(bold(x))$ 会给出列空间中距离 $bold(b)$ 最近的向量. 当 $n = 1$ 时, $hat(x) = (bold(a)^T bold(b))/(bold(a)^T bold(a))$. 现在来求 $n > 1$ 时的最佳 $hat(bold(x)) = (hat(x)_1, hat(x)_2, dots.c, hat(x)_n)$.

像之前到直线上的投影那样, 分三步计算到 $n$ 维子空间上的投影: 先找出向量 $hat(bold(x))$, 再得出投影 $bold(p) = bold(A) hat(bold(x))$, 进而求出投影矩阵 $bold(P)$.

求解的关键在于利用几何直观! 图 4.6(b) 中由 $bold(b)$ 到子空间中最近点 $bold(A) hat(bold(x))$ 的虚线段对应误差向量 $bold(b) - bold(A) hat(bold(x))$, 它垂直于子空间. 误差 $bold(b) - bold(A) hat(bold(x))$ 与所有基向量 $bold(a)_1, bold(a)_2, dots.c, bold(a)_n$ 均构成直角, 从而得到 $n$ 个关于 $hat(bold(x))$ 的方程:

#dingliC[
  #grid(
    columns: (auto, auto, 1fr, auto),
    column-gutter: 1.5em,
    align: horizon,
    [
      $bold(a)_1^T (bold(b) - bold(A) hat(bold(x))) = 0,$ \
      $bold(a)_2^T (bold(b) - bold(A) hat(bold(x))) = 0,$ \
      $dots.v$ \
      $bold(a)_n^T (bold(b) - bold(A) hat(bold(x))) = 0,$
    ],
    [或者],
    [$mat(delim: "[", bold(a)_1^T; bold(a)_2^T; dots.v; bold(a)_n^T) (bold(b) - bold(A) hat(bold(x))) = 0 .$],
    [(4)],
  )
]

因为矩阵 $bold(A)^T$ 以 $bold(a)_i^T$ 为各行, 所以上述 $n$ 个方程就是 $bold(A)^T (bold(b) - bold(A) hat(bold(x))) = 0$.

可将 $bold(A)^T (bold(b) - bold(A) hat(bold(x))) = 0$ 整理为更著名的形式 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$, 即正规方程. 这是关于 $hat(bold(x))$ 的方程, 系数矩阵为 $bold(A)^T bold(A)$. 接下来依次求出 $hat(bold(x)), bold(p)$ 和 $bold(P)$.

#dingliC[
  距离 $bold(b)$ 最近的线性组合 $bold(p) = hat(x)_1 bold(a)_1 + hat(x)_2 bold(a)_2 + dots.c + hat(x)_n bold(a)_n = bold(A) hat(bold(x))$ 来自 $hat(bold(x))$: \ #v(4pt)
  #grid(
    columns: (auto, 1fr, auto),
    column-gutter: 1.5em,
    align: horizon,
    [求出 $n times 1$ 向量 $hat(bold(x))$],
    [$bold(A)^T (bold(b) - bold(A) hat(bold(x))) = 0$ 或者 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b) ,$],
    [(5)],
  )
]

#pagebreak()