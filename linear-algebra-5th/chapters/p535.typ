#import "../theme.typ": *

这里利用了一组正交基! 上式表明, “函数空间”中的向量是正弦函数和余弦函数的线性组合. 在区间 $[2 pi, 4 pi]$ 上, 我们考虑的函数都重复它们在 $[0, 2 pi]$ 上的行为, 即它们是“周期的”, 周期为 $2 pi$.

请记住: 前述蕴涵正交性的函数列是无限的, 即傅里叶级数通常是无穷级数. 前面已规定不考虑向量 $bold(v) = (1, 1, 1, dots)$, 因为其长度为无限大. 现在应避免像

#dmath[$ 1/2 + cos x + cos 2x + cos 3x + dots $]

这样的函数 (这是著名的德尔塔 (delta) 函数 $delta(x)$#footnote[译者注: 也称为狄拉克 (Dirac) 函数.] 的 $pi$ 倍, 它的图形在一个单点处为无限“尖峰”: 在点 $x = 0$ 处, 它的高度 $1/2 + 1 + 1 + dots$ 是无限的. 在 $0 < x < 2 pi$ 内的所有点处, 该级数在某种平均值意义下求和为零.) $delta(x)$ 的积分是 1, 但是 $integral_0^(2 pi) delta^2 (x) dif x = +oo$, 所以德尔塔函数不在希尔伯特空间内.

利用傅里叶级数可计算一般的 $f(x)$ 的长度:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ (f, f) &= integral_0^(2 pi) (a_0 + a_1 cos x + b_1 sin x + a_2 cos 2x + dots)^2 dif x \
  &= integral_0^(2 pi) (a_0^2 + a_1^2 cos^2 x + b_1^2 sin^2 x + a_2^2 cos^2 2x + dots) dif x, \
  norm(f)^2 &= 2 pi a_0^2 + pi (a_1^2 + b_1^2 + a_2^2 + dots). $],
  align(bottom)[$(6)$],
)

上述第二个等号使用了正交性: 所有形如 $cos x cos 2x$ 的乘积的积分为零. 继而得到每个正弦平方和余弦平方的积分, 最后可求出这些积分的值. ($1^2$ 的积分是 $2 pi$, 其他积分均为 $pi$.) 如果将正交基除以各自长度, 就会得到标准正交基:

#dmath[$ 1/sqrt(2 pi), cos x/sqrt(pi), sin x/sqrt(pi), cos 2x/sqrt(pi), dots "为函数空间的一组标准正交基." $]

这些函数都是单位向量. 如果将它们分别与系数 $A_0, A_1, B_1, dots$ 结合起来, 得到一个函数 $F(x)$, 则可以去掉长度公式中的 $2 pi$ 和 $pi$:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ "函数长度 = 向量长度" quad norm(F)^2 = (F, F) = A_0^2 + A_1^2 + B_1^2 + A_2^2 + dots. $],
  align(bottom)[$(7)$],
)

对 $f(x)$ 和 $F(x)$ 有一个关键结论: 当组合系数向量#footnote[译者注: 指 $(a_0, a_1, b_1, a_2, b_2, dots)$ 和 $(A_0, A_1, B_1, A_2, B_2, dots)$.]恰为有限长度时, 函数也为有限长度. 傅里叶级数给出函数希尔伯特空间 $L^2$ 和向量希尔伯特空间 $ell^2$ 之间的一个完美对应: 函数在 $L^2$ 中, 其傅里叶系数在 $ell^2$ 中.

#yaodian[
当向量希尔伯特空间 $ell^2$ 包含 $f(x)$ 的傅里叶系数向量 $bold(v) = (a_0, a_1, b_1, a_2, b_2, dots)$ 时, 函数希尔伯特空间 $L^2$ 恰好包含 $f(x)$. 因此, 两者都必须为有限长度.
]

#hei[例 3]  设 $f(x)$ 是一个“方波函数”: 当 $0 <= x < pi$ 时等于 $+1$, 当 $pi <= x < 2 pi$ 时等于 $-1$, 即永远重复 $+1$ 和 $-1$ 这两个值. $f(x)$ 和正弦函数一样是奇函数, 其傅里叶级数的所有



#pagebreak()