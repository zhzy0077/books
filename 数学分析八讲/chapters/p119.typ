#import "../theme.typ": *

#dmath[$ f(b) - f(a) = f'(c)(b - a). $]

一般地，“中值定理”的特征是在其表述中有某个数 $c$（量 $x$ 在 $a$ 与 $b$ 之间的“中间值”）存在．对于它，我们只知道它在区间 $[a, b]$ 之内，而无法更确切地描述它．在这个意义上，柯西公式以及有某种形式余项的泰勒公式都是中值定理．这一类定理也经常用其他几种形式来表述：说成是区间 $[a, a + h]$，而把位置未定的内点表示成 $a + theta h$，定理中关于数 $theta$ 只说有双边不等式 $0 < theta < 1$．在表述中服从双边的不等式 $0 < theta < 1$ 的这种不确定的数的出现也是中值定理的一种典型特征．

中值定理在积分学中的作用在任何情况下都不小于它在微分学中的作用．其中之一所谓的“第一”中值定理你们无疑是很熟悉的．在最简单的情况下，它断言：如果函数 $f(x)$ 在区间 $[a, b]$ 上连续，则有

#eqnum(3)[$ integral_a^b f(x) dif x = f(c)(b - a), $]

#cont[其中 $c$ 是区间 $[a, b]$ 中的某个点．该命题可直接应用拉格朗日定理于区间 $[a, b]$ 上的函数 $F(x) = display(integral_a^x) f(u) dif u$ 来证明．下面的关系式更为一般：]

#eqnum(4)[$ m(b - a) <= integral_a^b f(x) dif x <= M(b - a) quad (a < b), $]

#cont[其中 $m$ 和 $M$ 相应地表示函数 $f(x)$ 在区间 $[a, b]$ 上的下确界和上确界．这个关系式对任何有界的可积函数 $f(x)$ 都成立，但是，即使该函数连续，因为点 $c$ 的位置未知，在用于等式 (3) 估计其中的积分时，其作用也没有不等式 (4) 大．]

“第一”中值定理的更为一般的形式是：如果函数 $phi(x)$ 在区间 $[a, b]$ 上处处非负，则

#eqnum(5)[$ integral_a^b f(x) phi(x) dif x = f(c) integral_a^b phi(x) dif x, $]

#cont[其中 $c$ 仍表示区间 $[a, b]$ 的某个没有准确确定的内点．为方便起见，我们将函数 $f(x)$ 和 $phi(x)$ 当作是连续的并且假设 $phi(x) > 0 med (a <= x <= b)$．为证明公式 (5)（$phi(x) equiv 1$ 的特例就是公式 (3)），只要在区间 $[a, b]$ 上对函数]

#dmath[$ F(x) = integral_a^x f(u) phi(u) dif u, quad Phi(x) = integral_a^x phi(u) dif u, $]

#cont[应用柯西公式就可以得出]

#dmath[$ frac(display(integral_a^b) f(x) phi(x) dif x, display(integral_a^b) phi(x) dif x) = frac(F(b) - F(a), Phi(b) - Phi(a)) = frac(F'(c), Phi'(c)) $]

#pagebreak(weak: true)
