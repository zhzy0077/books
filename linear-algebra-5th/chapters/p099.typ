#import "../theme.typ": *

而 “分块思想” 能够通过一个矩阵 $bold(E)$ 来完成两次消元. 这个矩阵能够消除矩阵 $bold(A)$ 第 1 列中位于主元 1 下方的全部元素:

#dmath[$ bold(E) = mat(1, 0, 0; -3, 1, 0; -4, 0, 1) quad text("左乘") quad mat(1, *, *; 3, *, *; 4, *, *) , quad text("得") quad bold(E) bold(A) = mat(1, *, *; 0, *, *; 0, *, *) , $]

上式中 $*$ 表示的元素不完全相同.

利用逆矩阵, 一个分块矩阵 $bold(E)$ 能够对整个 (分块) 列进行消元. 设一个矩阵包含四个子块 $bold(A), bold(B), bold(C), bold(D)$, 且 $bold(A)$ 可逆, 请仔细观察如何利用 $bold(E)$ 消去子块 $bold(C)$:

#eqnum($ mat(delim: "[", bold(I), bold(O); -bold(C) bold(A)^(-1), bold(I)) mat(delim: "[", bold(A), bold(B); bold(C), bold(D)) = mat(delim: "[", bold(A), bold(B); bold(O), bold(D) - bold(C) bold(A)^(-1) bold(B)) . $, 6)

分块消元法从第 2 行中减去 $bold(C) bold(A)^(-1)$ (之前是 $c/a$) 左乘第 1 行 $[bold(A) quad bold(B)]$ 的乘积, 将第 1 列的子块 $bold(C)$ 变成零子块, 第 2 列的子块 $bold(D)$ 变成 $bold(S) = bold(D) - bold(C) bold(A)^(-1) bold(B)$.

这就是一般的消元法, 利用子块一次能够消除一列. 上式中主元子块是 $bold(A)$. 最后一个子块是 $bold(D) - bold(C) bold(A)^(-1) bold(B)$, 如同 $d - c b/a$, 称为舒尔 (Schur) 补.

#barHead[■ 要点回顾]

#enum(numbering: "1.", tight: false,
  [$bold(A) bold(B)$ 的位置 $(i, j)$ 的元素是 $(bold(A)$ 的第 $i$ 行$) dot (bold(B)$ 的第 $j$ 列$)$.],
  [一个 $m times n$ 矩阵左乘一个 $n times p$ 矩阵会使用 $m n p$ 次单独的乘法.],
  [$bold(A) (bold(B) bold(C)) = (bold(A) bold(B)) bold(C)$ (非常重要).],
  [$bold(A) bold(B)$ 也是如下 $n$ 个矩阵之和: $(bold(A)$ 的第 $j$ 列$)$ 左乘 $(bold(B)$ 的第 $j$ 行$)$.],
  [当子块形状满足分块矩阵的乘法要求时, 可使用分块矩阵乘法运算.],
  [分块消元得到舒尔补 $bold(D) - bold(C) bold(A)^(-1) bold(B)$.],
)

#barHead[■ 范例解析]

#hei[2.4 A]  设一个图或网络有 $n$ 个顶点, 它的邻接矩阵 $bold(S)$ 是一个 $n$ 阶方阵. 矩阵 $bold(S)$ 中的元素为 0 或 1, 其中仅当顶点 $i$ 与 $j$ 之间有边连接时, 矩阵对应的元素 $s_(i j) = 1$.

如图 2.8 所示的无向图的边是双向联通的, 邻接矩阵是对称方阵

#grid(columns: (1fr, 1fr), align: (center+horizon, center+horizon),
  [$ bold(S) = mat(delim: "[", 0, 1, 1, 0; 1, 0, 1, 1; 1, 1, 0, 1; 0, 1, 1, 0) . $],
  [#figure(image("../assets/fig-p099-a.png", width: 78%), numbering: none, caption: [图 2.8　含 4 个顶点的图])],
)



#pagebreak()
