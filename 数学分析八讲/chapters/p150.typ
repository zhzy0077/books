#import "../theme.typ": *

#align(center)[$ &= integral_(-pi)^pi f^2 (x) dif x - pi { frac(a_0^2, 2) + sum_(k=1)^n (a_k^2 + b_k^2) } \
  &+thin pi { frac((alpha_0 - a_0)^2, 2) + sum_(k=1)^n [(alpha_k - a_k)^2 + (beta_k - b_k)^2] } . $]

#cont[右边只有最后一项与数字 $alpha_k, beta_k$ 有关．因此我们只需要找出这最后一项的最小值．因为所有的项都非负, 所以只有当所有这些项都变为零时, 即当]

#dmath[$ alpha_0 = a_0, wide alpha_k = a_k, wide beta_k = b_k wide (k = 1, 2, dots.c, n) $]

#cont[时, 它才得到其最小值 (零)．这也就是说, 我们所提问题的答案是: 在所有的 $n$ 阶三角多项式中, 已知的有界可积函数 $f(x)$ 的最好的平均近似式是这样一个三角多项式, 其系数恰是该函数的傅里叶系数．我们以 $P_n (x)$ 来表示这个三角多项式, 则有]

#align(center)[$ &integral_(-pi)^pi [f(x) - P_n (x)]^2 dif x \
  &= integral_(-pi)^pi f^2 (x) dif x - pi { frac(a_0^2, 2) + sum_(k=1)^n (a_k^2 + b_k^2) } . $]

#cont[这个关系式同时还证明了一个很重要的命题: 因为左边很显然是非负的, 则对任何 $n$ 有]

#dmath[$ frac(a_0^2, 2) + sum_(k=1)^n (a_k^2 + b_k^2) lt.eq.slant frac(1, pi) integral_(-pi)^pi f^2 (x) dif x. $]

#cont[因为此不等式的右端与 $n$ 无关, 故左边的和当 $n$ 增加时是有界的．换言之, 对任一个有界可积函数 $f(x)$ 级数]

#dmath[$ sum_(k=1)^oo (a_k^2 + b_k^2) $]

#cont[收敛, 特别地, 由此得知, 每一个这样的函数的傅里叶系数 $a_k, b_k$ 当 $k -> oo$ 时都趋近于零．]

这些完全是由初等方法得到的结果, 对于傅里叶级数理论有着很大的意义．

#sec[三角函数系的封闭性]

正如我们在幂级数理论中看到的, 同一个级数有可能是无穷多个不同函数的麦克劳林级数．对傅里叶级数, 类似的现象也是可能的吗？这个问题同三角函数系 (5) 的一个重要性质紧密联系．如果级数 (4) 是两个在区间 $[-pi, pi]$ 上连续#footnote[如果不添加任何连续性的要求, 所提问题的解决则是平凡的: 因为很显然两个只在某一个点上互不相同的函数的所有的傅里叶系数都彼此相同.]的且互

#pagebreak(weak: true)
