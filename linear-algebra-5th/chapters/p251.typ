#import "../theme.typ": *

$bold(A)^T bold(b)$. 那么最小二乘抛物线会保持不变且所有误差会落在第四个点上吗? 不太可能! 最小二乘法会平衡四个点上的误差, 从而得到关于 $C,D,E$ 的三个方程.

#figure(image("../assets/fig-p251-411.png", width: 100%), numbering: none, caption: [图 4.11　(a) 在 $t = 0,1,2$ 处抛物线准确拟合意味着 $bold(p) = bold(b)$ 且 $bold(e) = 0$; 第四点偏离抛物线, 使得 $m > n$, 从而需要最小二乘法: $bold(b)$ 投影到 $C(bold(A))$ 上; (b) $bold(b)$ 不是 $bold(A)$ 各列的线性组合.])

#barHead[■ 要点回顾]

#hei[1.] 对 $m times n$ 方程组 $bold(A) bold(x) = bold(b)$, $||bold(A) bold(x) - bold(b)||^2 = bold(x)^T bold(A)^T bold(A) bold(x) - 2 bold(x)^T bold(A)^T bold(b) + bold(b)^T bold(b)$ 就是 $m$ 个方程 ($m > n$) 的误差平方和 $E$, 最小二乘解 $hat(bold(x))$ 是其最小值点.

#hei[2.] 最优 $hat(bold(x))$ 来自正规方程组 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$, 它使 $E$ 取到最小值.

#hei[3.] 用直线 $b = C + D t$ 拟合 $m$ 个点时, 由正规方程组解出 $C$ 与 $D$.

#hei[4.] 最优直线在各横坐标处的高度构成向量 $bold(p) = (p_1, p_2, dots.c, p_m)$. 与数据点的竖直距离构成误差向量 $bold(e) = (e_1, e_2, dots.c, e_m)$. 一个关键方程为 $bold(A)^T bold(e) = 0$.

#hei[5.] 如果尝试用 $n$ 个函数的线性组合 (指 $n - 1$ 次多项式) 来拟合 $m$ 个点 ($n < m$), $m$ 个方程 $bold(A) bold(x) = bold(b)$ 往往不可解. 而 $n$ 个方程 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 给出最小二乘解——取得最小均方误差 (mean square error, 简称 MSE) 的线性组合.

#barHead[■ 范例解析]

#hei[4.3 A]　已知横坐标 $t = 1,2,dots.c,9$ 处的九个测量值 $b_1$ 至 $b_9$ 均为零, $t = 10$ 处的测量值 $b_10 = 40$ 为异常值. 根据误差 $E$ 的三种标准, 求出拟合十个点 $(1,0), (2,0), dots.c, (9,0), (10,40)$ 的最优水平直线 $y = C$:

(1) 最小二乘 $E_2 = e_1^2 + e_2^2 + dots.c + e_10^2$ (此时关于 $C$ 的正规方程是线性的);

(2) 最小的最大误差 $E_oo = |e_"max"|$;

(3) 最小误差和 $E_1 = |e_1| + |e_2| + dots.c + |e_10|$.

解　(1) 用水平直线对 $0,0,dots.c,0,40$ 的最小二乘拟合为 $C = 4$:

#dmath[$ bold(A) "为全" 1 "列", quad bold(A)^T bold(A) = 10, quad bold(A)^T bold(b) = sum_(i=1)^10 b_i = 40, quad "因此" 10 C = 40 . $]

#pagebreak()