#import "../theme.typ": *

#leadLabel[阿贝尔定理]若级数 (14) 当 $x = r > 0$ 时收敛，则它在区间 $0 <= x <= r$ 上一致收敛.

#leadLabel[证明]令 $epsilon$ 为任意的正数. 由柯西准则，对充分大的 $n$ 以及任何 $k > 0$，都有

#dmath[$ abs(sum_(i=n+1)^(n+k) a_i r^i) < epsilon. $]

为简便计，令 $sum_(i=n+1)^(n+k) a_i r^i = sigma_k (sigma_0 = 0)$，因而有 $abs(sigma_k) < epsilon (k = 0, 1, 2, dots.c)$. 当 $0 <= x <= r$ 时有

#dmath[$ sum_(i=n+1)^(n+k) a_i x^i &= sum_(i=n+1)^(n+k) a_i r^i (x/r)^i = sum_(i=1)^k a_(i+n) r^(i+n) (x/r)^(i+n) \
  &= sum_(i=1)^k (sigma_i - sigma_(i-1)) (x/r)^(i+n), $]

而由已证的引理（也由等式 $sigma_0 = 0$）得

#dmath[$ abs(sum_(i=n+1)^(n+k) a_i x^i) &= abs(sum_(i=1)^k sigma_i {(x/r)^(n+i) - (x/r)^(n+i+1)} + sigma_k (x/r)^(n+k+1)) \
  &<= sum_(i=1)^k abs(sigma_i) (x/r)^(n+i) (1 - x/r) + abs(sigma_k) (x/r)^(n+k+1) \
  &<= epsilon {(1 - x/r) sum_(i=1)^k (x/r)^(n+i) + (x/r)^(n+k+1)} \
  &= epsilon (x/r)^(n+1) <= epsilon. $]

因此由柯西准则得到级数 (14) 收敛. 对其取当 $k -> oo$ 时的极限，我们从后一不等式得出：对充分大的 $n$ 有

#dmath[$ abs(r_n (x)) <= epsilon quad (0 <= x <= r); $]

#cont[这即表明级数 (14) 在闭区间 $[0, r]$ 上一致收敛.]

必须指出，从级数 (14) 当 $x = r$ 时的收敛性得出其在整个区间 $(-r, r)$ 上的一致收敛性是不正确的. 例如级数

#dmath[$ 1 - frac(x, 1) + frac(x^2, 2) - frac(x^3, 3) + dots.c $]

#cont[当 $x = 1$ 时收敛，而且显然当 $x = -1$ 时发散，它在其整个收敛区间 $(-1, 1)$ 上并不一致收敛.]

马上可以明白，关于幂级数的最重要的问题之一便是由级数的已给的系数 $a_n$ 来确定其收敛半径 $r$. 当然，你们可能知道：正项的数项级数收敛性的初等法则使得有可能在某些特殊的假定之下解决此问题.

#pagebreak(weak: true)
