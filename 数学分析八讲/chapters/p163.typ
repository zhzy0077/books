#import "../theme.typ": *

#cont[个整数 $k$ 使得 $display(frac(k - 1, n)) M <= xi < display(frac(k, n)) M$. 这时有]

#dmath[$ frac(k - 1, n) M <= xi < eta < frac(k + 1, n) M. $]

因为区间 $[xi, eta]$ 含于区间 $[-M, M]$ 内，故有 $-(n - 1) <= k <= n - 1$. 也就是说，集合 $S$ 中的任何一个函数在区间 $[alpha, beta]$ 上所取的所有的值都属于形如

#dmath[$ [frac(k - 1, n) M, frac(k + 1, n) M] quad (-(n - 1) <= k <= n - 1) $]

#cont[的某个区间. 因为这些区间个数有限，而集合 $S$ 包含有无穷多个函数，所以这些区间至少有一个含有 $S$ 中无穷多个函数在 $[alpha, beta]$ 中之值. 令这些函数组成 $S'$，则 $S'$ 是无穷子集. 很显然，子集 $S'$ 在区间 $[alpha, beta]$ 上的宽度不会超过 #ifrac($2M$, $n$)，如果我们选取数 $n$ 使得 #ifrac($2M$, $n$)$< epsilon$，则上述宽度小于 $epsilon$.]

2) 现在来证明集合 $S$ 还包含这样的无穷子集 $S'$，它在整个区间 $[a, b]$ 上的宽度小于 $epsilon$. 为此，我们选取自然数 $m$ 充分大，使得 $display(frac(b - a, m)) < delta$. 此时根据第 1) 段中的证明，集合 $S$ 应当包含有无穷子集 $S_1$，它在区间 $[a, a + display(frac(b - a, m))]$ 上的宽度小于 $epsilon$. #box[同样的理由]，集合 $S_1$ 包含有无穷子集 $S_2$，它在区间 $[a + display(frac(b - a, m)), a + 2 display(frac(b - a, m))]$ 上的宽度也小于 $epsilon$，等等. 最后，我们得到了集合 $S$ 的无穷的子集 $S_m = S'$，它在区间 $[a + (m - 1) display(frac(b - a, m)), b]$ 上的宽度小于 $epsilon$，在这个区间以前的每一个区间上，它的宽度也小于 $epsilon$，因为 $S_m subset S_(m - 1) subset dots.c subset S_2 subset S_1$. 这就表明，集合 $S'$ 在整个区间 $[a, b]$ 上的宽度小于 $epsilon$，我们的命题得证.

3) 现在再来完成引理的证明已是非常简单的事了. 我们以 $S_1$ 来表示集合 $S$ 在 $[a, b]$ 上宽度小于 1 的无穷子集，以 $S_2$ 来表示 $S_1$ 在 $[a, b]$ 上宽度小于 $display(frac(1, 2))$ 的无穷子集，且一般地以 $S_n$ 来表示在 $[a, b]$ 上宽度小于 $display(frac(1, n))$ 的集合 $S_(n - 1)$ 的无穷子集 (根据 2) 段的证明，所有这些子集合都是存在的). 设 $F_1 (x)$ 是集合 $S_1$ 中任意的函数，$F_2 (x)$ 是集合 $S_2$ 中任意的不等于 $F_1 (x)$ 的函数，一般的 $F_n (x)$ 是集合 $S_n$ 中任何一个与 $F_(n - 1)(x), F_(n - 2)(x), dots.c, F_1(x)$ 都不同的函数. 因为对任何 $p > 0$ 都有 $S_(n + p) subset S_n$，则 $F_n(x) in S_n$ 且 $F_(n + p)(x) in S_n$，由此对区间 $[a, b]$ 的任意的点 $x$ 都有

#dmath[$ |F_n (x) - F_(n + p) (x)| < frac(1, n) quad (p = 0, 1, 2, dots.c). $]

按照柯西准则由此得出：函数序列 $F_1(x), F_2(x), dots.c, F_n(x), dots.c$ 在区间 $[a, b]$ 上一致收敛，于是引理的证明完成.

现在我们可以转过来证明前述的基本定理了.

#pagebreak(weak: true)
