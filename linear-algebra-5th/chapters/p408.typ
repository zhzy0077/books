#import "../theme.typ": *

现在计算 $bold(A) v_1$ 和 $bold(A) v_2$, 它们分别为 $sigma_1 u_1 = sqrt(45) u_1$ 和 $sigma_2 u_2 = sqrt(5) u_2$:

#dmath[$ bold(A) v_1 = 3/sqrt(2) mat(delim: "[", 1; 3) = sqrt(45) 1/sqrt(10) mat(delim: "[", 1; 3) = sigma_1 u_1, $]

#dmath[$ bold(A) v_2 = 1/sqrt(2) mat(delim: "[", -3; 1) = sqrt(5) 1/sqrt(10) mat(delim: "[", -3; 1) = sigma_2 u_2. $]

除以 $sqrt(10)$ 将使 $u_1$ 和 $u_2$ 成为标准正交向量, 然后得到预期的 $sigma_1 = sqrt(45)$ 和 $sigma_2 = sqrt(5)$. $bold(A)$ 的奇异值分解为 $bold(U) bold(Sigma) bold(V)^T$:

#dingliC[#eqnum($ bold(U) = 1/sqrt(10) mat(delim: "[", 1, -3; 3, 1), quad bold(Sigma) = mat(delim: "[", sqrt(45), ; , sqrt(5)), quad bold(V) = 1/sqrt(2) mat(delim: "[", 1, -1; 1, 1). $, 7)]

$bold(U)$ 和 $bold(V)$ 包含 $bold(A)$ 的列空间与行空间 (两者都刚好是 $R^2$) 的标准正交基. 最后的结论是利用两组基将 $bold(A)$ 对角化: $bold(A) bold(V) = bold(U) bold(Sigma)$. 矩阵 $bold(A)$ 可拆分为两个秩 1 矩阵 (即列左乘行) 的线性组合:

#dmath[$ sigma_1 u_1 v_1^T + sigma_2 u_2 v_2^T = sqrt(45)/sqrt(20) mat(delim: "[", 1, 1; 3, 3) + sqrt(5)/sqrt(20) mat(delim: "[", 3, -3; -1, 1) = mat(delim: "[", 3, 0; 4, 5) = bold(A). $]

#subsec[一个特别的矩阵]

下面是一个阶数更大的矩阵的例子, 对应的 $u_i$ 和 $v_i$ 正是单位矩阵的列, 因此计算并不困难, 但请注意列的次序. 矩阵 $bold(A)$ 中非零元素都在对角线上方 (即为严格上三角形矩阵), 它的所有特征值皆为零. $bold(A) bold(A)^T$ 与 $bold(A)^T bold(A)$ 并不相近. 矩阵 $bold(U)$ 与 $bold(V)$ 都是置换矩阵, 它们将弥补这些不足.

#grid(
  columns: (auto, auto),
  column-gutter: 2em,
  align: (center + horizon, left + horizon),
  [$ bold(A) = mat(delim: "[", 0, 1, 0, 0; 0, 0, 2, 0; 0, 0, 0, 3; 0, 0, 0, 0) $],
  [特征值 $lambda = 0, 0, 0, 0$ 全为零!\ 仅一个特征向量 $(1, 0, 0, 0)$,\ 奇异值 $sigma = 3, 2, 1$,\ 奇异向量是 $bold(I)$ 的列.],
)

$bold(A)^T bold(A)$ 与 $bold(A) bold(A)^T$ 皆为对角矩阵 (都有容易处理的特征向量, 但次序不同):

#dmath[$ bold(A)^T bold(A) = mat(delim: "[", 0, 0, 0, 0; 0, 1, 0, 0; 0, 0, 4, 0; 0, 0, 0, 9), quad bold(A) bold(A)^T = mat(delim: "[", 1, 0, 0, 0; 0, 4, 0, 0; 0, 0, 9, 0; 0, 0, 0, 0). $]

#pagebreak()