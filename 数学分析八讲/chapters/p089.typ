#import "../theme.typ": *

#cont[$phi(t), y = psi(t) = f[phi(t)]$．当然，函数 $f$ 和 $phi$ 都假定是可微的，因而在关系式 (3′) 中当 $Delta x -> 0$ 时 $alpha -> 0$．由此式得]

#dmath[$ frac(Delta y, Delta t) = f'(x) frac(Delta x, Delta t) + alpha frac(Delta x, Delta t), $]

#cont[但当 $Delta t -> 0$ 时我们有 $alpha -> 0$，#ifrac($Delta x$, $Delta t$) $-> phi'(t)$ 且 #ifrac($Delta y$, $Delta t$) $-> psi'(t)$，由此取极限得]

#dmath[$ psi'(t) = f'(x) phi'(t) = f'[phi(t)] phi'(t). $]

#cont[这就是我们想要导出的法则．]

#sec[拉格朗日定理]

微分学的建立在相当大的部分上是基于拉格朗日定理的，它是所谓“中值定理”的第一个模式．由于它在整个数学分析所有部分中都有极为重要的价值，因而应该给予足够的注意．

#leadLabel[拉格朗日定理]如果函数 $f(x)$ 在闭区间 $[a, b]$ 上连续且在开区间 $(a, b)$ 内可微，则存在该区间内的一个内点 $c$，使得

#eqnum("A")[$ f'(c) = frac(f(b) - f(a), b - a). $]

#leadLabel[证明]很显然，函数

#dmath[$ phi(x) = (b - a)[f(x) - f(a)] - (x - a)[f(b) - f(a)] $]

#cont[在区间 $[a, b]$ 上可微．因为 $phi(a) = phi(b) = 0$，那么要么对任何 $x in [a, b]$ 有 $phi(x) = 0$，这时对任何内点 $x$ 有 $phi'(x) = 0$；要么 $phi(x)$ 在区间内取不为零的值，则此时这些值中必能找到最大值或者最小值（因为函数 $phi(x)$ 连续）．为确定起见，令 $phi(x)$ 在 $x = c$ 时取最大值 $(a < c < b)$，这时必然有 $phi'(c) = 0$．因为当 $phi'(c) > 0$ 时，对充分小的正数 $h$ 就有]

#dmath[$ frac(phi(c + h) - phi(c), h) > 0, $]

#cont[由此得 $phi(c + h) > phi(c)$．这与点 $c$ 的定义矛盾．当 $phi'(c) < 0$ 时（给 $h$ 以负值）我们得到相似的矛盾．从 $phi'(c) = 0$ 可推得 (A)，从而定理得证．]

时常用另一种记号来陈述这个定理：若给出一个以 $x$ 和 $x + Delta x$ 为端点的闭区间，则存在一个数 $theta (0 < theta < 1)$，使

#dmath[$ f'(x + theta Delta x) Delta x = f(x + Delta x) - f(x). $]

对于具有高阶导数的函数，对拉格朗日定理可以做出重要的推广．我们现在就来证明它．

#pagebreak(weak: true)
