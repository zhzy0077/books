#import "../theme.typ": *

#hei[例 2]  矩阵 $mat(delim: "[", 2, 3 - 3i; 3 + 3i, 5)$ 为埃尔米特矩阵. 由于要求 $s_(i i) = overline(s)_(i i)$, 所以主对角线元素一定是实数. 关于对角线对称的元素是共轭的 $3 + 3i$ 与 $3 - 3i$. 本例将展示埃尔米特矩阵的三条关键性质.

#dingli[如果 $S = S^H$ 且 $z$ 为任意的复列向量, 那么 $z^H S z$ 为实数.]

简洁证明: $z^H S z$ 必为 $1 times 1$ 矩阵. 对其取共轭转置,

#dmath[$ (z^H S z)^H = z^H S^H (z^H)^H = z^H S z. $]

因此数值 $z^H S z$ 等于它的共轭, 从而必为实数.

下面具体讨论上述 “能量” $z^H S z$:

#dmath[$ mat(delim: "[", overline(z)_1, overline(z)_2) mat(delim: "[", 2, 3 - 3i; 3 + 3i, 5) mat(delim: "[", z_1; z_2) = underbrace(2 overline(z)_1 z_1 + 5 overline(z)_2 z_2, "对角元素") + underbrace((3 - 3i) overline(z)_1 z_2 + (3 + 3i) z_1 overline(z)_2, "非对角元素"). $]

上式中 $2 abs(z_1)^2$ 和 $5 abs(z_2)^2$ 对应对角元素, 均为实数. 非对角元素对应的项互为共轭, 它们的和是实数. (两项相加时, 虚部抵消). 故整个 $z^H S z$ 表达式是实的, 从而可推出特征值 $lambda$ 也是实的.

#dingli[埃尔米特矩阵 $S$ 的每一个特征值都是实数.]

#hei[证]  设 $S z = lambda z$. 两边左乘 $z^H$ 得 $z^H S z = lambda z^H z$. 由前可知左边的 $z^H S z$ 为实数, 而右边的长度平方 $z^H z$ 是正实数, 所以比率 $lambda = (z^H S z)/(z^H z)$ 为实数.

由于 $S = S^H$, 例 2 中的特征值为 $lambda = 8, -1$, 均为实数:

#dmath[$ det mat(delim: "[", 2 - lambda, 3 - 3i; 3 + 3i, 5 - lambda) = lambda^2 - 7 lambda + 10 - abs(3 + 3i)^2 = lambda^2 - 7 lambda + 10 - 18 = (lambda - 8)(lambda + 1). $]

#dingli[
  埃尔米特矩阵 $S$ 的特征向量是正交的 (这些特征向量分别对应不同的特征值):

  #align(center)[若 $S z = lambda z$ 且 $S y = beta y$ ($lambda != beta$), 则 $y^H z = 0$.]
]

#hei[证]  用 $y^H$ 左乘 $S z = lambda z$, 并用 $z$ 右乘 $y^H S^H = beta y^H$, 得

#eqnum($bold(y)^H bold(S) bold(z) = lambda bold(y)^H bold(z), quad quad bold(y)^H bold(S)^H bold(z) = beta bold(y)^H bold(z) .$, 5)

两式左边相同, 故 $lambda y^H z = beta y^H z$, 从而 $y^H z$ 必等于零.



#pagebreak()