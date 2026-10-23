#import "../theme.typ": *

权重最大的是 $b_1$, 因为它的方差 $sigma_1$ 最小. 计算 $hat(bold(x))$ 的方差时, 利用 (13) 式:

#dmath[$ hat(bold(x)) "的方差" quad ( [1 quad 1 quad 1] mat(delim: "[", 9, 0, 0; 0, 4, 0; 0, 0, 1) mat(delim: "[", 1; 1; 1) )^(-1) = 1/14 < 1/9. $]

BLUE 定理 (best linear unbiased estimator 定理, 最优线性无偏估计定理, 也称为高斯-马尔可夫定理) (在本书英文版配套网站上有证明) 说明 $hat(bold(x)) = bold(L) bold(b)$ 是 $bold(A) bold(x) = bold(b)$ 解的最优线性无偏估计. 其他任何无偏估计 $bold(x)^* = bold(L)^* bold(b)$ 都比 $hat(bold(x))$ 具有更大的方差. 所有的无偏估计满足 $bold(L)^* bold(A) = bold(I)$, 因此一个确切的 $bold(A) bold(x) = bold(b)$ 会得到正确的答案 $bold(x) = bold(L)^* bold(b) = bold(L)^* bold(A) bold(x)$.

#hei[注] 有时不将平方误差最小化, 原因之一是: $hat(bold(x))$ 通常有很多 (绝对值) 小的分量, 平方后会变得更小 (近似为 0). 这样就能更好地处理稀疏向量——只有少数几个非零分量. 统计学家更喜欢将非平方误差 $|(bold(b) - bold(A) bold(x))_i|$ 的和最小化. 度量这个误差用的是 $L^1$ 范数而不是 $L^2$ 范数. 因为用到了绝对值, 因此 $hat(bold(x))$ 的方程变成了非线性的 (实际上是分段线性的).

目前已有新算法能够快速计算稀疏的 $hat(bold(x))$, 使用 $L^1$ 范数度量处理误差估计看起来更有前景.

#subsec[卡尔曼滤波]

“卡尔曼滤波” 是关于动态最小二乘法的一个伟大算法. 动态一词意味着陆续获得新的测量结果 $bold(b)_k$, 因此最优估计量 $hat(bold(x))_k$ 不断变化 (基于所有已获得的 $bold(b)_0, bold(b)_1, dots.c, bold(b)_k$). 更重要的是系数矩阵 $bold(A)$ 也会变化. 例如, $hat(bold(x))_2$ 用到了直到时刻 2 时关于整个过程的观测方程和更新方程 (状态方程), 将会是最新解 $bold(x)_k$ 的最优最小二乘估计:

#eqnum($bold(A)_0 bold(x)_0 = bold(b)_0; quad bold(x)_1 = bold(F)_0 bold(x)_0, quad bold(A)_1 bold(x)_1 = bold(b)_1; quad bold(x)_2 = bold(F)_1 bold(x)_1, quad bold(A)_2 bold(x)_2 = bold(b)_2 .$, 14)

卡尔曼理论一次引入一个方程, 虽然每个方程中都存在误差, 但是结合每一个新的方程来更新当前 $bold(x)_k$ 就能得到最优估计量 $hat(bold(x))_k$. 该方法充分利用了已有的历史数据! 新的估计量 $hat(bold(x))_k$ 使用了从 $bold(b)_0$ 到 $bold(b)_(k-1)$ 的历史观测数据和所有的状态方程 $bold(x)_"新" = bold(F)_"旧" bold(x)_"旧"$, 这是一个庞大且不断增长的最小二乘问题.

更重要的一点是, 每一步的最小二乘方程中使用了协方差矩阵 $bold(V)_k$ 对 $bold(b)_k$ 中的误差进行加权, 对于更新方程 $bold(x)_(k+1) = bold(F)_k bold(x)_k$ 中的误差甚至还有协方差矩阵 $bold(C)_k$. 最优的解 $hat(bold(x))_2$ 取决于 $bold(b)_0, bold(b)_1, bold(b)_2$ 和 $bold(V)_0, bold(V)_1, bold(V)_2$ 以及 $bold(C)_1, bold(C)_2$. 求解 $hat(bold(x))_k$ 的方法是对已有的 $hat(bold(x))_(k-1)$ 进行更新.

下面聚焦于不考虑矩阵 $bold(F)_k$ 和协方差矩阵 $bold(C)_k$ 的简化问题, 每一步对 $bold(x)$ 的估计仍与前述一样. 此时如何从 $hat(bold(x))_0$ 获得 $hat(bold(x))_1$?

旧的问题 由 $bold(A)_0 bold(x)_0 = bold(b)_0$ 得到加权方程

#eqnum($bold(A)_0^T bold(V)_0^(-1) bold(A)_0 hat(bold(x))_0 = bold(A)_0^T bold(V)_0^(-1) bold(b)_0 .$, 15)

新的问题 由 $mat(delim: "[", bold(A)_0; bold(A)_1) hat(bold(x))_1 = mat(delim: "[", bold(b)_0; bold(b)_1)$ 得到下列关于 $hat(bold(x))_1$ 的加权方程:

#eqnum($[bold(A)_0^T quad bold(A)_1^T] mat(delim: "[", bold(V)_0^(-1), ; , bold(V)_1^(-1)) mat(delim: "[", bold(A)_0; bold(A)_1) hat(bold(x))_1 = [bold(A)_0^T quad bold(A)_1^T] mat(delim: "[", bold(V)_0^(-1), ; , bold(V)_1^(-1)) mat(delim: "[", bold(b)_0; bold(b)_1) .$, 16)

#pagebreak()