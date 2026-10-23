#import "../theme.typ": *

#hei[列线性相关矩阵的最小二乘解]

第 4.3 节讨论最小二乘解时, 出现的全 1 矩阵 $bold(A) = mat(delim: "[", 1, 1; 1, 1)$ 不满足各列线性无关的要求. 在时刻 $t = 1$ 做两次测量可得该矩阵. 最优直线介于测量值 1 与 3 中间, 但无法确定最优直线的斜率.

以矩阵语言表述, $bold(A)^T bold(A)$ 是奇异的, 方程组 $bold(A)^T bold(A) bold(x) = bold(A)^T bold(b)$ 有无穷多个解. 广义逆给出了选取 “最优解” $bold(x)^+ = bold(A)^+ bold(b)$ 的一种方法.

先写出无解的方程组 $bold(A) bold(x) = bold(b)$ 和有无穷多解的方程组 $bold(A)^T bold(A) bold(hat(x)) = bold(A)^T bold(b)$:

#dmath[$ bold(A) bold(x) = mat(delim: "[", 1, 1; 1, 1) mat(delim: "[", x_1; x_2) = mat(delim: "[", 3; 1) = bold(b), $]

#dmath[$ bold(A)^T bold(A) bold(hat(x)) = mat(delim: "[", 2, 2; 2, 2) mat(delim: "[", hat(x)_1; hat(x)_2) = mat(delim: "[", 4; 4) = bold(A)^T bold(b). $]

任意向量 $bold(hat(x)) = (1 + c, 1 - c)$ 满足正规方程组 $bold(A)^T bold(A) bold(hat(x)) = bold(A)^T bold(b)$. 广义逆旨在选取解 $bold(hat(x)) = bold(x)^+$.

#dingliC[$bold(x)^+ = bold(A)^+ bold(b) = (1, 1)$ 是 $bold(A)^T bold(A) bold(hat(x)) = bold(A)^T bold(b)$ 与 $bold(A) bold(hat(x)) = bold(p)$ 的最短解.]

可以看出 $bold(x)^+ = (1, 1)$ 较其他任何解 $bold(hat(x)) = (1 + c, 1 - c)$ 更短. $bold(hat(x))$ 的长度平方为

#dmath[$ (1 + c)^2 + (1 - c)^2 = 2 + 2c^2, $]

当 $c = 0$ 时最小, 此时给出了 $bold(A)$ 的行空间中的解 $bold(x)^+ = (1, 1)$.

$bold(A)^+$ 的几何意义: 由 $bold(A)$ 的列空间得到行空间, 这两个空间都是 $r$ 维的 ($r$ 是 $bold(A)$ 的秩), 而左零空间中的误差向量 $bold(e)$ 映为零向量.

由实验得到的矩阵通常列向量与行向量都是线性相关的, 所以在统计学中, 广义逆 $bold(A)^+$ 与最优解 $bold(x)^+$ 的重要性不言而喻.

#barHead[■ 要点回顾]

#hei[1.]　向量 $bold(A) bold(x)$ 所成椭圆的对称轴沿奇异向量 $bold(u)_i$ 的方向.

#hei[2.]　矩阵范数 $norm(bold(A)) = sigma_1$ 源自向量长度: $norm(bold(A) bold(x))/norm(bold(x))$ 的最大值.

#hei[3.]　可逆矩阵 = (正交矩阵)(正定矩阵), 即 $bold(A) = bold(Q) bold(S)$.

#hei[4.]　每个 $bold(A) = bold(U) Sigma bold(V)^T$ 对应广义逆 $bold(A)^+ = bold(V) Sigma^+ bold(U)^T$, 后者将左零空间 $N(bold(A)^T)$ 映射为零空间 $Z$.

#barHead[■ 范例解析]

#hei[7.4 A]　若 $m times n$ 矩阵 $bold(A)$ 是列满秩的, 那么 $bold(A)$ 有左逆 $bold(L) = (bold(A)^T bold(A))^(-1) bold(A)^T$, 即 $bold(L) bold(A) = bold(I)$. 解释为什么此时 $bold(A)$ 的广义逆是 $bold(A)^+ = bold(L)$.

#pagebreak()