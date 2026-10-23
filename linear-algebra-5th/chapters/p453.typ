#import "../theme.typ": *

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #hei[特征向量]　若变换 $T$ 将 $R^n$ 映到 $R^n$, 则它的矩阵 $bold(A)$ 为方阵. 但若使用标准基, $bold(A)$ 很可能不是对角的. 若 $bold(A)$ 有 $n$ 个线性无关的特征向量, 取它们为输入、输出基. 在这组 “好基” 下, $T$ 的矩阵为对角矩阵 $bold(Lambda)$, 对角线元素为 $bold(A)$ 的全部特征值.
]

#hei[例 7]　设投影矩阵 $T$ 将 $R^2$ 中每个向量 $bold(v) = (x, y)$ 投影到直线 $y = -x$ 上. 当使用标准基时, $bold(v)_1 = (1, 0)$ 的投影为 $T(bold(v)_1) = (1/2, -1/2)$, $bold(v)_2 = (0, 1)$ 的投影为 $T(bold(v)_2) = (-1/2, 1/2)$. 这些投影构成了 $bold(A)$ 的列向量:

标准基下的投影矩阵是非对角的

#dmath[$ bold(A) = mat(delim: "[", 1/2, -1/2; -1/2, 1/2), quad quad bold(A)^T = bold(A), bold(A)^2 = bold(A). $]

现在给出特征向量最关键的用途: 将它们用作基向量, 则可对角化变换的矩阵!

当基向量取为原变换矩阵 $bold(A)$ 的特征向量时, 新的变换矩阵为对角矩阵.

#dmath[$ bold(v)_1 = bold(w)_1 = (1, -1) "投影到自身:" T(bold(v)_1) = bold(v)_1, "对应" lambda_1 = 1; $]

#dmath[$ bold(v)_2 = bold(w)_2 = (1, 1) "投影到" 0 : T(bold(v)_2) = 0, "对应" lambda_2 = 0; $]

特征向量基对应对角矩阵　新变换矩阵为

#eqnum($ mat(delim: "[", 1, 0; 0, 0) = mat(delim: "[", lambda_1, 0; 0, lambda_2) = bold(Lambda) . $, 6)

特征向量为完美的基向量, 它们给出特征值矩阵 $bold(Lambda)$.

当输入基与输出基相同但不一定为特征向量时又会如何呢? 以这些基向量 $bold(b)_i$ 作为 $bold(B)$ 的各列. 从前面的论述 (例 2) 中可知, 基变换矩阵 (从标准基到新基) 为 $bold(B)_"输入" = bold(B)$, $bold(B)_"输出" = bold(B)^(-1)$. 变换 $T$ 的新矩阵和 $bold(A)$ 相似:

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #hei[在新基下变换的矩阵 $bold(A)_"新" = bold(B)^(-1) bold(A) bold(B)$ 和标准基下变换的矩阵 $bold(A)$ 相似:]

  #eqnum($ bold(A)_("各" bold(b)_i "到各" bold(b)_i) = bold(B)_("标准基到各" bold(b)_i)^(-1) bold(A)_"标准基" bold(B)_("各" bold(b)_i "到标准基") . $, 7)
]

这里对变换 $I T I$ 使用了乘法规则, 其中变换 $I$ 为恒等变换. $I, T, I$ 的矩阵分别为 $bold(B)^(-1), bold(A), bold(B)$. 矩阵 $bold(B)$ 由标准基下的输入向量 $bold(b)_i$ 组成.

最后考虑 $V$ 和 $W$ 为不同的空间, 取不同的基 $bold(v)_i$ 和 $bold(w)_j$. 当给定变换 $T$ 和选定基时, 可以得到 $T$ 的矩阵 $bold(A)$. 很可能 $bold(A)$ 不是对称的, 甚至不是方阵. 但总可以选择 $bold(v)_i$ 和 $bold(w)_j$ 使得 $T$ 的矩阵为对角矩阵. 这就是奇异值分解 $bold(A) = bold(U) bold(Sigma) bold(V)^T$ 中的奇异值矩阵 $bold(Sigma)$, 对角元素为奇异值 $sigma_1, sigma_2, dots.c, sigma_r$.



#pagebreak()