#import "../theme.typ": *
#set par(spacing: 14pt, leading: 12.8pt)

首先可想到的是尽量将 $bold(A)$ 和 $bold(S)$ 中的元素化为零, 但不改变任何 $sigma$ 与 $lambda$. 至于奇异向量和特征向量, 通常它们将会改变——这不是问题. 矩阵 $bold(Q)^(-1) bold(S) bold(Q)$ 与 $bold(S)$ 相似, 于是有相同的特征值 $lambda$. 如果 $bold(Q)$ 还是正交矩阵, 那么前者就是 $bold(Q)^T bold(S) bold(Q)$, 它仍然是对称的.

第 11.3 节将证明对二阶对称矩阵 $bold(S)$, 如何构造 $2 times 2$ 旋转矩阵 $bold(Q)$, 使得 $bold(Q)^T bold(S) bold(Q)$ 为对称的三对角矩阵 (包含大量的零元素). 但由旋转并不总能得到对角矩阵. 为了得到 $bold(S)$ 的所有特征值, 需要新的思路和更多的工作.

对于 SVD, 与 $bold(Q)^T bold(S) bold(Q)$ 对应的是什么? 既然不能改变 $bold(A)$ 的任何奇异值, 答案自然就是: 在 $bold(A)$ 的左右两边分别乘不同的正交矩阵 $bold(Q)_1$ 与 $bold(Q)_2$, 利用它们可生成矩阵 $bold(Q)_1^T bold(A) bold(Q)_2$ 中的零元素. 这时 $sigma$ 不变:

$ (bold(Q)_1^T bold(A) bold(Q)_2)^T (bold(Q)_1^T bold(A) bold(Q)_2) = bold(Q)_2^T bold(A)^T bold(A) bold(Q)_2 = bold(Q)_2^T bold(S) bold(Q)_2 "给出相同的" sigma(bold(A)) "和" lambda(bold(S)). $

$bold(Q)_1$ 与 $bold(Q)_2$ 可自由选择, 这里选取的 $bold(Q)_1, bold(Q)_2$ 使得 $bold(Q)_1^T bold(A) bold(Q)_2$ 为两对角矩阵 (两条对角线非零). 这与 $bold(Q)^T bold(S) bold(Q)$ 为三对角矩阵完美呼应. 此外, 两者之间还存在联系:

$ ("两对角矩阵")^T ("两对角矩阵") = "三对角矩阵". $

最终算出对角矩阵 $bold(Lambda)$ 和对角矩阵 $bold(Sigma)$ 的步骤需要更多新思路. 解决该问题并不容易, 因为有些例子中要解的 $det(bold(S) - lambda bold(I)) = 0$ 实际上是次数 $n = 100$ 或 1 000 甚至更大的多项式. 肯定不能用这些多项式来求解!

求 $lambda$ 和 $sigma$ 时, LAPACK 采用的方法是用简单的正交矩阵来逼近 $bold(Q)^T bold(S) bold(Q) = bold(Lambda)$ 和 $bold(U)^T bold(A) bold(V) = bold(Sigma)$. 当所得结果非常接近 $bold(Lambda)$ 和 $bold(Sigma)$ 时, 就可以停止逼近了.

上述 2 步方法 (首先化出零元素) 内置于指令 eig(S) 和 svd(A) 中.

#v(16pt)
#barHead[■ 要点回顾]

#set par(spacing: 14pt)

#hei[1.] SVD 将 $bold(A)$ 分解为 $bold(U) bold(Sigma) bold(V)^T$, 并得到 $r$ 个奇异值 $sigma_1 >= sigma_2 >= dots.c >= sigma_r > 0$.

#hei[2.] 数值 $sigma_1^2, sigma_2^2, dots.c, sigma_r^2$ 是 $bold(A) bold(A)^T$ 与 $bold(A)^T bold(A)$ 的非零特征值.

#hei[3.] $bold(U)$ 与 $bold(V)$ 的标准正交列为 $bold(A) bold(A)^T$ 和 $bold(A)^T bold(A)$ 的特征向量.

#hei[4.] 上述列包含了矩阵 $bold(A)$ 的四个基本子空间的标准正交基.

#hei[5.] 上述基将矩阵 $bold(A)$ 对角化: $bold(A) v_i = sigma_i u_i, i <= r$, 即 $bold(A) bold(V) = bold(U) bold(Sigma)$.

#hei[6.] $bold(A) = sigma_1 u_1 v_1^T + sigma_2 u_2 v_2^T + dots.c + sigma_r u_r v_r^T$, 而 $sigma_1$ 为比值 $(norm(bold(A) x))/(norm(x))$ 的最大值.

#v(16pt)
#barHead[■ 范例解析]
#v(14pt)

#hei[7.2A]　将 $m times n$ 矩阵 $bold(A)$ (秩为 $r$) 分解为列左乘行再求和的形式, 识别以下各分解模式:

#v(4pt)
#grid(
  columns: (auto, auto, auto, auto, auto),
  column-gutter: 1.4em,
  row-gutter: 14pt,
  align: (left + horizon, left + horizon, center + horizon, left + horizon, left + horizon),
  [(1) 正交列], [$u_1 sigma_1, u_2 sigma_2, dots.c, u_r sigma_r$], [左乘], [标准正交行], [$v_1^T, v_2^T, dots.c, v_r^T$;],
  [(2) 标准正交列], [$q_1, q_2, dots.c, q_r$], [左乘], [三角形矩阵的行], [$r_1^T, r_2^T, dots.c, r_r^T$;],
  [(3) 三角形矩阵的列], [$l_1, l_2, dots.c, l_r$], [左乘], [三角形矩阵的行], [$u_1^T, u_2^T, dots.c, u_r^T$.],
)

#pagebreak()