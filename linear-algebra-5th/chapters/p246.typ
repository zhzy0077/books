#import "../theme.typ": *

#dingliC[$bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 时, $||bold(A) bold(x) - bold(b)||^2$ 的各偏导数为零.]

方程组的解是 $C = 5$ 和 $D = -3$, 因而 $b = 5 - 3t$ 是最优直线——它离三个点是最近的. 当 $t = 0,1,2$ 时, 这条直线对应点高度为 $5,2,-1$ (向量 $bold(p)$), 而不是 $6,0,0$ (向量 $bold(b)$). 误差为 $1,-2,1$, 这就是向量 $bold(e)$ 的分量!

#subsec[最小二乘法的全局图]

本书的关键图形显示了矩阵的四个子空间以及矩阵左乘向量的本质. 在第 4.1 节的图 4.3 中, 左边的向量 $bold(x)$ 映射为右边的 $bold(b) = bold(A) bold(x)$, 且 $bold(x)$ 分解为 $bold(x)_r + bold(x)_n$. 方程组 $bold(A) bold(x) = bold(b)$ 有无穷多个解.

而在本节, 情形恰恰与之相反. $m times n$ 方程组 $bold(A) bold(x) = bold(b)$ 没有解. 这里不再分解 $bold(x)$, 而是分解 $bold(b) = bold(p) + bold(e)$. 图 4.9 展示了最小二乘法的全局图. 我们不再求解 $bold(A) bold(x) = bold(b)$, 而是求解 $bold(A) hat(bold(x)) = bold(p)$. 误差 $bold(e) = bold(b) - bold(p)$ 在所难免.

#figure(image("../assets/fig-p246-49.png", width: 100%), numbering: none, caption: [图 4.9　投影 $bold(p) = bold(A) hat(bold(x))$ 离 $bold(b)$ 最近, 因此 $hat(bold(x))$ 使得 $E = ||bold(b) - bold(A) bold(x)||^2$ 最小.])

注意, 零空间 $N(bold(A))$ 非常小——只含一个点. 由于 $bold(A)$ 的各列线性无关, $bold(A) bold(x) = 0$ 的唯一解是 $bold(x) = 0$. 此时 $bold(A)^T bold(A)$ 是可逆的, 方程组 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 完全确定了最优向量 $hat(bold(x))$. 误差 $bold(e)$ 满足 $bold(A)^T bold(e) = 0$.

第 7 章将给出完整的全局图——包括全部四个子空间. 每个 $bold(x)$ 分解为 $bold(x)_r + bold(x)_n$, 而每个 $bold(b)$ 分解为 $bold(p) + bold(e)$. 最优解在行空间中, 即 $hat(bold(x)) = hat(bold(x))_r$. 由于无法控制 $bold(e)$, 也不需要零空间中的 $bold(x)_n$, 这样就得到了 $bold(A) hat(bold(x)) = bold(p)$.

#subsec[用直线拟合]

用直线拟合是最小二乘法最为直接的应用. 设有 $m > 2$ 个点, 它们大体沿一条直线分布. 横坐标为 $t_1, t_2, dots.c, t_m$ 的点的高度 (即纵坐标) 分别为 $b_1, b_2, dots.c, b_m$. 最优直线 $b = C + D t$ 通常不过这些点, 竖直距离分别为 $e_1, e_2, dots.c, e_m$. 找不到恰好过这些点的直线时, 可以考虑寻求将 $E = e_1^2 + e_2^2 + dots.c + e_m^2$ 最小化的最小二乘直线.

如图 4.8 所示, 本节例 1 考察的是三个点的情形. 现在讨论 $m$ 个点 ($m$ 可以很大) 的情形. $hat(bold(x))$ 的两个分量仍记为 $C$ 与 $D$.



#pagebreak()