#import "../theme.typ": *

非零对角线每步下移一格, 因此 $e^(bold(A) t)$ 的级数展开式在第四项后均为零矩阵:

#grid(columns: (auto, 1fr), column-gutter: 1.5em, align: (right + horizon, center + horizon),
  [与解法一中\ 相同的 $e^(bold(A) t)$],
  [$ e^(bold(A) t) = bold(I) + bold(A) t + ((bold(A) t)^2)/2 + ((bold(A) t)^3)/6 = mat(delim: "[", 1, , , ; t, 1, , ; t^2, 2t, 1, ; t^3, 3t^2, 3t, 1) . $],
)

利用级数运算可知, $e^bold(A)$ 的平方是 $e^(2 bold(A))$. 但 $e^bold(A) e^bold(B)$, $e^bold(B) e^bold(A)$ 与 $e^(bold(A) + bold(B))$ 可能是全然不同的 ($bold(A) bold(B)$ 可能不等于 $bold(B) bold(A)$).

#align(center)[#image("../assets/fig-p362-icon.png", width: 3.2%)]

#xiti[习题集 6.3][

#hei[1.] 求出两组 $lambda$ 和 $bold(x)$, 使得 $bold(u) = e^(lambda t) bold(x)$ 是

$ (dif bold(u))/(dif t) = mat(delim: "[", 4, 3; 0, 1) bold(u) $

的解. 满足初值条件 $bold(u)(0) = (5, -2)$ 的组合 $bold(u) = c_1 e^(lambda_1 t) bold(x)_1 + c_2 e^(lambda_2 t) bold(x)_2$ 是什么?

#hei[2.] 设 $bold(u) = (y, z)$, 利用回代求解习题 1, 先解出 $z$ 再解出 $y$:

$ "由" z(0) = -2 "解" (dif z)/(dif t) = z, quad "接着由" y(0) = 5 "解" (dif y)/(dif t) = 4y + 3z. $

关于 $y$ 的解将是 $e^(4t)$ 与 $e^t$ 的线性组合. 特征值 $lambda$ 就是 4 和 1.

#hei[3.] (a) 如果矩阵 $bold(A)$ 的每列分量相加等于零, 那么 $lambda = 0$ 是 $bold(A)$ 的特征值, 为什么?

(b) 当矩阵 $bold(A)$ 的每列中对角元素均为负数, 而非对角元素均为正数, 且每列元素相加和为零时, $bold(u)' = bold(A) bold(u)$ 将是一个 “连续” 的马尔可夫方程. 求出如下 $bold(A)$ 的特征值和特征向量, 以及当 $t -> +infinity$ 时解 $bold(u)(t)$ 的稳定状态:

$ (dif bold(u))/(dif t) = mat(delim: "[", -2, 3; 2, -3) bold(u) = bold(A) bold(u), quad "初值为" bold(u)(0) = mat(delim: "[", 4; 1). quad bold(u)(+infinity) "是什么?" $

#hei[4.] 两个房间分别容纳了 $v(0) = 30$ 人和 $w(0) = 10$ 人, 连通两个房间的门是打开的. 两个房间之间的人员流动率等于差 $v - w$:

$ cases((dif v)/(dif t) = w - v, (dif w)/(dif t) = v - w.) $

证明总人数 $v + w$ 为常值 (40 人). 设 $bold(u) = (v, w)$, 将上述方程改写为 $(dif bold(u))/(dif t) = bold(A) bold(u)$ 的形式, 并求矩阵 $bold(A)$ 的特征值和特征向量. 在 $t = 1$ 和 $t = +infinity$ 时, $v$ 和 $w$ 的值是多少?

]

#pagebreak()