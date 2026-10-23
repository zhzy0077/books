#import "../theme.typ": *

#grid(columns: (auto, 1fr), column-gutter: 24pt, row-gutter: 8pt,
  align(horizon)[#block(fill: luma(240), inset: (x: 8pt, y: 6pt), radius: 2pt)[用任意数字 $t$ 乘第 1 行 \ 就是用 $t$ 乘行列式]],
  align(horizon)[$mat(delim: "|", t a, t b; c, d) = t mat(delim: "|", a, b; c, d),$],
  align(horizon)[#block(fill: luma(240), inset: (x: 8pt, y: 6pt), radius: 2pt)[按第 1 行元素将行列式分拆成 \ 矩阵 $A$ 与 $A'$ 的行列式之和]],
  align(horizon)[$mat(delim: "|", a + a', b + b'; c, d) = mat(delim: "|", a, b; c, d) + mat(delim: "|", a', b'; c, d).$],
)

在第一种情况下, 等号两边都等于 $t a d - t b c$, 可提出因子 $t$; 在第二种情况下, 等号两边都是 $a d + a' d - b c - b' c$. 当 $A$ 是 $n$ 阶方阵时, 这些性质也适用于行列式中一行的变化.

#align(center)[$|A| = mat(delim: "|", 4, 8, 8; 0, 1, 1; 0, 0, 1) = 4 mat(delim: "|", 1, 2, 2; 0, 1, 1; 0, 0, 1), quad mat(delim: "|", 4, 8, 8; 0, 1, 1; 0, 0, 1) = mat(delim: "|", 4, 0, 0; 0, 1, 1; 0, 0, 1) + mat(delim: "|", 0, 8, 8; 0, 1, 1; 0, 0, 1).$]

性质 3 本身并没有说明行列式是多少 (上例中 $det A$ 是 4).

综合数乘与加法就能得到一行元素的任意线性组合. 用于换行的性质 2 可将这一行交换到第 1 行以及再次交换回来.

性质 3 并不意味着 $det 2I = 2 det I$. $2I$ 是矩阵的数乘, 必须每一行都乘 2, 因此每一行都需提出因子 2. 对二阶单位矩阵就有 2 个因子:

#align(center)[$mat(delim: "|", 2, 0; 0, 2) = 2^2 = 4, quad mat(delim: "|", t, 0; 0, t) = t^2.$]

这就像面积和体积, 长方形的边长变成原来的 2 倍, 那么面积就变成原来的 4 倍; $n$ 维立方体的棱长变成原来的 $t$ 倍, 则体积变成原来的 $t^n$ 倍. 这种联系并不是偶然的——后面将会学习为什么行列式等于体积.

特别需要注意性质 1—性质 3, 它们完全确定了 $det A$ 的数值.#footnote[译者注: 这三条性质也是行列式的一种定义.] 基于这三条性质就能得到计算 $n$ 阶行列式的公式 (有点复杂). 性质 4—性质 10 会使得行列式的计算更加简便.

#hei[性质 4]　若 $A$ 中有两行元素对应相等, 则 $det A = 0$.

#grid(columns: (auto, 1fr), column-gutter: 24pt,
  align(horizon)[#block(fill: luma(240), inset: (x: 8pt, y: 6pt), radius: 2pt)[相同的行]],
  align(horizon)[对二阶方阵检验: $mat(delim: "|", a, b; a, b) = 0.$],
)

性质 4 是性质 2 的推论. (这里利用已知性质而非二阶行列式的计算公式来分析.) 互换元素对应相等的两行, 行列式 $D$ 应该改变正负符号. 又因矩阵不变, 故行列式也保持不变. 满足 $-D = D$ 的唯一数值是 $D = 0$——这就是所求的行列式. (注意: 在布尔 (Boole) 代数中上述推导不成立, 因为 $-1 = 1$, 此时 $D$ 由性质 1、性质 3、性质 4 来定义.)

有两行元素对应相等的方阵 $A$ 不可逆, 因为由性质 4 可知此时 $det A = 0$. 但是即使没有相同的行出现, 也可能因行列式等于零而使得矩阵奇异! 性质 5 将成为不改变 $det A$ 的前提下开展行变换 (类似于消元) 的一个关键.

#pagebreak()