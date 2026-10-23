#import "../theme.typ": *

#hei[3.] 对于 $M = 3$ 次试验, 协方差矩阵 $bold(V)$ 是三阶方阵. 设三个结果是 $x_i, y_j$ 和 $z_k$ 的概率为 $p_(i j k)$. 请模仿 (7) 式写出一个关于矩阵 $bold(V)$ 的公式.

#hei[4.] 对于 $M = 3$ 次独立试验, 均值为 $m_1, m_2, m_3$, 方差为 $sigma_1^2, sigma_2^2, sigma_3^2$, 请问协方差矩阵 $bold(V)$ 是什么?

习题 5—9 是关于已知 $X = x_i$ 时 $Y = y_j$ 发生的条件概率的.

符号 $P(Y = y_j | X = x_i)$ 是当随机变量 $X = x_i$ 时, 随机变量 $Y = y_j$ 的概率. 例如, 若硬币 1 粘在硬币 2 上, 则 $P(Y = "正面" | X = "正面") = 1$.

对于独立抛掷的硬币, $X$ 不能为 $Y$ 提供信息, 即知道 $X$ 的结果对计算 $Y$ 的概率没有作用, 则 $P(Y = "正面" | X = "正面")$ 与 $P(Y = "正面")$ 相同.

#hei[5.] 请说明条件概率的加法法则:

#dmath[$ P(Y = y_j) = sum_i P(Y = y_j | X = x_i). $]

#hei[6.] $n$ 阶概率分布矩阵 $bold(P)$ 中包含了联合概率 $p_(i j) = P(X = x_i "且" Y = y_j)$. 请说明为什么条件概率 $P(Y = y_j | X = x_i) = p_(i j)/(p_(i 1) + p_(i 2) + dots.c + p_(i n)) = p_(i j)/p_(i.)$.

#hei[7.] 如下所示的联合概率矩阵中 $P(X = x_1, Y = y_2) = 0.3$, 请计算 $P(Y = y_2 | X = x_1)$ 与 $P(X = x_1)$:

#grid(
  columns: (auto, 1fr),
  align: (center + horizon, left + horizon),
  column-gutter: 18pt,
  $ bold(P) = mat(delim: "[", p_(11), p_(12); p_(21), p_(22)) = mat(delim: "[", 0.1, 0.3; 0.2, 0.4), $,
  [元素 $p_(i j)$ 相加等于 1, \ 某些 $i, j$ 一定发生.],
)

#hei[8.] 请说明条件概率的乘法法则:

#dmath[$ p_(i j) = P(X = x_i "且" Y = y_j) = P(Y = y_j | X = x_i) P(X = x_i). $]

#hei[9.] 请从习题 8 的乘法法则推导出关于 $p_(i j)$ 的贝叶斯 (Bayes) 定理:

#dmath[$ P(Y = y_j | X = x_i) = (P(X = x_i | Y = y_j) P(Y = y_j))/(P(X = x_i)). $]#footnote[译者注: 英文版中等号左侧为 $P(Y = y_j "且" X = x_i)$, 仅为等号右边的分子.]

“贝叶斯学派” 使用先验信息, “频率学派” 只使用样本信息.



#pagebreak()