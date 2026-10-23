#import "../theme.typ": *

非一条完美的抛物线, 但整个抛体运动理论都始于这个近似.

若伽利略 (Galileo) 从比萨斜塔上抛下一块石头, 石头将加速下落, 下落距离包含了二次项 $1/2 g t^2$ (伽利略的研究表明, 如果忽略空气阻力, 那么下落距离与物体质量无关). 如果未能考虑这个 $t^2$ 项, 那么永远无法将卫星送上轨道. 但即使对于含二次项 $t^2$ 的非线性函数, 未知量 $C,D,E$ 仍然是线性的! 用最优抛物线来拟合各点仍然是线性代数问题.

问题　用抛物线 $b = C + D t + E t^2$ 拟合横坐标为 $t_1, t_2, dots.c, t_m$ 且高度为 $b_1, b_2, dots.c, b_m$ 的各点.

解　当点数 $m > 3$ 时, 完全拟合的 $m$ 个方程一般不可解:

#grid(columns: (1fr, auto),
  align(center)[$cases(C + D t_1 + E t_1^2 = b_1, C + D t_2 + E t_2^2 = b_2, dots.v, C + D t_m + E t_m^2 = b_m) , quad "即" quad bold(A) bold(x) = bold(b) , quad "其中" quad m times 3 "矩阵" quad bold(A) = mat(1, t_1, t_1^2; 1, t_2, t_2^2; dots.v, dots.v, dots.v; 1, t_m, t_m^2) .$],
  [(10)],
)

最小二乘法　最优抛物线 $b = C + D t + E t^2$ 选择的 $hat(bold(x)) = (C,D,E)$ 满足正规方程 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$.

上述问题可否转化为一个投影问题? (读者自行作答) $bold(A)$ 的列空间维数为 $\_\_\_\_$. $bold(b)$ 的投影为 $bold(p) = bold(A) hat(bold(x))$, 即用系数 $C,D,E$ 将 $bold(A)$ 的三列组合起来. 第一个点处的误差为 $e_1 = b_1 - C - D t_1 - E t_1^2$. 总的平方误差为 $e_1^2 + \_\_\_\_$. 如果读者更喜欢用微积分方法最小化, 那么可对 $E$ 分别关于 $\_\_\_\_, \_\_\_\_, \_\_\_\_$ 求偏导数. 当 $hat(bold(x)) = (C,D,E)$ 满足 $3 times 3$ 线性方程组 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 时, 这三个偏导数将为零.

第 10.5 节有更多最小二乘法的应用, 最重要的一个就是傅里叶 (Fourier) 级数——逼近函数而非向量. 需要最小化的函数由平方误差之和 $e_1^2 + e_2^2 + dots.c + e_m^2$ 转变为平方误差的积分.

例 3　设过三点 $(0,b), (1,0), (2,0)$ 的抛物线为 $b = C + D t + E t^2$, 则可以得到关于 $C,D,E$ 的线性方程组

#grid(columns: (1fr, auto),
  align(center)[$cases(C + D dot.op 0 + E dot.op 0^2 = 6, C + D dot.op 1 + E dot.op 1^2 = 0, C + D dot.op 2 + E dot.op 2^2 = 0) .$],
  [(11)],
)

这就是 $bold(A) bold(x) = bold(b)$, 它可以确切地解出来. 三个数据点对应三个方程和一个方阵. 解为 $bold(x) = (C,D,E) = (6,-9,3)$. 图 4.11(a) 中, 过已知三点的抛物线为 $b = 6 - 9t + 3t^2$.

上述结论如何从投影的视角来理解? 矩阵 $bold(A)$ 有三列, 它们的线性组合生成了整个 $R^3$. 投影矩阵为单位矩阵, $bold(b)$ 的投影就是 $bold(b)$, 误差为零. 既然已求解 $bold(A) bold(x) = bold(b)$, 就不必再解 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$. 当然对前式两边左乘 $bold(A)^T$ 就得到后式, 但已无必要这样做.

图 4.11 也描绘了第四个点 (横坐标 $t_4$, 高度 $b_4$). 如果该点落在抛物线上, 新的方程组 $bold(A) bold(x) = bold(b)$ (包括四个方程) 依旧可解. 当第四个点不在抛物线上时, 可转而求解 $bold(A)^T bold(A) hat(bold(x)) =$



#pagebreak()
