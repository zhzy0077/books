#import "../theme.typ": *

#ti[10—13][将二阶方程转化为关于 $(y, y')$ 的一阶方程组.]

#hei[10.] 求出矩阵 $bold(A)$, 使得标量方程 $y'' = 5y' + 4y$ 变为关于 $bold(u) = (y, y')$ 的向量方程:

#dmath[$ (dif bold(u))/(dif t) = mat(delim: "[", y'; y'') = mat(delim: "[", , ; , ) mat(delim: "[", y; y') = bold(A) bold(u). $]

$bold(A)$ 的特征值是什么? 将 $y = e^(lambda t)$ 代入 $y'' = 5y' + 4y$, 也能求出该特征值.

#hei[11.] 方程 $y'' = 0$ 的解为直线 $y = C + D t$. 将 $y'' = 0$ 转化为矩阵方程:

#dmath[$ dif/dif t mat(delim: "[", y; y') = mat(delim: "[", 0, 1; 0, 0) mat(delim: "[", y; y') quad "的解为" quad mat(delim: "[", y; y') = e^(bold(A) t) mat(delim: "[", y(0); y'(0)). $]

$bold(A)$ 的特征值为 $lambda = 0, 0$, 它并不能对角化. 求出 $bold(A)^2$, 并计算

#dmath[$ e^(bold(A) t) = bold(I) + bold(A) t + 1/2 bold(A)^2 t^2 + dots.c . $]

用 $e^(bold(A) t)$ 左乘 $(y(0), y'(0))$, 从而验证解就是直线 $y(t) = y(0) + y'(0) t$.

#hei[12.] 将 $y = e^(lambda t)$ 代入 $y'' = 6y' - 9y$, 证明 $lambda = 3$ 为所得二次方程的二重根. 因此需要除了 $e^(3t)$ 之外的另一个线性无关解. 矩阵方程为

#dmath[$ dif/dif t mat(delim: "[", y; y') = mat(delim: "[", 0, 1; -9, 6) mat(delim: "[", y; y'). $]

证明系数矩阵的特征值为 $lambda = 3, 3$, 且只有一条特征向量直线. 此时也要特别处理. 证明 $y'' = 6y' - 9y$ 的另一个线性无关解为 $y = t e^(3t)$.

#hei[13.] (a) 写出两个常见的函数作为 $(dif^2 y)/(dif t^2) = -9y$ 的解. 哪一个满足 $y(0) = 3$ 和 $y'(0) = 0$?

(b) 由上述二阶方程 $y'' = -9y$ 可推出向量方程 $bold(u)' = bold(A) bold(u)$:

#dmath[$ bold(u) = mat(delim: "[", y; y'), quad (dif bold(u))/(dif t) = mat(delim: "[", y'; y'') = mat(delim: "[", 0, 1; -9, 0) mat(delim: "[", y; y') = bold(A) bold(u). $]

利用 $bold(A)$ 的特征值和特征向量, 求出满足 $bold(u)(0) = (3, 0)$ 的 $bold(u)(t)$.

#hei[14.] 本题中的矩阵 $bold(A)$ 是反称的 (即 $bold(A)^T = -bold(A)$):

#dmath[$ (dif bold(u))/(dif t) = mat(delim: "[", 0, c, -b; -c, 0, a; b, -a, 0) bold(u) = bold(A) bold(u) quad "或" quad cases(u_1' = c u_2 - b u_3, u_2' = a u_3 - c u_1, u_3' = b u_1 - a u_2.) $]

(a) $||bold(u)(t)||^2 = u_1^2 + u_2^2 + u_3^2$ 的导数为 $2u_1 u_1' + 2u_2 u_2' + 2u_3 u_3'$, 将上面的 $u_1', u_2', u_3'$ 代入其中可得零. 因此 $||bold(u)(t)||^2$ 与 $||bold(u)(0)||^2$ 保持相等.

(b) 当 $bold(A)$ 为反称矩阵时, 矩阵 $bold(Q) = e^(bold(A) t)$ 是正交的. 根据 $bold(Q) = e^(bold(A) t)$ 的级数展开式, 证明 $bold(Q)^T = e^(-bold(A) t)$. 从而有 $bold(Q)^T bold(Q) = bold(I)$.

#pagebreak()