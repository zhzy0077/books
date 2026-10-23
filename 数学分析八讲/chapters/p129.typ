#import "../theme.typ": *

如果在 $S_T^((2))$ 的每一项中以 $M_k$ 来代替其第一个因子，将不会使 $S_T^((2))$ 变小. 这里 $M_k$ 对应于分划 $T_0$ 的网眼 $Delta_k$，这类网眼的一部分就构成了分划 $T$ 的网眼 $Delta$ (第二组)的已知项. 另一方面，由于函数 $f(x, y)$ 非负，则以此方式得到的不减的和很显然总不大于 $S_(T_0)$，这样一来

#dmath[$ S_T^((2)) <= S_(T_0) < overline(I) + frac(epsilon, 2). $]

#cont[把这个不等式同不等式 (15) 合并考虑，并选择数 $delta$, (迄今为止，$delta$ 还是任意的) 使之小于 $display(frac(epsilon, 4 M L))$，我们就得到]

#dmath[$ S_T = S_T^((1)) + S_T^((2)) < 2 M L delta + overline(I) + frac(epsilon, 2) < overline(I) + epsilon. $]

用完全同样的方式可以证明，当满足条件 $d_T < delta$ 时，有 $s_T > underline(I) - epsilon$，于是引理 IV 的证明完成.

#bodyParagraph[#leadLabel[定理]如果函数 $f(x, y)$ 在区域 $D$ 上可积，则对任意的分划 $T$，当 $d_T$ 充分小时有]

#dmath[$ abs(sum_(k=1)^n f(xi_k, eta_k) Delta_k - I) < epsilon, $]

#cont[其中 $epsilon$ 是任意预先给定的正数，而 $(xi_k, eta_k)$ $(k = 1, 2, dots.c, n)$ 是网眼 $Delta_k$ 的任一点.]

简单一点，我们就说，和 $display(sum_(k=1)^n f(xi_k, eta_k) Delta_k)$ 当 $d_T -> 0$ 时趋近于积分 $I$，这里的趋近，对于一切可能的分划 $T$ 以及点 $(xi_k, eta_k)$ 的所有可能的选择方式，是一致的.

为简单计我们通常以 $Sigma_T$ 来表示该和，很明显，不等式

#dmath[$ m_k <= f(xi_k, eta_k) <= M_k $]

#cont[对任何分划以及任意选择的点 $(xi_k, eta_k)$ 有]

#dmath[$ s_T <= Sigma_T <= S_T. $]

这就表明，由引理 IV，对于充分小的 $d_T$，有

#dmath[$ I - frac(epsilon, 2) <= Sigma_T <= I + frac(epsilon, 2), $]

#cont[由此得 $abs(Sigma_T - I) < epsilon$. 所证定理的逆定理也成立，且其证明也和一维的情形完全一样.]

收敛性的普遍适用的必要充分准则

#dmath[$ S_T - s_T = sum_(k=1)^n omega_k Delta_k -> 0 quad (d_T -> 0) $]

#cont[的证明同过去一样.]

#pagebreak(weak: true)
