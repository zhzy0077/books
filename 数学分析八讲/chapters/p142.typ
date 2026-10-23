#import "../theme.typ": *

#scriptProofDmath[$ L_n < (1 - n^(negScriptFrac(2, 3)))^n dot 2. $]

#cont[从另一方面讲，很显然有]

#scriptProofDmath[$ I_n > integral_(negLimitFrac(1, 2) n^(negScriptFrac(1, 3)))^(+limitFrac(1, 2) n^(negScriptFrac(1, 3))) (1 - u^2)^n dif u > (1 - frac(1, 4) n^(negScriptFrac(2, 3)))^n dot n^(negScriptFrac(1, 3)), $]

#cont[因而有]

#scriptProofDmath[$ frac(L_n, I_n) < 2 n^(scriptFrac(1, 3)) (frac(1 - n^(negScriptFrac(2, 3)), 1 - fullFrac(1, 4) n^(negScriptFrac(2, 3))))^n . $]

#cont[但是]

#scriptProofDmath[$ frac(1 - n^(negScriptFrac(2, 3)), 1 - fullFrac(1, 4) n^(negScriptFrac(2, 3))) &= 1 - frac(fullFrac(3, 4) n^(negScriptFrac(2, 3)), 1 - fullFrac(1, 4) n^(negScriptFrac(2, 3))) < 1 - fullFrac(3, 4) n^(negScriptFrac(2, 3)) \
  &< e^(negScriptFrac(3, 4) n^(negScriptFrac(2, 3))), #footnote[大家都熟悉，对任何 $x != 0$ 有 $1 + x < e^x$，最简单的证明是求函数 $e^x - 1 - x$ 的最小值.] $]

#cont[所以]

#scriptProofDmath[$ frac(L_n, I_n) < 2 n^(scriptFrac(1, 3)) e^(negScriptFrac(3, 4) n^(scriptFrac(1, 3))), $]

#cont[或者令 #box[$display(frac(3, 4) n^(scriptFrac(1, 3)) = z)$], ]

#scriptProofDmath[$ frac(L_n, I_n) < frac(8, 3) z e^(-z), $]

#cont[但当 $n -> oo$ 时有 $z -> oo$，而此时 $z e^(-z) -> 0$#footnote[这里简单地给以证明. 注意到当 $z > 0$ 时 $e^z = 1 + z + frac(z^2, 2!) + dots.c > frac(1, 2) z^2$，因此 $z e^(-z) = frac(z, e^z) < frac(2, z)$. ]，所以]

#scriptProofDmath[$ lim_(n -> oo) frac(L_n, I_n) = 0. $]

#cont[这就证明了我们的引理.]

我们对积分 $I_n$ 所做的详细研究，对于魏尔斯特拉斯定理这样一个如此一般的命题可能具有什么样的意义呢？在数学分析中，在证明具有特别大的普遍性的定理时要应用很专门的分析工具. 这远不是这种情形的唯一例子，而在我们的例子中这个很专门的工具就是积分 $I_n$. 这个积分的什么性质才使得它成为证明魏尔斯特拉斯定理的方便的工具呢？正是在我们所证明的引理中表现出来的性质.#footnote[请读者注意，存在许许多多函数有类似 $I_n$ 的被积函数 $(1 - u^2)^n$ 的性质. 它们在三角级数、概率论、微分方程甚至物理中应用甚广. 直到 20 世纪 40 年代末出现了“广义函数论”，才明白它的实质就是所谓 $delta$-序列. 而作者这本书是 20 世纪 40 年代中期写成的. —— 译者注]这也就是说，我们所叙述的魏尔斯特拉斯定理的这个证明，可以作为数学分析的讨论的方法论上有教益的例子.

现在假设给定了一个在区间 $[0, 1]$ 上连续的任意函数 $f(x)$. 并把积分

// 源页本页排得极满: 指数用 theme 的 negScriptFrac/scriptFrac 小型堆叠分式,
// 积分限 1/2 用 limitFrac; 行内全字号分式用 fullFrac. 无 inline(frac) 或斜线指数.

#pagebreak(weak: true)
