#import "../theme.typ": *

#cont[则有]

#dmath[$ lim_(y -> gamma) phi(y) = phi(gamma), $]

#cont[即为所要证明的.]

要想不进行特别的研究而有可能断言 $upright(lg) sin x$、$2^(3x^2 - 4x)$ 之类的复合初等函数的连续性, 还需要如下的“关于函数的函数的连续性的定理”.

#em[如果 $y = f(x)$ 当 $a lt.eq.slant x lt.eq.slant b$ 时是连续函数, 而 $z = phi(y)$ 当 $alpha lt.eq.slant y lt.eq.slant beta$ 时是连续函数, 其中 $alpha$ 和 $beta$ 是函数 $f(x)$ 在区间 $[a, b]$ 上的相应的最小值与最大值, 则函数 $z = phi[f(x)]$ 在区间 $[a, b]$ 上连续.]

#heiEmphasizedProof[设 $c$ 是区间 $[a, b]$ 上的任一点, $f(c) = gamma, phi(gamma) = phi[f(c)] = xi$, 令 $W$ 是点 $xi$ 的任何一个邻域, 根据函数 $phi(y)$ 的连续性存在着点 $gamma$ 的一个邻域 $V$, 使得当 $y in V$ 时有 $phi(y) in W$. 最后由于函数 $f(x)$ 的连续性存在着点 $c$ 的一个邻域 $U$, 使得当 $x in U$ 时有 $f(x) in V$. 这就表明 $phi[f(x)] in W$. 因为 $W$ 是点 $xi = f[phi(c)]$ 的任意的一个邻域, 则由此得出]

#dmath[$ lim_(x -> c) f[phi(x)] = f[phi(c)], $]

#cont[#em[即函数 $f[phi(x)]$ 在区间 $[a, b]$ 上的任意点 $c$ 处的连续性得证.]]

#sec[函数在一点处的振幅]

引入函数在已知闭区间上及已知点上的振幅概念后, 我们将得到研究间断函数的一个最为方便的方法. 设在闭区间 $[a, b]$ 上, 除有限个点外, 都有定义的任意函数 $f(x)$. 若它在此区间上无界, 则我们可以说, 它在此区间上的振幅等于 $+infinity$; 若它有界, 我们将把它在此区间 $[a, b]$ 上的上确界 $M$ 与下确界 $m$ 之差 $M - m$ 称为它在此区间上的振幅. 在任何情况下我们都以符号 $omega_f (a, b)$ 来表示函数 $f(x)$ 在区间 $[a, b]$ 上的振幅.

若闭区间 $[a', b']$ 是闭区间 $[a, b]$ 的一部分 (即若 $a lt.eq.slant a' < b' lt.eq.slant b$), 则显然有: 函数 $f(x)$ 在区间 $[a', b']$ 上的确界 $M'$ 和 $m'$ 将服从不等式 $m lt.eq.slant m' lt.eq.slant M' lt.eq.slant M$, 因而有 $omega_f (a', b') lt.eq.slant omega_f (a, b)$. 所以, 若我们在区间 $[a, b]$ 上选取任意一点 $c$#footnote[在该点处函数可能是没有意义的.], 并以闭邻域 $[alpha, beta]$ 包围它且让此邻域的端点 $alpha$ 及 $beta$ 趋近于点 $c$, 则随这种趋近而改变的 $omega_f (alpha, beta)$ 任何时候也不会增加, 要么减少, 要么是常数. 又因为振幅 $omega_f (alpha, beta)$ 是非负的, 下有界的, 则由第一讲的引理 1, 它应该在此时趋于某个极限, 我们表之以 $omega_f (c)$ 并称之为函数 $f(x)$ 在点 $c$ 处的振幅. 这就是说

#dmath[$ omega_f (c) = lim_(mat(delim: #none, alpha -> c - 0; beta -> c + 0)) omega_f (alpha, beta). $]

#cont[引入此概念可以重新认识函数在已知点处的连续性, 如同下面所述.]

#pagebreak(weak: true)
