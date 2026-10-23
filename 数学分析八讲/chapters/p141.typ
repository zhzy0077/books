#import "../theme.typ": *

#leadLabel[魏尔斯特拉斯定理]若函数 $f(x)$ 在闭区间 $[0, 1]$ 上连续，则必可在此闭区间上找到一个多项式序列一致逼近 $f(x)$.

在此，可以看到，我们要从离题稍远的地方谈起.

我们来研究积分

#denseDmath[$ I_n = integral_(-1)^(+1) (1 - u^2)^n dif u; $]

#cont[很显然，对任何 $n = 1, 2, dots.c, I_n$ 都是正数. 我们将积分区域分成两部分，即分别来研究积分]

#denseDmath[$ K_n = integral_(-n^(negScriptFrac(1, 3)))^(+n^(negScriptFrac(1, 3))) (1 - u^2)^n dif u, $]

#cont[它分布在区间 $(- fullFrac(1, root(3, n)), + fullFrac(1, root(3, n)))$ 上（当 $n$ 很大时是一个很小的区间），以及区间余下部分上的积分]

#denseDmath[$ L_n = integral_(n^(negScriptFrac(1, 3)) <= abs(u) <= 1) (1 - u^2)^n dif u, $]

#cont[$L_n$ 实质上是两个积分的和，分别分布在相应的区间 $(-1, - fullFrac(1, root(3, n)))$ 以及 $(fullFrac(1, root(3, n)), 1)$ 上. 当 $n$ 无限增加时，$K_n$ 的积分区域收缩于 $0$ 点；反之，$L_n$ 的积分区域则扩大且趋近于覆盖整个区间 $[-1, 1]$. 我们现在来证明，尽管对 $n$ 值，$K_n$ 的值几乎就是 $I_n$ 的值的全部，而积分 $L_n$ 的值却仅仅占这个值的可以略而不计的一小部分. 当然，这是因为当 $n$ 很大时被积函数 $(1 - u^2)^n$ 只对很大的 $abs(u)$ 值才多少有显著一些的值，而对相对较大的 $abs(u)$ 值，被积函数都是微不足道地小. 该函数的图形可见图 33 中.]

#align(center)[#sourceFigure("assets/p141/fig33.png", figureCaption(33))]

#leadLabel[引理]当 $n -> oo$ 时，#box[$display(frac(K_n, I_n) -> 1)$], #box[$display(frac(L_n, I_n) -> 0)$].

因为这两个关系式中的每一个都很明显地是另一个的推论，所以只要证明其中任何一个就足够了.

在积分 $L_n$ 中，很显然当 $abs(u) = n^(negScriptFrac(1, 3))$ 时被积函数达到最大值 $(1 - n^(negScriptFrac(2, 3)))^n$. 因为积分区域是区间 $[-1, 1]$ 的一部分，所以有

#pagebreak(weak: true)
