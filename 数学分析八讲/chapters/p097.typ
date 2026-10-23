#import "../theme.typ": *

#cont[换言之，由此定理即有]

#eqnum(12)[$ f(a + h) = f(a) + h f'(a) + frac(h^2, 2!) f''(a) + dots.c + frac(h^n, n!) f^((n))(a) + o(h^n). $]

设

#dmath[$ f(a + h) - P_n (h) = phi(h), $]

#cont[则要证明我们的命题只需证明#footnote[为解决我们的问题，一方面应证明当 $P_n (h)$ 取以上形式的多项式时，$f(a + h) - P_n (h) = o(h^n)$，另一方面还要证明，如果换成另外的 $Q_n (h)$，则 $f(a + h) - Q_n (h)$ 不会是 $o(h^n)$．本书只证了前一部分．后一部分容易证明：因为 $f(a + h) - Q_n (h) = f(a + h) - P_n (h) + P_n (h) - Q_n (h) = P_n (h) - Q_n (h) + o(h^n)$．因为 $P_n != Q_n$，故 $P_n (h) - Q_n (h) = a h^m + dots.c + c h^n, a != 0, m <= n$，因此 $P_n (h) - Q_n (h) = O(h^m)$，从而 $f(a + h) - Q_n (h) = O(h^m)$，这与假设 $f(a + h) - Q_n (h) = o(h^n)$ 矛盾．—— 译者注]]

#eqnum("12′")[$ frac(phi(h), h^n) -> 0, quad "当" h -> 0 "时". $]

为此，我们注意

#dmath[$ phi(h) = f(a + h) - f(a) - h f'(a) - dots.c - frac(h^n, n!) f^((n))(a), $]

#dmath[$ phi'(h) = f'(a + h) - f'(a) - h f''(a) - dots.c - frac(h^(n-1), (n - 1)!) f^((n))(a), $]

#dmath[$ dots.c , $]

#dmath[$ phi^((n-2))(h) = f^((n-2))(a + h) - f^((n-2))(a) - h f^((n-1))(a) - frac(h^2, 2) f^((n))(a), $]

#dmath[$ phi^((n-1))(h) = f^((n-1))(a + h) - f^((n-1))(a) - h f^((n))(a). $]

#cont[由此得 $phi(0) = phi'(0) = dots.c = phi^((n-2))(0) = 0$．因为当 $h = 0$ 时函数 $h^n$ 的直到 $n - 2$ 阶的导数都变为零，而其 $n - 1$ 阶导数等于 $n! h$，故由洛必达法则有]

#dmath[$ lim_(h -> 0) frac(phi(h), h^n) = lim_(h -> 0) frac(phi^((n-1))(h), n! h), $]

#cont[只要右边极限存在．但]

#dmath[$ lim_(h -> 0) frac(phi^((n-1))(h), n! h) &= frac(1, n!) lim_(h -> 0) {frac(f^((n-1))(a + h) - f^((n-1))(a), h) - f^((n))(a)} \
  &= 0. $]

#cont[因为依定义 $f^((n))(a)$ 存在，这就证明了 $(12')$ 式，因而也就完成了泰勒公式 (12) 的推导．]

当然，下一步有意义的是要找出公式 (12) 的“余项”$o(h^n)$ 的方便的表达式，以便在需要时用以估计其可能的精确度．

#pagebreak(weak: true)
