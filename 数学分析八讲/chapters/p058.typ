#import "../theme.typ": *

#cont[很显然是对区间 $[a, x_2]$ 的和 $S$ 中的一个, 因而它不可能超过这些和的上确界 $V(x_2)$, 也就是说, 我们得到]

#proofDisplay[$ V(x_1) - epsilon + |f(x_2) - f(x_1)| < & S(a, x_1) + |f(x_2) - f(x_1)| \
  & = S(a, x_2) lt.eq.slant V(x_2), $]

#cont[由此得到]

#dmath[$ V(x_2) - V(x_1) > |f(x_2) - f(x_1)| - epsilon, $]

#cont[因为 $epsilon$ 任意小, 故由此可得 (5) 式, 于是定理得证.]

#pagebreak(weak: true)
