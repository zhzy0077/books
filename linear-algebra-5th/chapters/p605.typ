#import "../theme.typ": *

向量 $bold(m)_X$ 包含 $X$ 的 $M$ 个分量 ($M = 2$) 的均值, 向量 $bold(m)_Z$ 包含 $Z = bold(A) bold(X)$ 的 $K$ 个分量 ($K = 3$) 的均值. 联系 $bold(X)$ 和 $bold(Z)$ 两者的均值的矩阵一定满足线性性质: $bold(m)_Z = bold(A) bold(m)_X$. 此外, $a X + b Y$ 的均值是 $a m_X + b m_Y$.

当 $bold(V)_X$ 是一个二阶单位矩阵时, 关于 $bold(Z) = (X, Y, a X + b Y)$ 的协方差矩阵是 $bold(V)_Z = bold(A) bold(A)^T$:

#dmath[$ bold(V)_Z = mat(delim: "[", 1, 0; 0, 1; a, b) mat(delim: "[", 1, 0, a; 0, 1, b) = mat(delim: "[", 1, 0, a; 0, 1, b; a, b, a^2 + b^2). $]

对上式的说明: 因为 $X$ 和 $Y$ 相互独立, 因此 $sigma_(X Y) = 0$. 从而 $X$ 与 $a X + b Y$ 的协方差是 $a$, $Y$ 与 $a X + b Y$ 的协方差是 $b$, 正好来自 $a X + b Y$ 的两个独立部分. 最后, (18) 式给出了 $a X + b Y$ 的协方差: 利用 $bold(V)_Z = bold(A) bold(V)_X bold(A)^T$,

#dmath[$ sigma_(a X + b Y)^2 = sigma_(a X)^2 + sigma_(b Y)^2 + 2 sigma_(a X, b Y) = a^2 + b^2 + 0. $]

三阶方阵 $bold(V)_Z$ 是奇异矩阵, 它的行列式是 $a^2 + b^2 - a^2 - b^2 = 0$. 第三个分量 $Z = a X + b Y$ 完全与 $X$ 和 $Y$ 相关, $bold(V)_Z$ 的秩只有 2.

#hei[GPS 案例] GPS (全球定位系统) 卫星的信号包含了它的发出时间, 接收器的时钟给出到达时间. 接收器将信号传播时间乘光速, 就能得到与卫星的距离. 基于四颗或者更多颗卫星的距离可以定位接收器的位置 (利用最小二乘法!).

一个问题: 光速在电离层会改变, 但是对附近的接收器而言, 修正量几乎都是一样的. 若一个接收器位于已知位置, 就能对这个位置取差分. 差分 GPS 能降低误差的方差:

#dmath[$ "差分矩阵为" bold(A) = [1 quad -1], quad "协方差矩阵为" bold(V)_Z = bold(A) bold(V)_X bold(A)^T, $]

#dmath[$ bold(V)_Z = [1 quad -1] mat(delim: "[", sigma_1^2, sigma_(12); sigma_(12), sigma_2^2) mat(delim: "[", 1; -1) = sigma_1^2 - 2 sigma_(12) + sigma_2^2. $]

消除光速的误差后可以达到厘米级的定位精度. (在博尔 (Borre) 和作者所著 #emph[Algorithms for Global Positioning] 一书的第 320 页有关键原理.) GPS 的世界就是关于时间、空间和惊人精度的.

#align(center)[#image("../assets/fig-p605-icon.png", width: 3.2%)]

#xiti[习题集 12.2]

#ti[1.][(a) 设抛硬币出现正面的概率是 $p$, 则出现反面的概率是 $1 - p$, 计算对应的方差 $sigma^2$ (出现反面记为 0, 出现正面记为 1);

(b) $N$ 次独立的抛硬币试验结果 (0 或 1) 之和就是在 $N$ 次试验后出现正面的次数, 利用关于和的方差的 (16) 式—(18) 式可知 $sigma^2 = \_\_\_\_\_\_.$]

#ti[2.][试验 1 的结果 $x_1, x_2, dots.c, x_n$ 与试验 2 的结果 $y_1, y_2, dots.c, y_n$ 之间的协方差 $sigma_(k l)$ 是什么? 计算公式看起来像 (2) 式中的 $sigma_(12)$, 则协方差矩阵 $bold(V)$ 中 (3, 5) 位置和 (5, 3) 位置的元素满足 $sigma_(35) = sigma_(53)$.]

#pagebreak()