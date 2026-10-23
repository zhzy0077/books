#import "../theme.typ": *

#dmath[$ integral_(n-1)^n f(u) dif u >= f(n) >= integral_n^(n+1) f(u) dif u, $]

#cont[所以]

#dmath[$ integral_0^n f(u) dif u >= sum_(k=1)^n f(k) >= integral_1^(n+1) f(u) dif u, $]

#cont[此不等式直接表明: 当 $n -> oo$ 时量 $limits(sum)_(k=1)^n f(k)$ 及 $limits(integral)_0^n f(u) dif u$ 要么都有界, 要么都无界, 此即定理所要证明的. 因为这两种情况下有界性等同于有限极限的存在性.]

这个准则应用于一些个别的级数, 正如我们已经指出的, 在很多情况下这是很方便的. 例如设 $u_n = n^(-alpha)(alpha > 0)$. 令

#dmath[$ f(x) = cases(
  1 & quad (0 <= x <= 1)\, ,
  x^(-alpha) & quad (1 <= x < +oo).
) $]

#cont[很显然是, 我们得到了一个满足定理所有要求的函数. 但当 $a != 1$ 时]

#dmath[$ integral_0^A f(x) dif x = 1 + integral_1^A x^(-alpha) dif x = 1 + frac(A^(1-alpha) - 1, 1 - alpha), $]

#cont[由此得出: 由积分准则, 当 $alpha > 1$ 时级数收敛, 当 $alpha < 1$ 时级数发散. 最后, 当 $alpha = 1$ 时]

#dmath[$ integral_0^A f(x) dif x = 1 + integral_1^A (dif x)/x = 1 + ln A -> oo $]

#cont[(当 $A -> +oo$ 时), 即调和级数 $limits(sum)_(n=1)^oo display(frac(1, n))$ 发散.]

再来看第二个准则.

#theoremLead[若 $u_n >= u_(n+1) > 0 (n >= 1)$, 则级数 (1) 要收敛, 当且仅当级数]

#eqnum(4)[$ u_1 + 2u_2 + 4u_4 + 8u_8 + dots.h.c + 2^n u_(2n) + dots.h.c $]

#cont[也收敛.]

#proofLead[由级数 (1) 的项单调减少得]

#dmath[$ 2^(n-1) u_(2^(n-1)) <= sum_(k=2^(n-1)+1)^(2^n) u_k >= 2^(n-1) u_(2^n), $]

#cont[(不等式中间部分和的项数是 $2^(n-1)$), 由此得]

#dmath[$ sum_(k=0)^(n-1) 2^k u_(2^k) <= sum_(k=1)^(2^n) u_k >= 1/2 sum_(k=1)^n 2^k u_(2^k). $]

#cont[这个不等式直接表示: 级数 (1) 和级数 (4) 的部分和要么同时有界, 要么同时无界, 由此得定理成立.]

当 $u_n = n^(-alpha)(alpha > 0)$ 时, 级数 (4) 的一般项是 $2^(n(1-alpha))$, 因此由后一定理, 级数 $limits(sum)_(n=1)^oo n^(-alpha)$ 当 $alpha > 1$ 时收敛且当 $alpha <= 1$ 时发散.

#pagebreak(weak: true)

// UNCERTAIN: “但当 $a != 1$ 时” 一处, 原书正文印作拉丁斜体 a (非 alpha), 按原图逐字保留.
// UNCERTAIN: 式 (4) 末项原书下标印作平排的 “2n”($2^n u_(2n)$), 与上下文语义 $2^n u_(2^n)$ 不一致; 按原图逐字保留.
