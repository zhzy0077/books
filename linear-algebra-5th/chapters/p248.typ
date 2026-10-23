#import "../theme.typ": *

全误差 $E$, 即下述平方和:

#align(center)[$ E(bold(x)) = ||bold(A) bold(x) - bold(b)||^2 = sum_(i=1)^m (C + D t_i - b_i)^2 . $]

令偏导数 $(partial E)/(partial C)$ 与 $(partial E)/(partial D)$ 均为零, 可得 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$.

通常最小二乘问题涉及的未知量不止 2 个. 例如, 用最优抛物线做拟合需要 $n = 3$ 个系数 $C,D,E$ (见后续内容). 一般地, 拟合 $m$ 个数据点用到 $n$ 个参数 $x_1, x_2, dots.c, x_n$, 对应的矩阵 $bold(A)$ 有 $n$ 列, 且 $n < m$. 由 $||bold(A) bold(x) - bold(b)||^2$ 的偏导数得出 $n$ 个方程构成 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$. 平方式的导数是线性的, 这就是最小二乘方法被普遍应用的原因.

例 2　当点的横坐标 $t_i$ 相加为零时, $bold(A)$ 的各列正交.

设在横坐标 $t = -2,0,2$ 处 $b$ 的取值分别为 $1,2,4$. 这些横坐标相加为零, 那么 $bold(A)$ 的两列点积为零, 即 $(1,1,1)$ 正交于 $(-2,0,2)$:

#align(center)[$ cases(C + D dot.op (-2) = 1, C + D dot.op 0 = 2, C + D dot.op 2 = 4), quad "即" quad bold(A) bold(x) = mat(1, -2; 1, 0; 1, 2) mat(C; D) = mat(1; 2; 4) . $]

当 $bold(A)$ 的两列正交时, $bold(A)^T bold(A)$ 将是对角矩阵:

#grid(columns: (1fr, auto),
  align(center)[$bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b) quad "为" quad mat(3, 0; 0, 8) mat(C; D) = mat(7; 6) .$],
  [(9)],
)

要点: 因为 $bold(A)^T bold(A)$ 为对角矩阵, 所以可分别解出 $C = 7/3$ 和 $D = 6/8$. $bold(A)^T bold(A)$ 中的零元素对应 $bold(A)$ 的两个正交列的点积. 对角矩阵 $bold(A)^T bold(A)$ 对角线上元素为 $m = 3$ 和 $t_1^2 + t_2^2 + t_3^2 = 8$, 该矩阵实际上和单位矩阵一样便于计算.

正交列应用起来非常方便, 为此值得通过减去横坐标平均值 $hat(t) = 1/m (t_1 + t_2 + dots.c + t_m)$ 来平移各横坐标. 如果初始横坐标是 $1,3,5$, 那么它们的平均值为 $hat(t) = 3$. 平移后的横坐标 $T = t - hat(t) = t - 3$ 加起来为零!

#grid(columns: (auto, 1fr), column-gutter: 2em, align: (left + horizon, center + horizon),
  [$ T_1 = 1 - 3 = -2, \ T_2 = 3 - 3 = 0, \ T_3 = 5 - 3 = 2, $],
  [$ bold(A)_"新" = mat(1, T_1; 1, T_2; 1, T_3) , quad bold(A)_"新"^T bold(A)_"新" = mat(3, 0; 0, 8) . $],
)

此时 $C$ 和 $D$ 来自简单方程 (9), 最优直线 $b = C + D T$ 也就是

#align(center)[$ b = C + D(t - hat(t)) = C + D(t - 3) . $]

本节的习题 30 进一步给出了 $C$ 与 $D$ 的公式.

上述例子充分体现了下一节即将介绍的“格拉姆-施密特 (Gram-Schmidt) 方法”: 预先将各列正交化, 则 $bold(A)_"新"^T bold(A)_"新"$ 为对角矩阵, 从而易得 $hat(bold(x))_"新"$.



#pagebreak()
