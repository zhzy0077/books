#import "../theme.typ": *

#dmath[$ sum_(r=1)^s M_(k_r) Delta_(k_r) <= M_k sum_(r=1)^s Delta_(k_r) = M_k Delta_k, $]

#cont[即用以代替 $M_k Delta_k$ 的一组项之和不超过 $M_k Delta_k$，又因为这对任何 $k$ 都是成立的，所以 $S_(T') <= S_T$. 完全相仿地可以证明第二个不等式.]

#leadLabel[引理 Ⅱ]对区间 $[a, b]$ 的任何分划 $T_1$ 和 $T_2$，都有

#dmath[$ S_(T_1) >= s_(T_2). $]

实际上，把两个分划 $T_1$ 和 $T_2$ 的所有分点合起来得到了第三分划 $T$，很显然，它是分划 $T_1$ 与 $T_2$ 中每一个的加细. 对这样的分划 $T$，很显然有 $S_T >= s_T$，因此由引理 Ⅰ 得

#dmath[$ S_(T_1) >= S_T >= s_T >= s_(T_2), $]

#cont[此即为需要证明的.]

#leadLabel[引理 Ⅱ]的直接推论是引理 Ⅲ.

#leadLabel[引理 Ⅲ]对任何有界函数，$overline(I) >= underline(I)$.

实际上，因为任何一个下和 $s_T$ 都不超过任何上和 $S_T$，因此所有下和 $s_T$ 的集合之上确界 $underline(I)$ 不得超过所有上和 $S_T$ 的集合之下确界 $overline(I)$.

现在令 $l_T$ 表示由分划 $T$ 把区间 $[a, b]$ 分割而成的小区间的最大长度.

#leadLabel[引理 Ⅳ]若对任何 $epsilon > 0$ 都存在一个 $lambda > 0$，使得对任何分划，当 $l_T < lambda$ 时，就有 $S_T < overline(I) + epsilon, s_T > underline(I) - epsilon$.

这个命题有时简单地表述成：当 $l_T -> 0$ 时 $S_T -> overline(I), s_T -> underline(I)$. 只要不把 $S_T$ 和 $s_T$ 理解为 $l_T$ 的单值函数，这种措词就不致招到误解.

#leadLabel[证明]不影响讨论的一般性，我们可以假定当 $a <= x <= b$ 时 $f(x) >= 0$ [我们总可以对 $f(x)$ 加上一个充分大的数 $A$ 而达到此目的，同时所有的积分及和都增加 $A(b - a)$]. 依照下确界的定义，存在分划 $T_0$，使得 $S_(T_0) < overline(I) + frac(epsilon, 2)$. 以 $x_1, x_2, dots.c, x_(n-1)$ 表示区间 $[a, b]$ 在此分划下的内分点#footnote[
  我们总是把区间 $[a, b]$ 的端点也算成分点，即边界分点. 就是说，我们总令 $a = x_0, x_n = b$.
  #footnoteTranslatorNote[—— 译者注]
]，并设 $M$ 是函数 $f(x)$ 在区间 $[a, b]$ 上的上确界. 最后，设 $lambda = frac(epsilon, 4n M)$，而分划 $T$ 是区间 $[a, b]$ 的任意一个满足 $l_T < lambda$ 的分划. 我们来证明 $S_T < I + epsilon$.

为此，我们把分划 $T$ 所分割成的子区间分成两组：第一组是可以整个放在区间 $[x_k - lambda, x_k + lambda](1 <= k <= n)$ 中的那些子区间，而其余的子区间放入第二组 (图 25). 相应于此，和 $S_T$ 也分成了和 $S_T^"I"$ 及 $S_T^"II"$. 在和 $S_T^"I"$ 中的所有项的第一个因子都

#pagebreak(weak: true)
