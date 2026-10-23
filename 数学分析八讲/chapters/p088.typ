#import "../theme.typ": *

#cont[任何可微函数的微分的存在性的证明，总是同样不可避免地要引入导数.)]

实际上，令 $upright(d) y = a Delta x + b$，其中 $a$ 和 $b$ 与 $Delta x$ 无关，再令 $Delta y - upright(d) y = alpha Delta x$，其中 $alpha$ 是当 $Delta x -> 0$ 时的无穷小．这时

#dmath[$ Delta y = upright(d) y + alpha dot Delta x = (a + alpha) Delta x + b. $]

如果函数 $y$ 连续(我们假设这一点)，则当 $Delta x -> 0$ 时 $Delta y -> 0$．由此必须有 $b = 0$ 且 $Delta y = (a + alpha) Delta x$．由此得

#dmath[$ frac(Delta y, Delta x) = a + alpha\, quad lim_(Delta x -> 0) frac(Delta y, Delta x) = f'(x) = a, $]

#dmath[$ upright(d) y = f'(x) Delta x. $]

#cont[这就是所要证明的．]

在微分的其他性质中，微分关于任何变量变换的形式不变性有重要的意义（但这在许多教科书中都讲得不充分）．以下就是它的内容：如果 $x$ 是自变量，则正如我们所看到的

#eqnum(4)[$ upright(d) y = f'(x) Delta x = f'(x) upright(d) x, $]

现在把 $x$ 看作新变量 $t$ 的函数 $x = phi(t)$，很显然，此时关系式 (4) 的两个等号也不一定再成立，因为现在（一般来说）已经是 $upright(d) x = phi'(t) Delta t != Delta x$．

绝妙的是，由 (4) 得出的第二个关系式即

#dmath[$ upright(d) y = f'(x) upright(d) x $]

#cont[对任何这类变换都仍然是对的．实际上变换的结果是 $y$ 成了 $t$ 的函数]

#dmath[$ y = psi(t) = f[phi(t)], $]

#cont[由此依照函数的函数的微分法则有]

#dmath[$ psi'(t) = f'[phi(t)] phi'(t), $]

#dmath[$ upright(d) y = psi'(t) upright(d) t = f'[phi(t)] phi'(t) upright(d) t, $]

#cont[而因为 $phi(t) = x, phi'(t) upright(d) t = upright(d) x$，则实际上有 $upright(d) y = f'(x) upright(d) x$，正如同 $x$ 是自变量时一样．这也就是说，在导数表达式 $y' = display(frac(upright(d) y, upright(d) x))$ 中，$x$ 是自变量或者 $x$ 是另外某一个变量的函数都是毫无差别的．]

我们刚才利用了函数的函数的微分法则，一般来说，在这些讲义里我们不打算谈微分学的这些初等法则，但正是这个法则值得稍加注意，因此在大多数教材中要么出现错误，要么过于复杂．下面是其简单而又正确的推导#footnote[这是克莱因涅斯 (M. A. Крейнec) 告诉我的．（实际上在许多数学分析教材中是这样证明的．但有的分为 $phi'(t) = 0$ 与 $phi'(t) != 0$ 两种情况来证明，就不必要了．本书作者讲有的书上证明过于复杂可能指此．—— 译者注)]．令 $y = f(x), x =$

#pagebreak(weak: true)
