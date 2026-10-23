#import "../theme.typ": *

#eqnumL([100 个 $bold(A)$ 左乘 $bold(u)_0$], $ bold(u)_100 = (lambda_1^100 bold(x)_1 - lambda_2^100 bold(x)_2) / (lambda_1 - lambda_2) . $, 9)

#v(6pt)

#h(1.5em) 所求 $F_100$ 为 $bold(u)_100$ 的第二个分量. $bold(x)_1$ 和 $bold(x)_2$ 的第二个分量均为 1. 因为 $lambda_1 = (1 + sqrt(5)) / 2$ 与 $lambda_2 = (1 - sqrt(5)) / 2$ 相差 $sqrt(5)$, 而 $lambda_2^100 approx 0$, 所以

#v(2pt)

#eqnum([$ "第 100 个斐波那契数" quad (lambda_1^100 - lambda_2^100) / (lambda_1 - lambda_2) quad "为最接近" quad 1 / sqrt(5) ((1 + sqrt(5)) / 2)^100 quad "的整数." $], 10)

#h(1.5em) 每个 $F_k$ 均为整数. 比值 $F_101 / F_100$ 必然十分接近极限比值 $(1 + sqrt(5)) / 2 approx 1.618$. 古希腊人称后者为 “黄金分割率”. 通常认为相邻两边比为 $1.618 : 1$ 的长方形看上去特别优雅.

#v(6pt)

#subsec[矩阵的幂 $bold(A)^k$]

#v(4pt)

#h(1.5em) 上述斐波那契数的例子中包含一个典型的差分方程 $bold(u)_(k+1) = bold(A) bold(u)_k$. 每一步左乘 $bold(A)$, 解为 $bold(u)_k = bold(A)^k bold(u)_0$. 以下分析如何利用矩阵对角化在三步之内快速算出 $bold(A)^k$, 并求出 $bold(u)_k$.

#h(1.5em) 由特征向量矩阵 $bold(X)$ 得到 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$, 这是矩阵的一种分解式. 前面已经介绍过一些分解式, 例如 $bold(A) = bold(L) bold(U)$ 或 $bold(A) = bold(Q) bold(R)$. 这种新的分解式非常适合计算矩阵的幂, 因为每次 $bold(X)^(-1)$ 左乘 $bold(X)$ 都得 $bold(I)$:

#align(center)[$ bold(A) "的幂" quad quad bold(A)^k bold(u)_0 = (bold(X) bold(Lambda) bold(X)^(-1)) dots.c (bold(X) bold(Lambda) bold(X)^(-1)) bold(u)_0 = bold(X) bold(Lambda)^k bold(X)^(-1) bold(u)_0 . $]

下面将计算 $bold(X) bold(Lambda)^k bold(X)^(-1) bold(u)_0$ 分为三步进行, 以此展示特征值的作用:

(1) 将 $bold(u)_0$ 写为特征向量的线性组合 $c_1 bold(x)_1 + c_2 bold(x)_2 + dots.c + c_n bold(x)_n = bold(X) bold(c)$, 其中 $bold(c) = bold(X)^(-1) bold(u)_0$;

(2) 用各 $lambda_i^k$ 乘对应的特征向量 $bold(x)_i$, 结果中的系数向量可写成矩阵 $bold(Lambda)^k bold(X)^(-1) bold(u)_0$;

(3) 把各 $c_i lambda_i^k bold(x)_i$ 加起来, 求出解 $bold(u)_k = bold(A)^k bold(u)_0$, 此即 $bold(X) bold(Lambda)^k bold(X)^(-1) bold(u)_0$.

#v(4pt)

#dingliC[#eqnumL([$ bold(u)_(k+1) = bold(A) bold(u)_k $ 的解为], $ bold(u)_k = bold(A)^k bold(u)_0 = c_1 lambda_1^k bold(x)_1 + c_2 lambda_2^k bold(x)_2 + dots.c + c_n lambda_n^k bold(x)_n . $, 11)]

#v(4pt)

用矩阵语言描述, $bold(A)^k = (bold(X) bold(Lambda) bold(X)^(-1))^k$, 即 $bold(X)$ 左乘 $bold(Lambda)^k$ 再左乘 $bold(X)^(-1)$. 在第 1 步中, 由 $bold(X)$ 中的特征向量导出线性组合 $bold(u)_0 = c_1 bold(x)_1 + c_2 bold(x)_2 + dots.c + c_n bold(x)_n$ 中的系数向量 $bold(c)$:

#v(2pt)

#eqnumL([第 1 步], $ bold(u)_0 = mat(delim: "[", bold(x)_1, bold(x)_2, dots.c, bold(x)_n) mat(delim: "[", c_1; c_2; dots.v; c_n) , quad "这就是" quad bold(u)_0 = bold(X) bold(c) . $, 12)

#pagebreak()