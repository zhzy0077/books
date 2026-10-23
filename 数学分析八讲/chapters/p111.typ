#import "../theme.typ": *

#cont[不超过 $M$，同时第一项的第二个因子（即区间长度的和）不超过 $2n lambda = display(frac(epsilon, 2M))$，因此]

#dmath[$ S_T^"I" lt.eq.slant M dot frac(epsilon, 2M) = frac(epsilon, 2). $]

#align(center)[#sourceFigure("assets/p111/fig25.png", figureCaption(25))]

从另一方面看，和 $S_T^"II"$ 中对应于分划 $T$ 的包含于区间 $[x_(k-1), x_k]$ 内的部分（图 25），如果含于 $[x_(k-1), x_k]$ 内有几个这样的区间，每一个小区间相应于 $S_T^"II"$ 的一项，其第一个因子不大于 $M_k$，而这样几项的第二个因子的和不大于 $x_k - x_(k-1) = Delta_k$，因此 $S_T^"II"$ 之相应于含于 $[x_(k-1), x_k]$ 的几个小区间的这几项加起来不大于 $M_k Delta_k$，而把相应于 $[x_0, x_1], [x_1, x_2], dots.c, [x_(n-1), x_n]$ 的这些项加起来，即有

#dmath[$ S_T^"II" lt.eq.slant sum_(k=1)^n M_k Delta_k = S_(T_0). $]

#cont[这也就是说]

#dmath[$ S_T = S_T^"I" + S_T^"II" lt.eq.slant S_T^"I" + S_(T_0) < frac(epsilon, 2) + overline(I) + frac(epsilon, 2) = overline(I) + epsilon, $]

#cont[这就是我们想要证明的.]

#hei[完全类似地可以证明命题中第二个不等式.]

#heiTheoremLead[设函数 $f(x)$ 在区间 $[a, b]$ 上可积，则此时对无论怎样小的 $epsilon > 0$，都存在一个正数 $lambda$，使得对任意的满足 $l_T < lambda$ 的分划 $T$，不论怎样选取 $xi_k (x_(k-1) lt.eq.slant xi_k lt.eq.slant x_k)$ $(1 lt.eq.slant k lt.eq.slant n)$，都有]

#dmath[$ abs(sum_(k=1)^n f(xi_k) Delta_k - I) < epsilon, $]

#cont[其中，$I = display(integral_a^b f(x) dif x).$]

实际上，很显然，因为不论在相应的子区间中怎样选取 $xi_k$，都有

#dmath[$ m_k lt.eq.slant f(xi_k) lt.eq.slant M_k quad (1 lt.eq.slant k lt.eq.slant n), $]

#cont[所以]

#dmath[$ s_T lt.eq.slant sum_(k=1)^n f(xi_k) Delta_k lt.eq.slant S_T. $]

#cont[但另一方面，由引理 IV 对相应充分小的 $l_T$ 的任意分划有]

#dmath[$ I - epsilon = underline(I) - epsilon < s_T lt.eq.slant S_T < overline(I) + epsilon = I + epsilon. $]

#cont[把这些不等式与前面相比较，我们得到：对相应充分小的 $l_T$ 的任意分划，]

#pagebreak(weak: true)
