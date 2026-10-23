#import "../theme.typ": *

#align(center, subsec[12.3  多维高斯分布与加权最小二乘法])

正态分布 $N(m, sigma^2)$ (高斯分布) 的概率密度 $p(x)$ 只与两个数字有关:

#eqnumL([均值 $m$ 与方差 $sigma^2$], $ p(x) = 1/(sqrt(2 pi) sigma) e^(-(x - m)^2 \/ (2 sigma^2)) . $, 1)

$p(x)$ 的图形是以直线 $x = m$ 为对称轴的一条钟形曲线. 连续型随机变量 $X$ 可以在 $-infinity$ 到 $+infinity$ 之间任意取值. 随机变量 $X$ 的值落在 $m - sigma$ 到 $m + sigma$ 之间 (与均值 $m$ 的距离小于一个标准差 $sigma$) 的概率约为 $2/3$.

#eqnum($ integral_(-infinity)^(+infinity) p(x) dif x = 1, quad integral_(m - sigma)^(m + sigma) p(x) dif x = 1/(sqrt(2 pi)) integral_(-1)^1 e^(-u^2\/2) dif u approx 2/3 . $, 2)

上述积分用了从 $x$ 到 $u = (x - m)/sigma$ 的变量替换, 将指数化简为 $-u^2/2$ 并将积分限化简为 $-1$ 到 1, $p(x)$ 中的 $1/sigma$ 也因为 $dif u$ 等于 $dif x/sigma$ 而从积分中消失. 这样, 每一个高斯分布变成了标准高斯分布, 此时 $p(u)$ 对应的随机变量 $u$ 均值 $m = 0$ 且方差 $sigma^2 = 1$. 仍然将 $p(u)$ 记为 $p(x)$: 标准正态分布 $N(0, 1)$ 的概率密度为

#eqnum($ p(x) = 1/(sqrt(2 pi)) e^(-x^2\/2) . $, 3)

对 $p(x)$ 从 $-infinity$ 到 $x$ 积分可得分布函数 $F(x)$: 随机样本不超过 $x$ 的概率. 当 $x = 0$ (均值) 时, 这个概率是 $F(0) = 1/2$.

#align(center, subsec[二维高斯分布])

现在有 $M = 2$ 个高斯随机变量 (正态随机变量) $X$ 和 $Y$, 它们的均值分别为 $m_1$ 和 $m_2$, 方差分别为 $sigma_1^2$ 和 $sigma_2^2$. 若二者相互独立, 则随机变量 $(X, Y)$ 的概率密度 $p(x, y)$ 就是 $p_1(x) p_2(y)$. 当多个变量相互独立时, 将概率密度相乘可得联合概率密度:

#eqnumL([$X$ 与 $Y$ 相互独立], $ p(x, y) = 1/(2 pi sigma_1 sigma_2) e^(-(x - m_1)^2\/(2 sigma_1^2)) e^(-(y - m_2)^2\/(2 sigma_2^2)) . $, 4)

$X$ 与 $Y$ 的协方差是 $sigma_(12) = 0$, 协方差矩阵 $bold(V)$ 是对角矩阵, 方差 $sigma_1^2$ 与 $sigma_2^2$ 始终在 $bold(V)$ 的对角线上. $p(x, y)$ 中的指数恰好是 $p_1(x)$ 中的指数和 $p_2(y)$ 中的指数之和. 注意, 这两个指数能够合并成 $-1/2 (bold(x) - bold(m))^T bold(V)^(-1)(bold(x) - bold(m))$:

#eqnum($ -(x - m_1)^2/(2 sigma_1^2) - (y - m_2)^2/(2 sigma_2^2) = -1/2 [x - m_1 quad y - m_2] mat(delim: "[", sigma_1^2, 0; 0, sigma_2^2)^(-1) mat(delim: "[", x - m_1; y - m_2) . $, 5)

#pagebreak()