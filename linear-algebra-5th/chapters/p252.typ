#import "../theme.typ": *

(2) 最小的最大误差要求 $C = 20$, 即 0 与 40 的平均值.

(3) 最小误差和要求 $C = 0$. 当 $C$ 由零开始变大时, 误差和 $9|C| + |40 - C|$ 将会增加. 最小误差和来自测量值的中位数 ($0, dots.c, 0, 40$ 的中位数为零). 许多统计学者认为最小二乘解太容易受到像 $b_10 = 40$ 这样异常值的影响, 因此他们更倾向于考虑最小误差和. 但对应的方程组就变成非线性的了.

现在求通过 $(1,0), (2,0), dots.c, (9,0), (10,40)$ 这十个点的最小二乘直线 $b = C + D t$:

#dmath[$ bold(A)^T bold(A) = mat(delim: "[", 10, sum t_i; sum t_i, sum t_i^2) = mat(delim: "[", 10, 55; 55, 385), quad bold(A)^T bold(b) = mat(delim: "[", sum b_i; sum t_i b_i) = mat(delim: "[", 40; 400). $]

上述结果由 (8) 式得到. 进而 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 给出 $C = -8$ 和 $D = 24/11$.

如果将 $bold(b) = (0, 0, dots.c, 40)$ 各分量乘 3 后, 再加上 30, 得到 $bold(b)_"新" = (30, 30, dots.c, 150)$, 此时 $C$ 与 $D$ 将如何变化? 线性性质确保了可通过缩放调整得到新的 $C$ 与 $D$: $bold(b)$ 乘 3 将使得 $C$ 与 $D$ 都乘 3, 全部 $b_i$ 加上 30 将使得 $C$ 加上 30.

#hei[4.3 B]  求抛物线 $b = C + D t + E t^2$, 使得其到横坐标分别为 $t = -2, -1, 0, 1, 2$ 与高度向量为 $bold(b) = (0, 0, 1, 0, 0)$ 的点距离最近 (最小二乘误差). 首先根据抛物线通过五个点, 写出关于未知数 $bold(x) = (C, D, E)$ 的五个方程 $bold(A) bold(x) = bold(b)$. 由于满足条件的抛物线不存在, 所以方程组无解. 于是求解 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$.

可以预料 $D = 0$. 请读者思考为什么最优抛物线关于 $t = 0$ 是对称的? 在 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 中, 关于 $D$ 的第 2 个方程会与第 1, 3 方程解耦 (即前者仅含 $D$, 后者不含 $D$).

解 五个方程 $bold(A) bold(x) = bold(b)$ 对应一个长方形范德蒙德 (Vandermonde) 矩阵 $bold(A)$:

#dmath[$ cases(C + D dot (-2) + E dot (-2)^2 = 0, C + D dot (-1) + E dot (-1)^2 = 0, C + D dot 0 + E dot 0^2 = 1, C + D dot 1 + E dot 1^2 = 0, C + D dot 2 + E dot 2^2 = 0), quad bold(A) = mat(delim: "[", 1, -2, 4; 1, -1, 1; 1, 0, 0; 1, 1, 1; 1, 2, 4), $]

#dmath[$ bold(A)^T bold(A) = mat(delim: "[", 5, 0, 10; 0, 10, 0; 10, 0, 34). $]

$bold(A)^T bold(A)$ 中零元素表明 $bold(A)$ 的第 2 列与第 1, 3 列正交. 这一点可由 $bold(A)$ 直接观察得到 (横坐标 $-2, -1, 0, 1, 2$ 关于原点对称分布). 抛物线 $b = C + D t + E t^2$ 中最优 $C, D, E$ 来自 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$, 并且 $D$ 与 $C$ 和 $E$ 解耦:

#dmath[$ mat(delim: "[", 5, 0, 10; 0, 10, 0; 10, 0, 34) mat(delim: "[", C; D; E) = mat(delim: "[", 1; 0; 0) quad "推出" quad cases(C = 34/70, D = 0\, " (正如所料)", E = -10/70). $]



#pagebreak()