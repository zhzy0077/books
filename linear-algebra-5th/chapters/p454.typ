#import "../theme.typ": *

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #hei[奇异向量]　SVD 给出 $bold(U)^(-1) bold(A) bold(V) = bold(Sigma)$. 取 $V$ 中的奇异向量 $bold(v)_1, bold(v)_2, dots.c, bold(v)_n$ 为输入基, $U$ 中的奇异向量 $bold(u)_1, bold(u)_2, dots.c, bold(u)_m$ 为输出基. 由矩阵乘法规则, 在这些新基下同一个变换的矩阵为 $bold(B)_"输出"^(-1) bold(A) bold(B)_"输入" = bold(U)^(-1) bold(A) bold(V) = bold(Sigma)$.
]

此时不能称 $bold(Sigma)$ “相似于” $bold(A)$. 现在有输入、输出两组基, 它们都为标准正交基, 因此它们保持向量长度. 按照 David Vogan 的建议, 作者提议使用如下说法: $bold(Sigma)$ 和 $bold(A)$ 是 “等距的”.

#hei[定义]　若 $bold(Q)_1$ 和 $bold(Q)_2$ 均为正交矩阵, 则称 $bold(C) = bold(Q)_1^(-1) bold(A) bold(Q)_2$ 与 $bold(A)$ 等距.

#hei[例 8]　为了构造求导变换 $T = d/d x$ 的矩阵 $bold(A)$, 首先选择输入基为 $1, x, x^2, x^3$, 输出基为 $1, x, x^2$. 此时矩阵 $bold(A)$ (例 3) 很简单, 但它不是对角矩阵. 接下来将每组基向量反序.

现在输入基为 $x^3, x^2, x, 1$, 输出基为 $x^2, x, 1$. 基变换矩阵 $bold(B)_"输入"$ 和 $bold(B)_"输出"$ 为置换矩阵. $T(bold(u)) = (d bold(u))/(d x)$ 在新基下的矩阵为对角奇异矩阵 $bold(B)_"输出"^(-1) bold(A) bold(B)_"输入" = bold(Sigma)$, 其中 $sigma_1, sigma_2, sigma_3 = 3, 2, 1$:

#eqnum($ bold(B)_"输出"^(-1) bold(A) bold(B)_"输入" = mat(delim: "[", 0, 0, 1; 0, 1, 0; 1, 0, 0) mat(delim: "[", 0, 1, 0, 0; 0, 0, 2, 0; 0, 0, 0, 3) mat(delim: "[", 0, 0, 0, 1; 0, 0, 1, 0; 0, 1, 0, 0; 1, 0, 0, 0) = mat(delim: "[", 3, 0, 0, 0; 0, 2, 0, 0; 0, 0, 1, 0) . $, 8)

从上式可以看出, $x^3, x^2, x, 1$ 的导数分别为 $3 x^2, 2 x, 1, 0$.

#barHead[■ 要点回顾]

#hei[1.]　对线性变换 $T$, 若一组基下的像 $T(bold(v)_1), T(bold(v)_2), dots.c, T(bold(v)_n)$ 已知, 则线性性质将给出所有其他向量的像 $T(bold(v))$.

#hei[2.]　已知线性变换 $T$, 输入基 $bold(v)_1, bold(v)_2, dots.c, bold(v)_n$ 和输出基 $bold(w)_1, bold(w)_2, dots.c, bold(w)_m$, 则存在 $m times n$ 矩阵 $bold(A)$ 使得 $T(bold(v)) = bold(A) bold(v)$.

#hei[3.]　基变换矩阵 $bold(B) = bold(W)^(-1) bold(V) = bold(B)_"输出"^(-1) bold(B)_"输入"$ 为恒等变换 $T(bold(v)) = bold(v)$ 的矩阵.

#hei[4.]　若 $bold(A)$ 和 $bold(B)$ 分别为变换 $T$ 和 $S$ 的矩阵, 且 $S$ 的输出基为 $T$ 的输入基, 则 $bold(A) bold(B)$ 为变换 $T(S(bold(u)))$ 的矩阵.

#hei[5.]　最佳的输入基/输出基为 $bold(A)$ 的特征向量和/或奇异向量, 则

#dmath[$ bold(B)_"输出"^(-1) bold(A) bold(B)_"输入" = bold(Lambda), "为特征值矩阵;" quad quad bold(B)_"输出"^(-1) bold(A) bold(B)_"输入" = bold(Sigma), "为奇异值矩阵." $]

#barHead[■ 范例解析]

#hei[8.2 A]　下面 4 个 “向量” 为二阶方阵空间 $M$ 的一组基:

#dmath[$ bold(v)_1 = mat(delim: "[", 1, 0; 0, 0), quad bold(v)_2 = mat(delim: "[", 0, 1; 0, 0), quad bold(v)_3 = mat(delim: "[", 0, 0; 1, 0), quad bold(v)_4 = mat(delim: "[", 0, 0; 0, 1). $]

#pagebreak()