#import "../theme.typ": *

现在需要求解新的问题而不是旧的问题, 但是需对旧的解 $hat(bold(x))_0$ 进行处理以便在计算 $hat(bold(x))_1$ 时得到利用. 对 $hat(bold(x))_0$ 进行如下更新:

#eqnumL([利用卡尔曼更新从 $hat(bold(x))_0$ 得 $hat(bold(x))_1$], $ hat(bold(x))_1 = hat(bold(x))_0 + bold(K)_1 (bold(b)_1 - bold(A)_1 hat(bold(x))_0) . $, 17)

更新的校正量中, $bold(b)_1 - bold(A)_1 hat(bold(x))_0$ 是旧状态 $hat(bold(x))_0$ 与新测量结果 $bold(b)_1$ 之间的差值, 再用卡尔曼增益矩阵 $bold(K)_1$ 左乘. 计算 $bold(K)_1$ 的公式来自对 (15) 式与 (16) 式中解 $hat(bold(x))_0$ 与 $hat(bold(x))_1$ 的对比. 当基于新数据 $bold(b)_1$ 将 $hat(bold(x))_0$ 更新为 $hat(bold(x))_1$ 时, 也将协方差矩阵 $bold(W)_0$ 更新为 $bold(W)_1$. 对来自 (13) 式的 $bold(W)_0 = (bold(A)_0^T bold(V)_0^(-1) bold(A)_0)^(-1)$, 将它的逆矩阵更新为 $bold(W)_1^(-1)$:

#dingliC[
  #grid(
    columns: (auto, 1fr, auto),
    column-gutter: 14pt,
    row-gutter: 0.8em,
    align: (left + horizon, center + horizon, right + horizon),
    [$hat(bold(x))_1$ 中误差的协方差矩阵 $bold(W)_1$], [$bold(W)_1^(-1) = bold(W)_0^(-1) + bold(A)_1^T bold(V)_1^(-1) bold(A)_1$], [(18)],
    [卡尔曼增益矩阵 $bold(K)_1$], [$bold(K)_1 = bold(W)_1 bold(A)_1^T bold(V)_1^(-1)$], [(19)],
  )
]

这是卡尔曼滤波的核心. 注意 $bold(W)_k$ 的重要性, 这些矩阵用于度量整个更新过程的可靠性, 其中向量 $hat(bold(x))_k$ 基于 $bold(b)_0$ 到 $bold(b)_k$ 的特定测量值来估计当前状态.

当状态 $bold(x)_k$ 也在改变时 (基于矩阵 $bold(F)_k$), 有的专著用一整章或整本书来讨论此时的动态卡尔曼滤波. 核心思想是, 使用 $bold(F)$ 来预测 $bold(x)_k$, 然后使用新数据 $bold(b)$ 进行校正.

上面是关于递归最小二乘法的介绍: 加入新的数据 $bold(b)_k$ 并更新 $hat(bold(x))$ 与 $bold(W)$, 最优趋势估计基于所有的数据及其协方差矩阵.

#align(center)[#image("../assets/fig-p612-icon.png", width: 3.2%)]

#xiti[习题集 12.3]

#ti[1.][对同一个随机变量 $X$ 进行两次测量得到两个方程 $x = b_1$ 和 $x = b_2$. 设测量均值都是零且方差分别是 $sigma_1^2$ 和 $sigma_2^2$, 误差相互独立: 协方差矩阵 $bold(V)$ 是对角元素为 $sigma_1^2$ 和 $sigma_2^2$ 的对角矩阵. 请将两个方程合并写成 $bold(A) bold(x) = bold(b)$ ($bold(A)$ 是 $2 times 1$ 矩阵) 的形式. 模仿例 1, 基于 $b_1$ 和 $b_2$ 计算最优估计 $hat(bold(x))$:

#dmath[$ hat(bold(x)) = (b_1/sigma_1^2 + b_2/sigma_2^2)/(1/sigma_1^2 + 1/sigma_2^2), quad "E"[hat(bold(x)) hat(bold(x))^T] = (1/sigma_1^2 + 1/sigma_2^2)^(-1). $]]

#ti[2.][(a) 在习题 1 中, 假设第二次测量值 $b_2$ 十分精确, 它的方差 $sigma_2 -> 0$. 请问当 $sigma_2$ 为零时, 最优估计 $hat(bold(x))$ 是什么?

(b) 相反的情况是 $sigma_2 -> infinity$ 且没有 $b_2$ 的信息. 请问现在基于 $b_1$ 和 $b_2$ 的最优估计 $hat(bold(x))$ 是什么?]

#ti[3.][若随机变量 $X$ 和 $Y$ 相互独立, 概率密度分别为 $p_1(x)$ 和 $p_2(y)$, 均值分别为 $m_1$ 和 $m_2$, 则 $p(x, y) = p_1(x) p_2(y)$. 请通过将二重积分化为单次积分的乘积 (即累次积分) 来证明

#dmath[$ integral.double_(R^2) p(x, y) dif x dif y = 1, quad integral.double_(R^2) (x + y) p(x, y) dif x dif y = m_1 + m_2. $]]

#pagebreak()