#import "../theme.typ": *

#hei[加权最小二乘法]

第 4 章对不相容方程组 $bold(A) bold(x) = bold(b)$ 介绍了最小二乘法, 并选择 $hat(bold(x))$ 来将误差 $norm(bold(b) - bold(A) bold(x))^2$ 最小化, 这就引出了最小二乘方程 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$. 最优的 $bold(A) hat(bold(x))$ 是 $bold(b)$ 到 $bold(A)$ 的列空间中的投影. 但是这个距离的平方 $E = norm(bold(b) - bold(A) bold(x))^2$ 是最小化分析中正确的误差度量吗?

如果 $bold(b)$ 中各分量的误差是相互独立的随机变量, 均值 $m = 0$, 方差 $sigma^2 = 1$, 且均服从正态分布, 此时使用最小二乘法. 如果误差不是相互独立的随机变量或者它们的方差不相等, 此时使用加权最小二乘法. 本节将展示误差的有效度量为 $E = (bold(b) - bold(A) bold(x))^T bold(V)^(-1)(bold(b) - bold(A) bold(x))$. 关于最优解 $hat(bold(x))$ 的方程使用了协方差矩阵 $bold(V)$:

#dingliC[#eqnumL([加权最小二乘法], $ bold(A)^T bold(V)^(-1) bold(A) hat(bold(x)) = bold(A)^T bold(V)^(-1) bold(b) . $, 10)]

最重要的例子是 $bold(b)$ 中有 $m$ 个相互独立的误差, 这些误差的方差是 $sigma_1^2, sigma_2^2, dots.c, sigma_m^2$. 由独立性可知, $bold(V)$ 是一个对角矩阵. $bold(V)^(-1)$ 提供了有效的权重系数 $1/sigma_1^2, 1/sigma_2^2, dots.c, 1/sigma_m^2$, 通过对 $bold(b)$ 中的误差加权可使方差为 1:

#eqnumL([$bold(b)$ 中的独立误差\ 加权最小二乘法], $ "最小化" quad E = sum_(i=1)^m ((bold(b) - bold(A) bold(x))_i^2)/(sigma_i^2) . $, 11)

上式中 $(bold(b) - bold(A) bold(x))_i$ 为 $bold(b) - bold(A) bold(x)$ 的第 $i$ 个分量. 通过对误差加权处理能够 “白化” 噪声. 白噪声是服从标准高斯分布 $N(0, 1)$ 的独立误差的一种简要描述, 其均值为零且方差为 $sigma^2 = 1$.

以下是利用 (10) 式和 (11) 式获得最优解 $hat(bold(x))$ 的步骤:

(1) 对方程组 $bold(A) bold(x) = bold(b)$ ($m$ 个方程, $n$ 个未知数, $m > n$, 无解), 右侧的每个 $b_i$ 的均值为零、方差为 $sigma_i^2$, 且相互独立;

(2) 对第 $i$ 个方程两边同时除以 $sigma_i$, 使得每个 $b_i/sigma_i$ 的方差为 1, 则 $bold(A) bold(x) = bold(b)$ 变为 $bold(V)^(-1\/2) bold(A) bold(x) = bold(V)^(-1\/2) bold(b)$, 其中对角矩阵 $bold(V)^(-1\/2)$ 的对角元素为 $1/sigma_1, 1/sigma_2, dots.c, 1/sigma_m$;

(3) 对这些加权方程应用通常的最小二乘法, 其中 $bold(A) -> bold(V)^(-1\/2) bold(A)$ 且 $bold(b) -> bold(V)^(-1\/2) bold(b)$:

#eqnum($ (bold(V)^(-1\/2) bold(A))^T (bold(V)^(-1\/2) bold(A)) hat(bold(x)) = (bold(V)^(-1\/2) bold(A))^T bold(V)^(-1\/2) bold(b) quad "是" quad bold(A)^T bold(V)^(-1) bold(A) hat(bold(x)) = bold(A)^T bold(V)^(-1) bold(b) . $, 12)

$bold(V)^(-1)$ 中的 $1/sigma^2$ 使得更可靠的方程 (更小的 $sigma$) 获得更大的权重, 这是加权最小二乘法的关键. 使用这些对角权重系数 (未耦合方程) 是适用于 $b_i$ 中独立误差的最常见、最简单的处理方式. 当测量误差不相互独立时, $bold(V)$ 不再是对角矩阵——但 (12) 式仍然是正确的加权方程组.

在实际应用中, 计算所有的协方差是一件繁重的工作, 而对角矩阵 $bold(V)$ 在计算上更加简便.



#pagebreak()