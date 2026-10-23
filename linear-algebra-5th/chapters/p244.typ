#import "../theme.typ": *

#align(center)[$ bold(A) = mat(delim: "[", 1, 0; 1, 1; 1, 2) , quad bold(x) = mat(delim: "[", C; D) , quad bold(b) = mat(delim: "[", 6; 0; 0) , quad bold(A) bold(x) = bold(b) "不可解" . $]

这些数据与上一节例 3 相同, 我们已求得 $hat(bold(x)) = (5,-3)$. 这对应最优的 $C$ 与 $D$, 因此 $b = 5 - 3t$ 是距离三个已知点最近的直线. 分析 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 因何成立时, 必然要将投影与最小二乘法联系起来.

实际问题中, 动辄有 $m = 100$ 个数据点, 而非 $m = 3$ 个数据点. 它们并不完全匹配任何直线 $b = C + D t$. 例 1 中的数值 $6,0,0$ 夸大了误差, 以使得 $e_1, e_2$ 与 $e_3$ 在图 4.8 中很明显.

#subsec[误差最小化]

如何令误差向量 $bold(e) = bold(b) - bold(A) bold(x)$ 尽可能地小 (指模长最小)? 这个问题很重要, 结论也很优美. 要得到最优 $bold(x)$ (记作 $hat(bold(x))$), 可以通过几何方法 (误差向量 $bold(e)$ 与 $bold(A)$ 的列空间成 90°) 与代数方法: $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$. 用微积分方法也会给出相同的 $hat(bold(x))$: 误差 $||bold(A) bold(x) - bold(b)||^2$ 在点 $hat(bold(x))$ 处各偏导数为零.

#hei[几何方法]　每个向量 $bold(A) bold(x)$ 落在列向量 $(1,1,1)$ 与 $(0,1,2)$ 生成的平面上. 在该平面上, 离 $bold(b)$ 最近的点就是其投影 $bold(p)$.

$bold(A) hat(bold(x))$ 的最优选择就是 $bold(p)$, 对应着最小误差向量 $bold(e) = bold(b) - bold(p)$, 它垂直于 $bold(A)$ 的各列. 由于 $bold(p)$ 在 $bold(A)$ 的列空间中, 故高度分别为 $p_1, p_2, p_3$ 的三个点正好共线. 求拟合直线时, $hat(bold(x))$ 是 $(C,D)$ 的最优选择.

#hei[代数方法]　任意向量 $bold(b)$ 可分解为两部分: 在列空间中的是 $bold(p)$, 与列空间垂直的是 $bold(e)$. 尽管方程组 $bold(A) bold(x) = bold(b)$ 无法求出解来, 但方程组 $bold(A) hat(bold(x)) = bold(p)$ 是可以解出来的 (忽略 $bold(e)$, 并解 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$):

#grid(columns: (1fr, auto),
  align(center)[$bold(A) bold(x) = bold(b) = bold(p) + bold(e) "不可解", quad bold(A) hat(bold(x)) = bold(p) "可解", quad hat(bold(x)) = (bold(A)^T bold(A))^(-1) bold(A)^T bold(b) .$],
  [(1)],
)

由 $bold(A) hat(bold(x)) = bold(p)$ 的解可得最小的误差向量 (即 $bold(e)$): 对于任意 $bold(x)$,

#grid(columns: (1fr, auto),
  align(center)[$||bold(A) bold(x) - bold(b)||^2 = ||bold(A) bold(x) - bold(p)||^2 + ||bold(e)||^2 .$],
  [(2)],
)

这是直角三角形三边所满足的条件——勾股定理. 列空间中的向量 $bold(A) bold(x) - bold(p)$ 垂直于左零空间中的 $bold(e)$. 当取 $bold(x) = hat(bold(x))$ 时, $bold(A) bold(x) - bold(p)$ 缩减为零向量, 得到不能再缩减的最小误差向量 $bold(e) = (e_1,e_2,e_3)$.

注意“最小”的涵义为 $bold(A) bold(x) - bold(b)$ 的长度平方取最小值:

#dingli[最小二乘解 $hat(bold(x))$ 使得 $E = ||bold(A) bold(x) - bold(b)||^2$ 最小.]

图 4.8(a) 展示了距离已知三点最近的直线. 该直线到三个已知点的距离 $e_1, e_2, e_3$ 分别是 $1, -2, 1$, 这些都是竖直距离. 这条最小二乘直线使得 $E = e_1^2 + e_2^2 + e_3^2$ 最小.

图 4.8(b) 在三维空间 ($bold(b), bold(p), bold(e)$ 生成的空间) 中表示了同样的问题. 向量 $bold(b)$ 不在 $bold(A)$ 的列空间中. 这就导致无法求解 $bold(A) bold(x) = bold(b)$. 没有直线同时通过已知的三个点. 最小误差向量是垂



#pagebreak()