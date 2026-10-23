#import "../theme.typ": *

#dmath[$ frac(phi(x) - phi(alpha), x - alpha) < 0. $]

#cont[因此有 $upright(D) phi(alpha) <= 0$. 但 $upright(D) phi(alpha) = upright(D) f(alpha) + epsilon$，则此得]

#dmath[$ upright(D) f(x) = upright(D) phi(alpha) - epsilon < 0, $]

#cont[这与定理的条件之间的矛盾使定理得证.]

#sec[微分]

微分概念是微分学的下一个基本概念．现在我们是把微分当作是通过导数概念来定义的派生概念，但这并非总是如此．在无穷小分析#footnote[我们现在所说的微积分学，在历史上，例如在欧拉的时代，曾被称为“无穷小分析”．—— 译者注]产生的时代以及更早得多的时代，是把微分作为分析的原生概念，而导数恰是作为微分之比，即作为派生概念来定义的．那时，微分概念时常是没有明确定义，甚至默认了其中所含的矛盾．因为在那个时代的数学中，能够把变化过程中的变量作为统一对象来把握的辩证的思维方法还没有得到充分的发展．

你们当然都知道微分形式的定义：我们称量

#eqnum(3)[$ upright(d) y = f'(x) Delta x $]

#cont[为函数 $f(x)$ 的微分，其中 $Delta x$ 为自变量的增量．也就是说，函数 $f(x)$ 的微分是两个自变量——量 $x$ 及其增量 $Delta x$——的函数．这两个变量的值彼此之间毫无关系且可以完全无关地选取.#footnote[这一点至关重要，是理解微分 $upright(d) y$ 的实质的关键．即认为 $upright(d) y$ 是两个自变量 $x$ 与 $h$（$h$ 即 $Delta x$）的函数，往下再令 $x$ 固定而专注于 $h$ 即 $Delta x$ 的变化．所以 $x$ 与 $h$ 是完全互相独立的．微分的现代概念要害即在这里．—— 译者注]]

特别地，研究函数 $y = x$，我们得到结论：$upright(d) x = Delta x$，即自变量的微分和增量相等．在公式 (3) 中以 $upright(d) x$ 代替 $Delta x$，我们得到

#dmath[$ upright(d) y = f'(x) upright(d) x, $]

#cont[由此得]

#dmath[$ y' = f'(x) = frac(upright(d) y, upright(d) x), $]

#cont[即导数等于函数的微分与自变量的微分之比.]

但是，只从这些纯粹形式进行研究，还不足以理解微分概念对于数学分析及其应用具有巨大意义的原因．为了弄通这个问题，需要从本质上认识微分的思想．可能最为方便的是从研究一种特殊情况开始，即 $x$ 表示时间，而 $y = f(x)$ 则表示动点在从 0 到 $x$ 的时间间隔内通过的路程．这时正如我们所了解的，$f'(x)$ 意味着动点在时刻 $x$ 时的瞬时速度．因而 $upright(d) y = f'(x) Delta x$ 是动点在时间间隔 $[x, x + Delta x]$ 内所

#pagebreak(weak: true)
