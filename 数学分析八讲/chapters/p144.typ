#import "../theme.typ": *

#cont[无穷小，并且包含于积分区间内的 $abs(u)$ 的值是可以忽略的很小的量，$abs(u) <= n^(negScriptFrac(1, 3))$．以 $f(x)$ 来代换 $f(u + x)$，我们也就得出表达式 $f(x) fullFrac(K_n, I_n)$ 来代替整个第一项，由我们的引理，当 $n -> oo$ 时它是趋近于 $f(x)$ 的．为完成证明，只要形式完全严格地进行这个讨论即可．最简单的是对此应用第一中值定理(第六讲“中值定理”一节)，由此得]

#dmath[$ integral_(-n^(negScriptFrac(1, 3)))^(n^(negScriptFrac(1, 3))) f(u + x)(1 - u^2)^n dif u = f(x + theta n^(negScriptFrac(1, 3))) K_n, $]

#cont[其中 $-1 < theta < 1$．这样一来，我们得到]

#dmath[$ abs(f(x) - P_n (x)) &= abs(f(x) - f(x + theta n^(negScriptFrac(1, 3))) frac(K_n, I_n) - R_n (x)) \
  &<= abs(f(x) - f(x + theta n^(negScriptFrac(1, 3))) frac(K_n, I_n)) + abs(R_n (x)). $]

#cont[设 $epsilon > 0$ 为任意小．正如我们已经了解的那样，对于充分大的 $n$ 有]

#dmath[$ abs(R_n (x)) < frac(epsilon, 2) quad (alpha <= x <= beta), $]

#cont[从另一方面讲，因为当 $n -> oo$ 时 $fullFrac(K_n, I_n) -> 1$，而函数 $f(x)$ 在整个区间 $[0, 1]$ 上一致连续，故当 $n$ 充分大时]

#dmath[$ abs(f(x) - f(x + theta n^(negScriptFrac(1, 3))) frac(K_n, I_n)) < frac(epsilon, 2) quad (alpha <= x <= beta); $]

#cont[这样一来，对充分大的 $n$ 有]

#dmath[$ abs(f(x) - P_n (x)) < frac(epsilon, 2) + frac(epsilon, 2) = epsilon quad (alpha <= x <= beta). $]

#cont[换言之，当 $n -> oo$ 时多项式 $P_n (x)$ 在区间 $[alpha, beta]$ 上一致趋近于函数 $f(x)$．]

魏尔斯特拉斯定理以此得证，我们只需去掉几个不太重要的限制：首先，我们应当从特殊的区间 $[0, 1]$ 转向任意的区间 $[a, b]$；其次，我们应当证明魏尔斯特拉斯定理所要求的一致近似不仅是在整个包含于 $(a, b)$#footnote[原书作 $[a, b], [0, 1]$，现改为开区间．因为证明是假设 $0 < alpha < beta < 1$，而不是 $0 <= alpha <= beta <= 1$．整个包含于 $[0, 1]$ 内的任意区间自然也有 $[0, 1]$ 本身．而上面恰好不许可 $alpha = 0, beta = 1$，否则 $n^(negScriptFrac(1, 3)) <= min{alpha, 1 - beta}$ 就不可能了，根据第四讲“幂级数”一节的第二个脚注，这就是在 $(0, 1)$“内部”．或者用我们的说法，就是在紧包含于 $(0, 1)$ 的任意闭区间上．在那个脚注里，我们讲了什么叫做集合 $U$ 紧包含于 $(0, 1)$ 中，对于任意集合 $V$(不一定如 $(0, 1)$ 那样是开区间)，什么叫做 $U$ 紧包含于 $V$ 中(记作 $U subset.double V$)呢？那就是：存在 $V$ 的一个紧子集 $K$，使得 $U subset K subset V$．在涉及我们现在所讲内容的范围内，紧集就是有界闭集．这样魏尔斯特拉斯定理就可以表述为：若 $f(x)$ 是 $V$ 上的任意连续函数，则在任意紧包含于 $V$ 内的集合中，或者说在 $V$ 的一个紧子集中，必存在一个多项式序列一致收敛于 $f(x)$．特别地，若 $V$ 本身就是闭区间 $[0, 1]$ 时，它当然也是自己的一个紧子集．这样，就得到了我们陈述的魏尔斯特拉斯定理．总之，紧性是一个极为重要的性质，现在的数学分析教材中多数都不讲它，这是令人遗憾的．但是有一个例外：小平邦彦的《微积分入门 I》(人民邮电出版社，2008)对此作了很清楚的叙述．那也是一本以大学生为对象的教科书．—— 译者注]内的任意区间 $[a', b']$ 上成立(我

#pagebreak(weak: true)

// SOURCE-CHECKED: 脚注“记作 U⋐V”的符号位于 p144-bottom.png 原生裁图 x≈885–934, y≈453–487。
// 同行稍后“U ⊂ K ⊂ V”中的单包含号(x≈2026–2059、x≈2137–2170)均为无中横的纯 C 形；
// 本符号多出中横/内层结构，确为双包含号 ⋐ (U+22D0)，故保留 subset.double。
// 源书字体以 C+中横画 ⋐，STIX 以 C 内套 C 画同一码位；字形设计差异属共享数学字体残差，不在章节改字形。
