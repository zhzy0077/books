#import "../theme.typ": *

#cont[在区间 $a <= x <= b$ 上的上确界和下确界，很显然有 $m <= A_k <= M #conditionGap (0 <= k <= n)$，而由于对函数 $phi(x)$ 所假设的非负且不增性质，公式 (8) 右边的所有的 $A_k$ 均是以非负因子相乘，所以该公式给出]

#integralMeanDisplay[$ m phi(xi_1) <= S <= M phi(xi_1). $]

#cont[但当 $l_T -> 0$ 时有]

#integralMeanDisplay[$ phi(xi_1) -> phi(a + 0), quad S -> integral_a^b f(x) phi(x) dif x, $]

#cont[由此得]

#integralMeanDisplay[$ m phi(a + 0) <= integral_a^b f(x) phi(x) dif x <= M phi(a + 0), $]

#cont[或者若 $phi(a + 0) != 0$ ($phi(a + 0) = 0$ 的情形当然是平凡的) 则有]

#integralMeanDisplay[$ m <= frac(1, phi(a + 0)) integral_a^b f(x) phi(x) dif x <= M, $]

#cont[但连续的函数 (9) 应当在区间 $[a, b]$ 的某个内点 $xi$ 处取其两确界间的中间值，即这些不等式中间一项的值，由此得]

#eqnum(10)[$ integral_a^b f(x) phi(x) dif x = phi(a + 0) integral_a^xi f(x) dif x quad (a < xi < b). $]

此公式也就构成了我们特定条件下的 (当函数 $phi(x)$ 是非负且不增的函数，而 $f(x)$ 是任意的可积函数) 第二中值定理的内容．“中值” $xi$ 在此很独特地成为一个积分限．

如果依然假设函数 $phi(x)$ 非负，但为不减函数，则令 $x = b - y, phi(b - y) = psi(y)$，就得到

#integralMeanDisplay[$ integral_a^b f(x) phi(x) dif x = integral_0^(b - a) f(b - y) psi(y) dif y. $]

#cont[因为函数 $psi(y)$ 很显然非负且不增 (当 $0 < y < b - a$ 时)，则我们可以对上面这个积分应用公式 (10) 而得]

#integralMeanDisplay[$ integral_0^(b - a) f(b - y) psi(y) dif y &= psi(+0) integral_0^eta f(b - y) dif y \
  &= phi(b - 0) integral_(b - eta)^b f(x) dif x, $]

#cont[其中 $0 < eta < b - a$，因而有 $a < xi = b - eta < b$，也就是说，此时第二积分中值定理的形式是]

#integralMeanDisplay[$ integral_a^b f(x) phi(x) dif x = phi(b - 0) integral_xi^b f(x) dif x. $]

#pagebreak(weak: true)
