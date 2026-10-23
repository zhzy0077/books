#import "../theme.typ": *

#cont[握全部的实数，这个“公理”就是不成立的. 这种缺陷不仅在初等数学里有，而且在“简化”的数学分析教程里也有.]

特别是，对于几何学中圆的周长（即当边数无限增加时圆内接正多边形周长的极限）的存在，以及作为分析基础的数 $upright(e) = limits(lim)_(n -> oo) (1 + 1/n)^n$ 的存在，利用这个引理进行证明是最简单的了.

与描述单调有界序列的基本特征的引理相比较，关于连续变化变量的连续函数的下述引理，对数学分析的意义也不相上下.

#lemma([引理 1$'$.], [若变量 $x$ 增加且趋近于 $a$，并且函数 $f(x)$ 在某个以点 $a$ 为其右端点的区间上有界且单调，则当 $x -> a$ 时 $f(x)$ 趋近于确定的极限.])

这里函数 $f(x)$ 在以 $a - epsilon$ 和 $a$ 为端点 $(epsilon > 0)$ 的区间内的有界性，表明存在这样的数 $c$，使得

#dmath[$ |f(x)| < c quad (a - epsilon < x < a); $]

#cont[单调性则表明对该区间的任意一对数 $x_1$ 和 $x_2(x_1 != x_2)$，比值 $display(frac(f(x_1) - f(x_2), x_1 - x_2))$ 或者 $gt.eq.slant 0$，或者 $lt.eq.slant 0$.]

引理 $1'$ 的证明可以很简单地由引理 1 作出. 为确定起见，设 $f(x)$ 是不减的，即当 $a > x_2 > x_1 > a - epsilon$ 时有 $f(x_2) gt.eq.slant f(x_1)$. 因为当 $n > 1/delta$ 时有

#dmath[$ a - delta < a - 1/n < a, $]

#cont[则增加的数序列 $a - frac(1, n)(n > 1/epsilon)$ 落在以 $a - epsilon$ 和 $a$ 为端点的区间内且以 $a$ 为极限. 数序列 $f(a - frac(1, n))(n > 1/epsilon)$ 显然有界且不减. 因此由引理 1，存在极限 #box[$limits(lim)_(n -> oo) f(a - frac(1, n)) = b$]. 如果数 $x$ 充分靠近 $a$，则可以找到这样一个 $n = n(x)$，使得]

#dmath[$ a - 1/n lt.eq.slant x < a - 1/(n + 1), $]

#cont[此即表明由函数 $f$ 的单调性得]

#eqnum(4)[$ f(a - 1/n) lt.eq.slant f(x) lt.eq.slant f(a - 1/(n + 1)). $]

#cont[但当 $x -> a$ 时很显然地有 $n -> oo$，由此得出不等式 (4) 的左右两边都以 $b$ 为其极限，由此得出当 $x -> a$ 时也有 $f(x) -> b$，引理 $1'$ 由此得证.]

#item([#hei[2\. 收缩区间套引理.]], [我们约定把以 $a$ 和 $b$ 为端点的闭区间，即满足不等式 $a lt.eq.slant x lt.eq.slant b$ 的所有实数的总体记为 $[a, b]$，而具同样端点的开区间，即满足不等式 $a < x < b$ 的所有实数 $x$ 的总体记为 $(a, b)$. 如果区间序列])

#eqnum(5)[$ [a_1, b_1], [a_2, b_2], dots.c, [a_n, b_n], dots.c $]

#cont[满足下述条件:]

#pagebreak(weak: true)
