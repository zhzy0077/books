#import "../theme.typ": *

#ti[25.][将矩阵 $bold(A) = mat(delim: "[", 1, 3; 0, 0)$ 代入 $e^(bold(A) t)$ 的级数展开式, 并计算结果, 可先计算 $bold(A)^2$ 和 $bold(A)^n$:

$ e^(bold(A) t) = mat(delim: "[", 1, 0; 0, 1) + mat(delim: "[", t, 3t; 0, 0) + 1/2 mat(delim: "[", , ; , ) + dots.c = mat(delim: "[", e^t, ; 0, ). $]

#ti[26.][(推荐) 为什么矩阵指数函数 $e^(bold(A) t)$ 绝对不会是奇异矩阵? 参考下列思路给出两种解释:

(a) 写出其逆矩阵;

(b) 为什么特征值都是非零的? 如果 $bold(A) bold(x) = lambda bold(x)$, 那么 $e^(bold(A) t) bold(x) =$ \_\_\_\_ $bold(x)$.]

#ti[27.][对方程组

$ cases((dif x)/(dif t) = 0x - 4y, (dif y)/(dif t) = -2x + 2y) $

求出解 $x(t), y(t)$. 当 $t -> +infinity$ 时, 它们趋于无穷. 为了避免不稳定性, 可对换两个方程, 即考虑

$ cases((dif y)/(dif t) = -2x + 2y, (dif x)/(dif t) = 0x - 4y.) $

现在系数矩阵 $mat(delim: "[", -2, 2; 0, -4)$ 是稳定的, 它的特征值是负数. 为什么会这样?]

#align(center, image("../assets/fig-p366-icon.png", width: 3.2%))

#xiti[挑 战 题][

#ti[28.][将例 3 中的 $y'' = -y$ 作中心差分, 将得到 $Y_(n+1) - 2Y_n + Y_(n-1) = -(Delta t)^2 Y_n$. 它可写为关于 $bold(U) = (Y, Z)$ 的一步差分方程:

$ cases(Y_(n+1) = Y_n + Delta t Z_n, Z_(n+1) = Z_n - Delta t Y_(n+1)), quad mat(delim: "[", 1, 0; Delta t, 1) mat(delim: "[", Y_(n+1); Z_(n+1)) = mat(delim: "[", 1, Delta t; 0, 1) mat(delim: "[", Y_n; Z_n). $

对后式左边矩阵求逆, 以将该式写为 $bold(U)_(n+1) = bold(A) bold(U)_n$. 证明 $det bold(A) = 1$. 选择较大的时间步长 $Delta t = 1$, 求出 $bold(A)$ 的特征值 $lambda_1$ 和 $lambda_2 = overline(lambda)_1$:

$ bold(A) = mat(delim: "[", 1, 1; -1, 0) quad "的特征值满足" quad |lambda_1| = |lambda_2| = 1. $

证明 $bold(A)^6$ 恰为 $bold(I)$. 在 6 步之后, $t = 6$, 而 $bold(U)_6$ 等于 $bold(U)_0$. 当 $t = 2pi$ 时, $y = cos t$ 正好返回 1.]

]

#pagebreak()