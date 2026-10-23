#import "../theme.typ": *

#dmath[$ I - epsilon < sum_(k=1)^n f(xi_k) Delta_k < I + epsilon, $]

#cont[这就是所要证明的.]

容易看出，逆定理也成立. 实际上，如果对于充分小的 $l_T$ 的任意分划以及对任意选择的点 $xi_k$，和 $limits(sum)_(k=1)^n f(xi_k) Delta_k$ 可任意接近于 $I$，则 $S_T$ 对这样充分小的 $l_T$ 也将小于 $I + epsilon$；另一方面，总有 $S_T >= overline(I)$，由此得 $overline(I) < I + epsilon$，这就表明 $overline(I) <= I$，因为 $epsilon$ 是任意小；类似地可得 $underline(I) >= I$，因此有 $overline(I) <= underline(I)$. 由此依引理 III，$overline(I) = I = underline(I)$，即函数 $f(x)$ 在区间 $[a, b]$ 上可积.

这也就是说，我们这里给出的积分的新定义完全等价于原来的定义.

#leadLabel[注记]从引理 IV，很明显可以推得：如果以 $omega_k = M_k - m_k$ 来表示函数 $f(x)$ 在区间 $[x_(k-1), x_k]$ 上的振幅，则要想使函数 $f(x)$ 在区间 $[a, b]$ 上可积，当且仅当对 $l_T$ 充分小的任意分划 $T$，和

#eqnum(2)[$ sum_(k=1)^n omega_k Delta_k = S_T - s_T $]

#cont[可以任意小.]

#subsec[可积性条件]

在上面最后的注记中给出的可积性的必要充分条件用起来还是不太方便，因为多数情况下，对于具体给出的函数不容易直接判断和 (2) 的性态. 但是，借助这个准则很容易建立对于相当广泛的函数类的可积性的一般条件.

我们现在沿这条道路走下去.

我们首先来证明：任何在闭区间 $[a, b]$ 上连续的函数在此区间上必可积. 实际上，由一致连续性（第三讲定理 4），对每一个正数 $epsilon$ 都可以找到一个正数 $lambda$，使得函数 $f(x)$ 在长度小于 $lambda$ 的任意区间上的振幅都小于 $epsilon$. 但此时对任何 $l_T < lambda$ 的任意分划 $T$，和 (2) 中的所有 $omega_k$ 都将小于 $epsilon$，因此

#dmath[$ sum_(k=1)^n omega_k Delta_k < epsilon sum_(k=1)^n Delta_k = epsilon (b - a), $]

#cont[即和 (2) 当 $l_T$ 充分小时可以任意小，正如我们了解的，由此可推得函数 $f(x)$ 在区间 $[a, b]$ 上的可积性.]

间断函数是否可积？从例子中容易看出，这是可能的，甚至容易在这方面找到一些一般的规律性. 例如，我们来证明：在区间 $[a, b]$ 上只有一个间断点 $c$ 的有界函数 $f(x)$ 在此区间上可积（无论间断点 $c$ 的性质怎样）.

为此我们以 $mu$ 来表示函数 $|f(x)|$ 在区间 $[a, b]$ 上的上确界，并选取任意的正

#pagebreak(weak: true)
