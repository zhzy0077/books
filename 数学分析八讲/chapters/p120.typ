#import "../theme.typ": *

#dmath[$ = frac(f(c) phi(c), phi(c)) = f(c), $]

#cont[这就是公式 (5)．]

第二中值定理则是更为精细的解析工具，我们现在来研究它．该定理的对象也是积分

#eqnum(6)[$ integral_a^b f(x) phi(x) dif x, $]

#cont[但它仅当被积函数的两个因子之一是区间 $[a, b]$ 上的单调函数时才成立．设函数 $phi(x)$ 对 $a < x < b$ 为非负且不增．像通常一样，我们对区间 $[a, b]$ 进行分划 $T$ 并保留我们通常的记号．我们来证明积分 (6) 是和]

#eqnum(7)[$ sum_(k=1)^n phi(xi_k) integral_(x_(k-1))^(x_k) f(x) dif x $]

#cont[当 $l_T -> 0$ 时的极限．实际上，我们以 $mu$ 来表示函数 $|f(x)|$ 在区间 $[a, b]$ 上的上确界，且以 $Delta$ 来表示和 (7) 与积分 (6) 的差，我们由函数 $phi(x)$ 的单调不增的假设得到]

#dmath[$ |Delta| = |sum_(k=1)^n integral_(x_(k-1))^(x_k) [phi(xi_k) - phi(x)] f(x) dif x| \
  lt.eq.slant sum_(k=1)^n [phi(x_(k-1)) - phi(x_k)] mu (x_k - x_(k-1)) \
  lt.eq.slant mu l_T [phi(a) - phi(b)], $]

#cont[因而有]

#dmath[$ Delta -> 0 quad ("当" l_T -> 0 "时"). $]

注意到这一点，我们现在用阿贝尔引理（第四讲最后一节）来改写和 (7)．令

#dmath[$ integral_a^(x_k) f(x) dif x = A_k quad (k = 0, 1, 2, dots.h.c, n), $]

#cont[我们得到]

#bottomEqnum(8)[$ S &= sum_(k=1)^n phi(xi_k) integral_(x_(k-1))^(x_k) f(x) dif x = sum_(k=1)^n phi(xi_k)(A_k - A_(k-1)) \
    &= sum_(k=1)^(n-1) A_k [phi(xi_k) - phi(xi_(k+1))] + A_n phi(xi_n); $]

#cont[现在分别以 $M$ 和 $m$ 来表示函数]

#eqnum(9)[$ integral_a^x f(u) dif u $]

#pagebreak(weak: true)
