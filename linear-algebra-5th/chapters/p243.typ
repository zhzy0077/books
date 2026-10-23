#import "../theme.typ": *

#align(center, subsec[4.3　最小二乘估计])

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #hei[1.] 解 #box(stroke: 0.6pt, inset: 2pt)[$bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$] 可得 $bold(b)$ 到 $bold(A)$ 列空间上的投影 $bold(p) = bold(A) hat(bold(x))$.

  #hei[2.] 当 $bold(A) bold(x) = bold(b)$ 无解时, $hat(bold(x))$ 为“最小二乘解”, 即 $||bold(b) - bold(A) hat(bold(x))||^2$ 达到最小值.

  #hei[3.] 令 $E = ||bold(A) bold(x) - bold(b)||^2$ 关于各 $x_i$ 的偏导数为零, 即 $(partial E)/(partial x_i) = 0$, 也可以得到 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$.

  #hei[4.] 为了用直线去拟合点 $(t_1,b_1), (t_2,b_2), dots.c, (t_m,b_m)$, 所列方程组的系数矩阵 $bold(A)$ 的列向量为 $(1,1,dots.c,1)$ 和 $(t_1,t_2,dots.c,t_m)$.

  #hei[5.] 对上述 $bold(A)$, $bold(A)^T bold(A)$ 为 $2 times 2$ 矩阵 $mat(m, sum t_i; sum t_i, sum t_i^2)$, 而 $bold(A)^T bold(b)$ 是向量 $mat(sum b_i; sum t_i b_i)$.
]

$m times n$ 线性方程组 $bold(A) bold(x) = bold(b)$ ($bold(A)$ 为 $m times n$ 矩阵) 往往是无解的, 其原因通常是方程过多, 即矩阵 $bold(A)$ 的行数大于列数, 亦即方程个数大于未知数个数 ($m$ 大于 $n$). 此时 $n$ 个列向量只生成了 $m$ 维空间的一小部分. 除非列方程组时利用的所有测量数据都是精确无误的, 否则 $bold(b)$ 将落在 $bold(A)$ 的列空间之外, (化简方程组的) 消元法会产生矛盾方程, 导致求解过程中断. 但不能仅仅因为测量数据包含噪声 (测量误差) 就停止求解!

再次提醒: 误差向量 $bold(e) = bold(b) - bold(A) bold(x)$ 并非总能化为零向量. 当 $bold(e)$ 为零向量时, 对应的 $bold(x)$ 为 $bold(A) bold(x) = bold(b)$ 的精确解. 当 $bold(e)$ 的长度取最小值时, $hat(bold(x))$ 就是最小二乘解. 本节的目的是计算 $hat(bold(x))$ 并应用这种方法来解决实际问题.

上一节重点介绍了投影向量 $bold(p)$, 本节着重分析最小二乘解 $hat(bold(x))$. 两者通过 $bold(p) = bold(A) hat(bold(x))$ 相关联. 基本方程仍是 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$. 这里有一个简捷但不甚正式的方法来得到“正规方程”:

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #grid(columns: (1fr, auto),
    [当 $bold(A) bold(x) = bold(b)$ 无解时, 用 $bold(A)^T$ 左乘两边并求解],
    [$bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ .],
  )
]

#hei[例 1]　最小二乘法的一个重要应用就是求 $m$ 个点的拟合直线. 以三个点为例: 求出距离三个点 $(0,6), (1,0)$ 和 $(2,0)$ 最近的直线 (仅考虑竖直距离).

过上述三点的直线 $b = C + D t$ 并不存在. 实际上, 这里应求出满足三个方程的两个系数 $C$ 与 $D$, 此时 $n = 2$ 及 $m = 3$, 且方程表示在 $t = 0,1,2$ 处分别对应给定值 $b = 6,0,0$:

#grid(columns: (auto, 1fr), column-gutter: 2em, row-gutter: 6pt,
  [$t = 0$], [第一个点在直线 $b = C + D t$ 上, 即 $C + D dot.op 0 = 6$;],
  [$t = 1$], [第二个点在直线 $b = C + D t$ 上, 即 $C + D dot.op 1 = 0$;],
  [$t = 2$], [第三个点在直线 $b = C + D t$ 上, 即 $C + D dot.op 2 = 0$.],
)

由于 $bold(b) = (6,0,0)$ 并非 $(1,1,1)$ 和 $(0,1,2)$ 这两列的线性组合, 所以该 $3 times 2$ 线性方程组无解. 由方程组写出 $bold(A), bold(x)$ 以及 $bold(b)$:



#pagebreak()