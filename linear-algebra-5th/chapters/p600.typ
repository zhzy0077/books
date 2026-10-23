#import "../theme.typ": *

一些 $y_j$ 一定会在试验 2 中出现! 无论两个硬币是完全分开还是粘在一起, 都能得到硬币 1 出现正面的概率 $P(H) = P("HH") + P("HT")$ 是 $1/2$:

$ ("完全分开") quad P("HH") + P("HT") = 1/4 + 1/4 = 1/2, $

$ ("粘在一起") quad P("HH") + P("HT") = 1/2 + 0 = 1/2. $

利用这个基本结论可以写出一个矩阵公式, 公式中包含了试验 1 和试验 2 各自的方差 $sigma_1^2$ 和 $sigma_2^2$ 以及协方差 $sigma_(12)$. 将每个 $(i, j)$ 对应的矩阵 $bold(V)_(i j)$ 相加得到完整的协方差矩阵 $bold(V)$:

#eqnum($ bold(V) = sum_i sum_j bold(V)_(i j) = sum_i sum_j p_(i j) mat(delim: "[", (x_i - m_1)^2, (x_i - m_1)(y_j - m_2); (x_i - m_1)(y_j - m_2), (y_j - m_2)^2) . $, 7)

对角元素是方差 $sigma_1^2$ 和 $sigma_2^2$, 其余元素是协方差 $sigma_(12)$, 即 (2) 式. 下面分析如何利用 (6) 式来得到 $sigma_1^2$. 对全体 $j$ 考虑试验 1 中 $x_i$ 发生的概率 $p_(i.)$,

#eqnum($ sigma_1^2 = sum_i sum_j p_(i j) (x_i - m_1)^2 = sum_i (x_i "发生的概率") (x_i - m_1)^2 . $, 8)

请仔细观察上式, 这是利用公式 (7) 来生成整个协方差矩阵的关键. 公式 (7) 的美妙之处在于它结合了二阶方阵 $bold(V)_(i j)$, 且每组结果 $(i, j)$ 对应的矩阵 $bold(V)_(i j)$ 是半正定的:

#dmath[$ bold(V)_(i j) "的对角元素" quad p_(i j)(x_i - m_1)^2 >= 0, quad p_(i j)(y_j - m_2)^2 >= 0, $]

且 $det(bold(V)_(i j)) = 0$. 矩阵 $bold(V)_(i j)$ 的秩为 1. 公式 (7) 中求和式的每一项可写成 $p_(i j)$ 乘列向量 $bold(u)$ 再左乘行向量 $bold(u)^T$:

#eqnum([$ bold(u) bold(u)^T = mat(delim: "[", (x_i - m_1)^2, (x_i - m_1)(y_j - m_2); (x_i - m_1)(y_j - m_2), (y_j - m_2)^2) \
= mat(delim: "[", x_i - m_1; y_j - m_2) [x_i - m_1 quad y_j - m_2] . $], 9)

每个矩阵 $bold(u) bold(u)^T$ 都是半正定矩阵, 因此整个矩阵 $bold(V)$ (对矩阵 $bold(u) bold(u)^T$ 赋权重 $p_(i j) >= 0$) 至少是半正定矩阵——$bold(V)$ 也可能是正定矩阵.

#align(center)[若两次试验相互独立, 则协方差矩阵 $bold(V)$ 是正定矩阵.]

现在从两个随机变量 $X$ 和 $Y$ 拓展到 $M$ 个随机变量. 每次试验的结果都是一个包含 $M$ 个分量的向量 $bold(X)$, 例如, 由每个儿童都可得到包含年龄、身高和体重 3 个分量的向量. 现在协方差矩阵 $bold(V)$ 是一个 $M$ 阶方阵, 由试验的结果 $bold(X)$ 及其均值 $overline(bold(X)) = "E"[bold(X)]$ 得到:

#dingliC[#eqnumL([协方差矩阵], $ bold(V) = "E"[(bold(X) - overline(bold(X)))(bold(X) - overline(bold(X)))^T] . $, 10)]



#pagebreak()