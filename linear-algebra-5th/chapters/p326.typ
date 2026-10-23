#import "../theme.typ": *

#sub[(a) 验证对换 $bold(A)$ 的两行会使得特征值发生改变;]
#sub[(b) 为什么消元操作不会影响零特征值?]
#ti[2.][求出以下两个矩阵的特征值和特征向量:]

$ bold(A) = mat(delim: "[", 1, 4; 2, 3), quad bold(A) + bold(I) = mat(delim: "[", 2, 4; 2, 4) . $

$bold(A) + bold(I)$ 与 $bold(A)$ 有 (相同的)(不同的) 特征向量, 前者的特征值是后者的特征值 (加)(减) 1.

#ti[3.][计算 $bold(A)$ 和 $bold(A)^(-1)$ 的特征值和特征向量, 并核对迹!]

$ bold(A) = mat(delim: "[", 0, 2; 1, 1), quad bold(A)^(-1) = mat(delim: "[", -1/2, 1; 1/2, 0) . $

$bold(A)^(-1)$ 与 $bold(A)$ 有 (相同的)(不同的) 特征向量. 当 $bold(A)$ 的特征值为 $lambda_1$ 和 $lambda_2$ 时, $bold(A)^(-1)$ 的特征值为 \_\_\_\_.

#ti[4.][计算如下矩阵 $bold(A)$ 和 $bold(A)^2$ 的特征值及特征向量:]

$ bold(A) = mat(delim: "[", -1, 3; 2, 0), quad bold(A)^2 = mat(delim: "[", 7, -3; -2, 6) . $

$bold(A)^2$ 与 $bold(A)$ 有相同的 \_\_\_\_. 当 $bold(A)$ 的特征值为 $lambda_1$ 与 $lambda_2$ 时, $bold(A)^2$ 的特征值为 \_\_\_\_. 本题中, 为什么 $lambda_1^2 + lambda_2^2 = 13$?

#ti[5.][求如下矩阵 $bold(A)$, $bold(B)$ 和 $bold(A) + bold(B)$ 的特征值 (三角形矩阵的特征值容易求出):]

$ bold(A) = mat(delim: "[", 3, 0; 1, 1), quad bold(B) = mat(delim: "[", 1, 1; 0, 3), quad bold(A) + bold(B) = mat(delim: "[", 4, 1; 1, 4) . $

$bold(A) + bold(B)$ 的特征值 (等于)(不等于) $bold(A)$ 的特征值加 $bold(B)$ 的特征值.

#ti[6.][求如下矩阵 $bold(A)$, $bold(B)$, $bold(A) bold(B)$ 和 $bold(B) bold(A)$ 的特征值:]

$ bold(A) = mat(delim: "[", 1, 0; 1, 1), quad bold(B) = mat(delim: "[", 1, 2; 0, 1), quad bold(A) bold(B) = mat(delim: "[", 1, 2; 1, 3), quad bold(B) bold(A) = mat(delim: "[", 3, 2; 1, 1) . $

#sub[(a) $bold(A) bold(B)$ 的特征值等于 $bold(A)$ 的特征值乘 $bold(B)$ 的特征值吗?]
#sub[(b) $bold(A) bold(B)$ 的特征值等于 $bold(B) bold(A)$ 的特征值吗?]
#ti[7.][由消元法得到 $bold(A) = bold(L) bold(U)$. $bold(U)$ 的特征值在它的对角线上, 它们是 \_\_\_\_; $bold(L)$ 的特征值也在它的对角线上, 它们都是 \_\_\_\_. $bold(A)$ 的特征值与 \_\_\_\_ 不相同.]

#ti[8.][(a) 已知 $bold(x)$ 为特征向量, 那么求特征值 $lambda$ 的方法是 \_\_\_\_;]

#sub[(b) 已知 $lambda$ 为特征值, 那么求特征向量 $bold(x)$ 的方法是 \_\_\_\_.]
#ti[9.][设 $lambda$ 是矩阵 $bold(A)$ 的特征值, 为了证明如下 (a)—(c), 应该对等式 $bold(A) bold(x) = lambda bold(x)$ 如何变形?]

#pagebreak()