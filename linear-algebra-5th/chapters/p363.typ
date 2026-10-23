#import "../theme.typ": *

#hei[5.] 倒转习题 4 中人群的扩散过程为 $(dif bold(u))/(dif t) = -bold(A) bold(u)$:

#dmath[$ cases((dif v)/(dif t) = v - w, (dif w)/(dif t) = w - v,) $]

则总人数 $v + w$ 仍为常值. 既然 $bold(A)$ 变为 $-bold(A)$, 那么特征值如何变化? 再证明 $v(t)$ 由 $v(0) = 30$ 增加到无穷大 (设人数可取负值).

#hei[6.] 如下矩阵 $bold(A)$ 的特征值为实数, 而 $bold(B)$ 的特征值为复数:

#dmath[$ bold(A) = mat(delim: "[", a, 1; 1, a), quad bold(B) = mat(delim: "[", b, -1; 1, b) quad (a "与" b "均为实数"). $]

求出 $a$ 与 $b$ 满足什么条件时, $(dif bold(u))/(dif t) = bold(A) bold(u)$ 和 $(dif bold(v))/(dif t) = bold(B) bold(v)$ 的全部解都在 $t -> +infinity$ 时趋于零向量, 也就是所有特征值 $lambda$ 的实部 $"Re" lambda < 0$.

#hei[7.] 设 $bold(P)$ 为 $R^2$ 中到直线 $y = x$ 上的投影矩阵, 其特征值是什么? 设 $(dif bold(u))/(dif t) = -bold(P) bold(u)$ (注意负号), 求出满足初值条件 $bold(u)(0) = (3, 1)$ 的解 $bold(u)(t)$ 在 $t -> +infinity$ 时的极限.

#hei[8.] 设兔子的数量 $r$ 既因自身迅速繁衍而增长 (增长率为 $6r$), 也受狼捕食而折损 (折损率为 $-2w$), 而狼的数量 $w$ 总是按以下模式增长 (若后一式中 $w$ 改为 $-w^2$, 则狼的数量增长受限):

#dmath[$ cases((dif r)/(dif t) = 6r - 2w, (dif w)/(dif t) = 2r + w.) $]

求出系数矩阵的特征值和特征向量. 如果 $r(0) = w(0) = 30$, 那么时刻 $t$ 的兔子与狼的种群规模是多少? 长时间之后, 兔子与狼的数量之比趋于多少?

#hei[9.] (a) 将向量 $(4, 0)$ 写为矩阵 $bold(A) = mat(delim: "[", 0, 1; -1, 0)$ 的两个特征向量 $bold(x)_1, bold(x)_2$ 的线性组合 $c_1 bold(x)_1 + c_2 bold(x)_2$, 其中

#dmath[$ bold(A) bold(x)_1 = mat(delim: "[", 0, 1; -1, 0) mat(delim: "[", 1; i) = i mat(delim: "[", 1; i), quad bold(A) bold(x)_2 = mat(delim: "[", 0, 1; -1, 0) mat(delim: "[", 1; -i) = -i mat(delim: "[", 1; -i). $]

(b) 初值为 $bold(u)(0) = (4, 0)$ 的方程 $(dif bold(u))/(dif t) = bold(A) bold(u)$ 的解为 $c_1 e^(i t) bold(x)_1 + c_2 e^(-i t) bold(x)_2$. 将 $e^(i t) = cos t + i sin t$ 以及 $e^(-i t) = cos t - i sin t$ 代入, 从而求出 $bold(u)(t)$.

#pagebreak()