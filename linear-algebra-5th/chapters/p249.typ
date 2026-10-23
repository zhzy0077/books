#import "../theme.typ": *

#hei[$bold(A)$ 各列线性相关时, $hat(bold(x))$ 是什么?]

本章伊始就约定 $bold(A)$ 的各列线性无关, 那么 $bold(A)^T bold(A)$ 可逆. 从而 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 给出 $bold(A) bold(x) = bold(b)$ 的最小二乘解.

如果 $bold(A)$ 各列线性相关, 如何得到最优的 $hat(bold(x))$? 下面是一个具体例子 (图 4.10).

#dmath[$ mat(delim: "[", 1, 1; 1, 1) mat(delim: "[", x_1; x_2) = mat(delim: "[", 3; 1) = bold(b) , quad mat(delim: "[", 1, 1; 1, 1) mat(delim: "[", hat(x)_1; hat(x)_2) = mat(delim: "[", 2; 2) = bold(p) . $]
#dmath[$ bold(A) bold(x) = bold(b) #h(5em) bold(A) hat(bold(x)) = bold(p) $]

#figure(image("../assets/fig-p249-410.png", width: 55%), numbering: none, caption: [图 4.10　$bold(A)$ 各列线性相关的例子.])

测量值 $b_1 = 3$ 和 $b_2 = 1$ 对应同一横坐标 $T$! 直线 $b = C + D t$ 不可能通过这两个点. 将 $bold(b) = (3,1)$ 投影到 $bold(A)$ 列空间中的 $bold(p) = (2,2)$ 应该没错. 由此一个无解的方程组 $bold(A) bold(x) = bold(b)$ 变为有无穷多解的方程组 $bold(A) hat(bold(x)) = bold(p)$. 该情形源自 $bold(A)$ 的各列线性相关以及 $(1,-1)$ 在 $bold(A)$ 的零空间中.

那么应当如何得到最优解 $hat(bold(x))$? 图 4.10 中所有虚线在横坐标 $T$ 处与两个已知点的误差均为 1 和 $-1$. 该误差 $(1,-1) = bold(e) = bold(b) - bold(p)$ 已是最小, 但它并未表明哪条虚线最优.

直觉上应该选择高度为 2 的水平直线. 如果最优直线的方程为 $b = C + D t$, 那么该水平直线对应 $hat(x)_1 = C = 2$ 和 $hat(x)_2 = D = 0$. 但如果该直线为 $b = C t + D$ 的形式呢? 这个形式同样是正确的 (只不过交换了 $C$ 和 $D$ 的位置). 此时水平直线对应 $hat(x)_1 = C = 0$ 和 $hat(x)_2 = D = 2$. 应该没有其他结果了.

在第 7.4 节中, 由 $bold(A)$ 的“广义逆”可以得到 $bold(A) hat(bold(x)) = bold(p)$ 的最短解. 这里的最短解为 $bold(x)^+ = (1,1)$. 这是 $bold(A)$ 的行空间中的特解, 且 $bold(x)^+$ 长度为 $sqrt(2)$. (解 $hat(bold(x)) = (2,0)$ 和 $(0,2)$ 的长度均为 2.) 解 $bold(x)^+$ 的零空间部分可以任选, 不妨令其为零向量.

当 $bold(A)$ 各列线性无关时, 零空间仅含零向量, 而广义逆就是通常的左逆 $bold(L) = (bold(A)^T bold(A))^(-1) bold(A)^T$. 这样写的时候, 利用广义逆可能就得到最优解的方法.

评论　在有关奇异矩阵的 MATLAB 实验中, 返回结果不是 Inf(无穷大) 就是 NaN(非数字) 或者 $10^16$ (一个不便处理的大数字). 每种情形都出现程序警告! 这三种返回结果 Inf 和 NaN 以及 $10^16$ 可能分别来自 $bold(O) bold(x) = bold(b)$ 和 $bold(O) bold(x) = 0$ 以及 $10^(-16) bold(x) = 1$. 它们是三种大难题所对应的具体例子: 奇异且无解, 奇异且多解, 以及非常趋于奇异.

#hei[用抛物线拟合]

当研究抛体运动时, 用直线拟合抛体运动的轨迹将会十分荒谬. 一条抛物线 $b = C + D t + E t^2$ 可以描述球被抛起然后又落下的过程 ($b$ 为时刻 $t$ 球的高度). 实际的运动轨迹并



#pagebreak()