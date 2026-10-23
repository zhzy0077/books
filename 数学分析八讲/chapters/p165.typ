#import "../theme.typ": *

#align(center)[#sourceFigure("assets/p165/fig-p165-1.png", [图 34])]

#dmath[$ |y_k - y_0| < M alpha quad (1 <= k <= n) $]

#cont[就够了，但是，证明更强的不等式]

#dmath[$ |y_k - y_0| <= frac(k, n) M alpha quad (1 <= k <= n) $]

#cont[更方便一些. 很显然这个不等式对 $k = 0$ 成立. 如果它对某个 $k < n$ 成立，即点 $(x_k, y_k)$ 属于区域 $D$，那么有 $|f(x_k, y_k)| <= M$. 此时递推公式 (5) 给出]

#eqnum(6)[$ |y_(k+1) - y_0| &<= |y_k - y_0| + frac(alpha, n) |f(x_k, y_k)| \
  &<= frac(k + 1, n) M alpha, $]

#cont[因此我们的不等式对 $k + 1$ 也成立. 这样]

#eqnum(7)[$ |phi_n (x) - y_0| <= M alpha quad (x_0 <= x <= x_0 + alpha), $]

#cont[而整个折线 $y = phi_n (x)$ 都在区域 $D$ 内. 因为这对任何 $n$ 都成立，则特别地，由此得出函数集合 $phi_n (x)(n = 1, 2, dots.c)$ 在区间 $[x_0, x_0 + alpha]$ 上有界.]

2) 设 $x'$ 和 $x''$ 是区间 $[x_0, x_0 + alpha]$ 的两个点，并且为确定起见，设

#dmath[$ x_(k - 1) <= x' < x_k < dots.c < x_(l - 1) <= x'' < x_l, $]

#cont[此时有]

#eqnum(8)[$ &phi_n (x'') - phi_n (x') \
  &= [phi_n (x'') - phi_n (x_(l - 1))] + [phi_n (x_(l - 1)) - phi_n (x_(l - 2))] + dots.c + [phi_n (x_k) - phi_n (x')] \
  &= (x'' - x_(l - 1)) f(x_(l - 1), y_(l - 1)) + frac(alpha, n) {f(x_(l - 2), y_(l - 2)) + dots.c + f(x_k, y_k)} \
  &+ (x_k - x') f(x_(k - 1), y_(k - 1)). $]

#cont[从这个基本关系我们现在可得一系列推论.]

我们首先来证明函数 $phi_n (x)$ 的集合 $(n = 1, 2, dots.c)$ 在区间 $[x_0, x_0 + alpha]$ 上等度连续. 实际上，关系式 (8) 给出

#dmath[$ |phi_n (x'') - phi_n (x')| $]

#pagebreak(weak: true)
