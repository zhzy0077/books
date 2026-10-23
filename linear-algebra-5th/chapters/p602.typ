#import "../theme.typ": *

$ integral.triple p(x, y, z) dif x dif y dif z = 1 $ 一定成立. 例 1 和例 2 强调了如何由 $p$ 得到对角矩阵 $bold(V)$ 或者奇异矩阵 $bold(V)$:

$ "独立随机变量" X, Y, Z quad p(x, y, z) = p_1(x) p_2(y) p_3(z), $

$ "相关随机变量" X, Y, Z quad "除" c x + d y + e z = 0 "外, 一定有" p(x, y, z) = 0. $

#hei[$Z = X + Y$ 的均值与方差]

先讨论样本均值. 取 $X$ 的 $N$ 个样本, 均值 (即平均值) 是 $m_x$; 取 $Y$ 的 $N$ 个样本, 均值是 $m_y$. $Z = X + Y$ 的样本均值显然是 $m_z = m_x + m_y$:

#dingliC[#eqnumL([和的均值 = 均值的和], $ 1/N sum_(i=1)^N (x_i + y_i) = 1/N sum_(i=1)^N x_i + 1/N sum_(i=1)^N y_i . $, 14)]

计算 $Z = X + Y$ 的数学期望看起来不如计算样本均值这样简单, 结果为

$ "E"[Z] = "E"[X] + "E"[Y], $

可用以下方法进行分析.

设离散型随机变量 $X, Y$ 的组合 $(X, Y)$ 取值 $(x_i, y_j)$ 的联合概率是 $p_(i j), i, j = 1, 2, dots.c, N$, 它的值与试验是否相互独立有关, 而这一般未知. 但是对于 $Z = X + Y$ 这个和的均值而言, $X$ 和 $Y$ 独立或相关并不重要, 期望值仍然可以相加:

#eqnum($ "E"[X + Y] = sum_i sum_j p_(i j)(x_i + y_j) = sum_i sum_j p_(i j) x_i + sum_i sum_j p_(i j) y_j . $, 15)

以上每个求和符号都是从 1 到 $N$ 进行计算, 因此可以按照任意的顺序相加. 对于等式右侧的第一个求和项, 将 $p_(i j)$ 按概率分布矩阵 $bold(P)$ 中的第 $i$ 行分别求和就得到关于 $X$ 的边缘概率 $p_(i.)$ (即先对 $j$ 从 1 到 $N$ 进行求和). 这样通过双重求和运算得到 $"E"[X]$:

$ sum_i sum_j p_(i j) x_i = sum_i (p_(i 1) + p_(i 2) + dots.c + p_(i N)) x_i = sum_i p_(i.) x_i = "E"[X]. $

对于最后一个求和项, 将 $p_(i j)$ 按概率分布矩阵的第 $j$ 列分别求和得到关于 $Y$ 的边缘概率 $x_j$ (即先对 $i$ 从 1 到 $N$ 进行求和). 组合 $(x_1, y_j), (x_2, y_j), dots.c, (x_N, y_j)$ 都是 $y_j$ 的构成要素:

$ sum_i sum_j p_(i j) y_j = sum_j (p_(1 j) + p_(2 j) + dots.c + p_(N j)) y_j = sum_j p_(.j) y_j = "E"[Y]. $

至此 (15) 式就是 $"E"[X + Y] = "E"[X] + "E"[Y]$.

$Z = X + Y$ 的方差是什么? 需要综合考虑联合概率 $p_(i j)$ 和协方差 $sigma_(X Y)$. 可将 $X + Y$

#pagebreak()