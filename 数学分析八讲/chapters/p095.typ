#import "../theme.typ": *

#cont[因为 $epsilon$ 任意小，故有]

#dmath[$ lim_(x -> a) frac(f_1 (x), f_2 (x)) = l, $]

#cont[此即所要证明的．]

同无穷小量之比的法则相似，此法则也在 $a = plus.minus infinity$ 时成立．

例　1) $f_1 (x) = ln x, f_2 (x) = frac(1, x)$．当 $x -> 0$ 时，

#dmath[$ f_1 (x) -> -infinity, quad quad f_2 (x) -> +infinity. $]

#cont[#ifrac($f'_1 (x)$, $f'_2 (x)$) $= -x -> 0$，则此得]

#dmath[$ frac(f_1 (x), f_2 (x)) = x ln x -> 0 quad ("当" x -> 0 "时"). $]

2) 当 $f_2 (x) = x -> +infinity$ 时，我们有

#dmath[$ f_1 (x) = ln x -> +infinity, $]

#cont[同时 #ifrac($f'_1 (x)$, $f'_2 (x)$) $= frac(1, x) -> 0$．由此得]

#dmath[$ frac(f_1 (x), f_2 (x)) = frac(ln x, x) -> 0 quad ("当" x -> +infinity "时"). $]

#cont[令 $x = upright(e)^y$，我们得到 $x upright(e)^(-x) -> 0$（当 $x -> +infinity$ 时）．]

#subsec[泰勒公式]

现在我们应该来讲讲泰勒公式了．也许你们都已熟知，它在数学分析及其应用中，都是最重要的研究工具之一．对这个在任何分析教程中都被详细研究的公式，我们要特别注意，因为在它的推导的通常表述中，从思想方面来说总是完全模糊的，而只余下毫无指望的形式，因此对于许多学生而言，该公式后来竟得到如此重要的意义实为意外．

正如我们不止一次指出的，基本关系式

#dmath[$ lim_(h -> 0) frac(f(a + h) - f(a), h) = f'(a) $]

#cont[可以改写成等价的形式]

#eqnum(11)[$ f(a + h) = f(a) + h f'(a) + alpha h, $]

#cont[其中当 $h -> 0$ 时 $alpha -> 0$．因而这里的 $alpha h$ 是关于 $h$ 的高阶无穷小，即其与 $h$ 的比值当 $h -> 0$ 时是趋近于零的．]

#pagebreak(weak: true)
