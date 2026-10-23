#import "../theme.typ": *

独立试验的 $sigma_(12) = 0$, 这是因为 (2) 式中的每个 $p_(i j) = p_(i.) p_(.j)$:

#dmath[$ sigma_(12) = sum_i sum_j p_(i.) p_(.j) (x_i - m_1)(y_j - m_2) \
= [sum_i p_(i.) (x_i - m_1)] [sum_j p_(.j)(y_j - m_2)] = 0 dot 0 = 0. $]

粘在一起的硬币朝向完全相关, 一个正面向上意味着另一个也正面向上. 协方差 $sigma_(12)$ 从 0 变为 $sigma_1 sigma_2 = 1/4$——这是 $sigma_(12)$ 的最大可能值:

#dmath[$ "均值为" 1/2 quad sigma_(12) = 1/2 (1 - 1/2)(1 - 1/2) + 0 + 0 + 1/2 (0 - 1/2)(0 - 1/2) = 1/4. $]

第 1 个硬币正面向上或者反面向上给出了第 2 个硬币朝向的完整信息:

#grid(
  columns: (2fr, 1.4fr),
  align: (left + horizon, center + horizon),
  column-gutter: 12pt,
  [粘在一起的硬币给出了最大可能协方差, \ 奇异协方差矩阵: 行列式等于 0],
  $ bold(V) = mat(delim: "[", sigma_1^2, sigma_1 sigma_2; sigma_1 sigma_2, sigma_2^2). $,
)

不等式 $sigma_1^2 sigma_2^2 >= sigma_(12)^2$ 始终成立, 这样 $sigma_(12)$ 介于 $-sigma_1 sigma_2$ 和 $sigma_1 sigma_2$ 之间. 协方差矩阵 $bold(V)$ 通常是正定矩阵 (在硬币粘在一起的情况下, $bold(V)$ 是半正定矩阵). 这是由关于含 $M$ 个不同指标的试验所得 $M$ 阶协方差矩阵的一个重要结论.

注意, 来自 $N$ 次试验的样本协方差矩阵 $bold(S)$ 是半正定矩阵. 每一个新的样本 $bold(X)$ 都会影响样本均值 $overline(bold(X))$ 和样本方差 $bold(S)$. 每一项 $(x_i - overline(bold(X)))(x_i - overline(bold(X)))^T$ 都是半正定矩阵, 相加后可得 $bold(S)$:

#eqnum($ overline(bold(X)) = 1/N sum_(i=1)^N x_i, quad bold(S) = 1/(N-1) sum_(i=1)^N (x_i - overline(bold(X)))(x_i - overline(bold(X)))^T . $, 3)

#hei[协方差矩阵 $bold(V)$ 是半正定矩阵]

考虑试验 1 与试验 2 (对应两枚硬币) 之间的期望协方差 $sigma_(12)$:

#eqnum([$ sigma_(12) = "E"[("结果 1" - "均值 1")("结果 2" - "均值 2")] \ = sum_i sum_j p_(i j) (x_i - m_1)(y_j - m_2) . $], 4)

$p_(i j) >= 0$ 是试验 1 出现结果 $x_i$ 且试验 2 出现结果 $y_j$ 的概率. 考虑所有结果之间的组合配对可知, $N^2$ 个 ($N = 2$) 概率 $p_(i j)$ 相加之和等于 1.

#eqnumL([总概率 (所有配对) 是 1], $ sum_i sum_j p_(i j) = 1 . $, 5)

这里还需要另一个结论. 在试验 1 中固定一个特定的结果 $x_i$, 而在试验 2 中考虑所有的结果 $y_j$. 将 $(x_i, y_1), (x_i, y_2), dots.c, (x_i, y_n)$ 发生的概率相加:

#eqnumL([$P$ 的行和 $p_(i.)$], $ sum_(j=1)^n p_(i j) "为试验 1 中出现" x_i "的概率" p_(i.) . $, 6)

#pagebreak()