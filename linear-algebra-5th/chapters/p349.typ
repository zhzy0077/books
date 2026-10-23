#import "../theme.typ": *

这些微分方程都是线性的: 如果 $bold(u)(t)$ 和 $bold(v)(t)$ 是解, 那么 $C bold(u)(t) + D bold(v)(t)$ 也是解. 为了匹配 $bold(u)(0)$ 的 $n$ 个分量, 需要 $n$ 个像 $C$ 和 $D$ 这样的常数. 我们首先利用 $bold(A) bold(x) = lambda bold(x)$ 求出 $n$ 个 “纯指数函数解” $bold(u) = e^(lambda t) bold(x)$.

在其他线性方程中, $bold(A)$ 随 $t$ 而变; 在非线性方程中, $bold(A)$ 随 $bold(u)$ 而变. 注意到这里的 $bold(A)$ 是一个常值矩阵, 因此并没有上述困扰, $(dif bold(u))/(dif t) = bold(A) bold(u)$ 是 “常系数线性方程组”. 可直接利用线性代数求解的微分方程就只有这种类型. 以下是关键思路:

#dmath[$ "当" bold(A) bold(x) = lambda bold(x) "时, 可利用指数函数" e^(lambda t) bold(x) "求解常系数线性方程组" (dif bold(u))/(dif t) = bold(A) bold(u) . $]

#dmath[$ (dif bold(u))/(dif t) = bold(A) bold(u) "的解" $]

方程组 $(dif bold(u))/(dif t) = bold(A) bold(u)$ 的纯指数函数解是 $e^(lambda t)$ 乘一个固定向量 $bold(x)$. 自然地, 猜想 $lambda$ 是 $bold(A)$ 的一个特征值, 而 $bold(x)$ 为对应的特征向量. 将 $bold(u)(t) = e^(lambda t) bold(x)$ 代入方程组 $(dif bold(u))/(dif t) = bold(A) bold(u)$, 可以证明以上猜想的正确性. 消去因子 $e^(lambda t)$ 可得 $lambda bold(x) = bold(A) bold(x)$:

#dingliC[
  #eqnumL([当 $bold(A) bold(x) = lambda bold(x)$ 时\ 选取 $bold(u) = e^(lambda t) bold(x)$], $ (dif bold(u))/(dif t) = lambda e^(lambda t) bold(x) quad "与" quad bold(A) bold(u) = bold(A) e^(lambda t) bold(x) quad "一致." $, 3)
]

特殊解 $bold(u) = e^(lambda t) bold(x)$ 的全部分量共用相同的 $e^(lambda t)$. 当 $lambda > 0$ 时, 解随 $t$ 变大而增长; 当 $lambda < 0$ 时, 解随 $t$ 变大而衰减. 如果 $lambda$ 为复数, 那么它的实部决定了解的涨落, 虚部 $omega$ 给出类似于正弦波的振荡解 $e^(i omega t)$.

#hei[例 1]　解 $(dif bold(u))/(dif t) = bold(A) bold(u) = mat(delim: "[", 0, 1; 1, 0) bold(u)$, 初值为 $bold(u)(0) = mat(delim: "[", 4; 2)$.

这是一个关于 $bold(u) = (y, z)$ 的向量方程, 它包含两个关于分量 $y$ 和 $z$ 的标量方程. 由于矩阵 $bold(A)$ 并非对角矩阵, 所以上述两个变量 “耦合在一起”:

$ (dif bold(u))/(dif t) = bold(A) bold(u) quad quad dif/(dif t) mat(delim: "[", y; z) = mat(delim: "[", 0, 1; 1, 0) mat(delim: "[", y; z) quad "意即" quad (dif y)/(dif t) = z quad "和" quad (dif z)/(dif t) = y . $

利用特征向量意在联立上述方程, 从而在某种程度上回到 $1 times 1$ 形状的问题. 组合 $y + z$ 和 $y - z$ 将实现这一点. 将上述两个方程分别相加、相减, 则

$ dif/(dif t) (y + z) = z + y, quad quad dif/(dif t) (y - z) = -(y - z) . $

组合 $y + z$ 像 $e^t$ 那样增长, 因为 $e^t$ 对应 $lambda = 1$. 而组合 $y - z$ 像 $e^(-t)$ 那样衰减, 因为 $e^(-t)$ 对应 $lambda = -1$. 这种解法重点是: 不是盲目地由原方程组 $(dif bold(u))/(dif t) = bold(A) bold(u)$ 来寻找这些特殊的组合, 而是利用 $bold(A)$ 的特征向量和特征值来完成此事.

上述矩阵 $bold(A)$ 的特征值为 $lambda_1 = 1$ 和 $lambda_2 = -1$, 特征向量为 $bold(x)_1 = (1, 1)$ 和 $bold(x)_2 = (1, -1)$. 上述方程的纯指数函数解 $bold(u)_1$ 与 $bold(u)_2$ 为 $e^(lambda_1 t) bold(x)_1$ 和 $e^(lambda_2 t) bold(x)_2$:



#pagebreak()