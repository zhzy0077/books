#import "../theme.typ": *

#hei[不相互独立的 $X$ 与 $Y$]

现在抛开独立性. 当 $bold(V)$ 不是对角矩阵时, 包含 $bold(V)^(-1)$ 的指数表示式 (5) 仍然是正确的. 现在高斯分布取决于向量 $bold(m)$ 和矩阵 $bold(V)$.

当 $M = 2$ 时, 随机变量 $X$ 会提供随机变量 $Y$ 的部分信息 (反之亦然), 即可能 $Y$ 的一部分由 $X$ 确定, 而其他部分与 $X$ 相互独立. $M$ 阶协方差矩阵 $bold(V)$ 描述了 $M$ 个随机变量 $X_1, X_2, dots.c, X_M$ 之间的相关性, 在 $p(bold(x))$ 中使用它的逆矩阵 $bold(V)^(-1)$:

#eqnumL([多维高斯分布\ 概率密度], $ p(bold(x)) = 1/((sqrt(2 pi))^M sqrt(det bold(V))) e^(-(bold(x) - bold(m))^T bold(V)^(-1)(bold(x) - bold(m))\/2) . $, 6)

上式中的向量 $bold(x) = (x_1, x_2, dots.c, x_M)$ 和 $bold(m) = (m_1, m_2, dots.c, m_M)$ 分别包含了随机变量与它们的均值. 式中的 $(sqrt(2 pi))^M sqrt(det bold(V))$ 使得总概率等于 1. 这个结论可用线性代数知识进行验证.

利用对称矩阵 $bold(V) = bold(Q) bold(Lambda) bold(Q)^T$ 的特征值 $lambda$ 以及标准正交特征向量 $bold(q)$ 可得 $bold(V)^(-1) = bold(Q) bold(Lambda)^(-1) bold(Q)^T$: 设 $bold(u) = bold(x) - bold(m), bold(y) = bold(Q)^T bold(u)$, 则

$ (bold(x) - bold(m))^T bold(V)^(-1)(bold(x) - bold(m)) = bold(u)^T bold(Q) bold(Lambda)^(-1) bold(Q)^T bold(u) = bold(y)^T bold(Lambda)^(-1) bold(y). $

注意! $bold(y) = bold(Q)^T bold(u) = bold(Q)^T(bold(x) - bold(m))$ 各分量对应的随机变量是相互独立的. 它们的协方差矩阵 $bold(Lambda)$ 是对角矩阵. 利用特征向量矩阵 $bold(Q)$ 将 $bold(V)$ 对角化的步骤与对随机变量 “解除关联” 的步骤完全相同, 新随机变量 $Y_1, Y_2, dots.c, Y_M$ 的协方差都是零, 这是利用线性代数来帮助计算多元积分的关键所在.

对变量 $bold(x)$ 减去 $bold(m)$ 得到 $bold(u)$ 实现中心化, 再旋转变换得到 $bold(y) = bold(Q)^T bold(u)$, 这些操作不会影响对 $p(bold(x))$ 的积分. 矩阵 $bold(Lambda)$ 是对角矩阵! 因此可将积分分解为 $M$ 个已知的一元积分:

#eqnum([$ integral_(R^M) e^(-bold(y)^T bold(Lambda)^(-1) bold(y)\/2) dif bold(y) \
= integral_(-infinity)^(+infinity) e^(-y_1^2\/(2 lambda_1)) dif y_1 integral_(-infinity)^(+infinity) e^(-y_2^2\/(2 lambda_2)) dif y_2 dots.c integral_(-infinity)^(+infinity) e^(-y_M^2\/(2 lambda_M)) dif y_M \
= sqrt(2 pi lambda_1) sqrt(2 pi lambda_2) dots.c sqrt(2 pi lambda_M) = (sqrt(2 pi))^M sqrt(det bold(V)) . $], 7)

$bold(V)$ 的行列式 (也就是 $bold(Lambda)$ 的行列式) 是特征值的乘积 $lambda_1 lambda_2 dots.c lambda_M$, 因此 (7) 式给出了正确的除数, 使得 (6) 式中 $p(x_1, x_2, dots.c, x_M)$ 有预期的积分结果 1.

计算 $p(bold(x))$ 的均值和方差也是计算 $M$ 元积分. 同样地, 利用特征向量将 $bold(V)$ 对角化以及引入 $bold(y) = bold(Q)^T bold(u)$ 能够算出这些积分:

#eqnumL([均值向量 $bold(m)$], $ integral_(R^M) bold(x) p(bold(x)) dif bold(x) = (m_1, m_2, dots.c) = bold(m) . $, 8)

#eqnumL([协方差矩阵 $bold(V)$], $ integral_(R^M) (bold(x) - bold(m)) p(bold(x)) (bold(x) - bold(m))^T dif bold(x) = bold(V) . $, 9)

结论: 利用概率密度 $p(bold(x))$ 的公式 (6) 可以导出想要得到的所有性质.





#pagebreak()
