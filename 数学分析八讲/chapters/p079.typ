#import "../theme.typ": *

例如，若当 $n -> oo$ 时存在极限 $limits(overline(lim))_(n -> oo) root(n, abs(a_n)) = l$，则相应于 $0 < l < +oo, l = 0$ 及 $l = +oo$，有 $r = frac(1, l), +oo$ 或 $0$. 但是，可以指出一个在任何情况下解决此问题的方法而不要求 $limits(overline(lim))_(n -> oo) root(n, abs(a_n))$ 存在.

#leadLabel[定理]设 $limits(overline(lim))_(n -> oo) root(n, abs(a_n)) = l$，则此时

#dmath[$ r = mat(delim: #(("{", none)), align: #left,
  #([$frac(1, l),$]), "当" 0 < l < +oo ",";
  #([$0,$]), "当" l = +oo ",";
  #([$+oo,$]), "当" l = 0.
) $]

因为上极限（有限或无限）对任何序列都存在，则此定理实际上在一切情况下解决了所提出的问题.

在证明之前，我们注意到，如果数 $l$ 是某个序列的上极限，则对任何 $epsilon > 0$，从该序列的某个位置开始的所有项都要小于 $l + epsilon$. 反之，在该序列的充分远的地方，总有数大于 $l - epsilon$.

#leadLabel[定理的证明]1) 设 $0 < l < +oo$，$r = frac(1, l)$. 需要证明级数 (14) 当 $0 < x < r$ 时收敛而当 $x > r$ 时发散.

1a) 设 $0 < x < r = frac(1, l)$，因而有 $l x < 1$. 很显然可以选择 $epsilon (> 0)$ 充分小，使得 #box[$(l + epsilon) x < 1$]. 从数 $l$ 的定义得出：对充分大的 $n$ 有

#dmath[$ root(n, abs(a_n)) < l + epsilon, quad abs(a_n) < (l + epsilon)^n. $]

于是有

#dmath[$ abs(a_n) x^n < [(l + epsilon) x]^n; $]

因为 $(l + epsilon) x < 1$，则级数 (14) 的项按其绝对值来讲，对充分大的 $n$，不能超过收敛的几何级数 $sum [(l + epsilon) x]^n$ 的对应项，因而得到级数 (14) 的收敛性.

1b) 令 $x > r = frac(1, l)$，因而 $l x > 1$. 对于充分小的 $epsilon > 0$，我们有 $(l - epsilon) x > 1$. 按照数 $l$ 的定义，存在着充分大的值 $n$，使得 $root(n, abs(a_n)) > l - epsilon$. 由此得 $abs(a_n) > (l - epsilon)^n$. 且因而有

#dmath[$ abs(a_n) x^n > [(l - epsilon) x]^n > 1. $]

由此得出级数 (14) 含有无穷多个绝对值大于 1 的项，因而其一般项不可能是无穷小，于是级数发散.

2) 令 $l = 0$. 需要证明级数 (14) 对任何 $x > 0$ 都收敛. 按照数 $l$ 的定义，对于充分大的 $n$ 有

#dmath[$ root(n, abs(a_n)) < frac(1, 2x), quad abs(a_n) < frac(1, 2^n x^n), quad abs(a_n) x^n < frac(1, 2^n). $]

即级数 (14) 的第 $n$ 项对充分大的 $n$，按绝对值而言又小于某个收敛的级数的第 $n$ 项. 这就表明级数 (14) 收敛.

#pagebreak(weak: true)
