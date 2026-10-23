#import "../theme.typ": *

#cont[它是由上面给出的级数通过逐项求导而得出的，并且它也在开区间 $(-r, r)$ 上收敛. 在证明中需要始终注意到，无论是 $f(x)$ 的导数的存在性，还是级数 (1) 的收敛性，我们都没有预先给定，因此这两件事实都是应当在讨论过程中证明的.]

设 $|x| < r$ 且设 $rho$ 是介于 $|x|$ 与 $r$ 之间的任意的数. 当 $|h| < rho - |x|$ 时我们有 #box[$|x+h| < rho < r$]，因而有

#dmath[$ f(x+h) = sum_(n=0)^oo a_n (x+h)^n, $]

#cont[由此得]

#dmath[$ frac(f(x+h) - f(x), h) &= sum_(n=0)^oo a_n frac((x+h)^n - x^n, h) \
  &= S_N (h) + R_N (h), $]

#cont[其中设]

#dmath[$ &S_N (h) = sum_(n=0)^N a_n frac((x+h)^n - x^n, h), \
  &R_N (h) = sum_(n=N+1)^oo a_n frac((x+h)^n - x^n, h). $]

#cont[因为]

#dmath[$ abs(frac((x+h)^n - x^n, (x+h) - x)) &= abs((x+h)^(n-1) + (x+h)^(n-2) dot x + dots.c + x^(n-1)) \
  &< rho^(n-1) + rho^(n-2) abs(x) + dots.c + abs(x)^(n-1) \
  &= frac(rho^n - abs(x)^n, rho - abs(x)) < frac(rho^n, rho - abs(x)), $]

#cont[故当 $|h| < rho - |x|$ 时有]

#dmath[$ abs(R_N (h)) < frac(1, rho - abs(x)) sum_(n=N+1)^oo abs(a_n) rho^n . $]

#cont[但 $rho < r$，因而上面不等式的右边，作为收敛级数 $limits(sum)_(n=0)^oo abs(a_n) rho^n$ 的余项，对充分大的 $N$ 会变得小于任何任意小的正数 $epsilon$. 这也就是说，如果 $N$ 充分大且 $|h| < rho - |x|$，则有]

#dmath[$ abs(R_N (h)) < epsilon, $]

#cont[因而有]

#dmath[$ S_N (h) - epsilon < frac(f(x+h) - f(x), h) < S_N (h) + epsilon. $]

#cont[如果我们现在固定 $N$ 不变而令 $h$ 趋近于零，则和 $S_N (h)$ 很显然地将以和]

#pagebreak(weak: true)
