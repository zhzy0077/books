#import "../theme.typ": *

#align(center, subsec[2.7　转置与置换])

#dingli[
  #hei[1.] $bold(A) bold(x)$, $bold(A) bold(B)$ 和 $bold(A)^(-1)$ 的转置分别是 $bold(x)^T bold(A)^T$, $bold(B)^T bold(A)^T$ 和 $(bold(A)^T)^(-1)$.

  #hei[2.] $n$ 维 (列) 向量 $bold(x), bold(y)$ 的点积 (内积) 是 $bold(x) dot bold(y) = bold(x)^T bold(y)$, 简记为

  $ (1 times n)(n times 1) = (1 times 1); $

  外积是 $bold(x) bold(y)^T = $ 列左乘行, 简记为

  $ (n times 1)(1 times n) = (n times n). $

  #hei[3.] $bold(A)^T$ 的潜在意义是 $bold(A) bold(x) dot bold(y)$ 等于 $bold(x) dot bold(A)^T bold(y)$, 因为

  $ (bold(A) bold(x))^T bold(y) = bold(x)^T bold(A)^T bold(y) = bold(x)^T (bold(A)^T bold(y)). $

  #hei[4.] 对对称矩阵 $bold(S)$, 有 $bold(S)^T = bold(S)$ (显然, 乘积 $bold(A)^T bold(A)$ 始终是对称矩阵).

  #hei[5.] 对正交矩阵 $bold(Q)$, 有 $bold(Q)^T = bold(Q)^(-1)$. 正交矩阵 $bold(Q)$ 的各列是标准正交向量组.

  #hei[6.] 置换矩阵 $bold(P)$ 由单位矩阵 $bold(I)$ 的行按任意顺序排列所得, 共有 $n!$ 种不同的排列.

  #hei[7.] $bold(P) bold(x)$ 将 $bold(x)$ 的分量 $x_1, x_2, dots, x_n$ 按照新的顺序排列, 且 $bold(P)^T = bold(P)^(-1)$.
]

本节将学习一种比求逆简单的矩阵运算——矩阵 $bold(A)$ 的 “转置”, 记为 $bold(A)^T$. $bold(A)^T$ 的各列是 $bold(A)$ 的各行.

当 $bold(A)$ 是 $m times n$ 矩阵时, 它的转置是 $n times m$ 矩阵:

#align(center, dingli[转置　若 $bold(A) = mat(1,2,3;0,0,4)$, 则 $bold(A)^T = mat(1,0;2,0;3,4)$. ])

显然, $bold(A)$ 的各行是 $bold(A)^T$ 的各列, 或者 $bold(A)$ 的各列是 $bold(A)^T$ 的各行, 看起来矩阵好像是沿主对角线进行了 “翻转”: $bold(A)^T$ 第 $i$ 行第 $j$ 列的元素等于原矩阵 $bold(A)$ 第 $j$ 行第 $i$ 列的元素:

行与列互换

$ bold(A)^T (i,j) = bold(A)(j,i) . $

下三角形矩阵的转置是上三角形矩阵. (但是下三角形矩阵的逆矩阵仍然是下三角形矩阵.) $bold(A)^T$ 的转置是 $bold(A)$.

注意 MATLAB 中求 $bold(A)$ 的转置的指令是 #raw("A'"). 键入 #raw("[1 2 3]") 得到一个行向量, 列向量是 #raw("v = [1 2 3]'"). 再键入矩阵 $bold(M)$ 的第二列 #raw("w = [4 5 6]") 就能够定义矩阵 $bold(M) = [v quad w]$. 当然, 更便捷的方式是先键入行再转置整个矩阵: #raw("M = [1 2 3; 4 5 6]'").

转置的法则非常直接. 例如, 可以对 $bold(A) + bold(B)$ 转置得 $(bold(A) + bold(B))^T$, 或分别对 $bold(A)$ 和 $bold(B)$ 转置再求和得 $bold(A)^T + bold(B)^T$ ——结果完全相同. 重点是乘积 $bold(A) bold(B)$ 与逆矩阵 $bold(A)^(-1)$ 的转置:

#align(center, dingli[和　$bold(A) + bold(B)$ 的转置　$(bold(A) + bold(B))^T = bold(A)^T + bold(B)^T$, #h(2em) (1)])



#pagebreak()
