#import "../theme.typ": *

#cont[因而]

#dmath[$ frac(Delta y, Delta x) = - frac(F'_x (x_1, y_1) plus.minus lambda, F'_y (x_1, y_1) plus.minus lambda) $]

#cont[(上式的分母不为 0，这样才能算得出 $display(frac(Delta y, Delta x))$ 如上). 令 $Delta x -> 0, Delta y -> 0$，因此 $rho -> 0$，故 $lambda -> 0$，即]

#dmath[$ f'(x_1) = - frac(F'_x (x_1, y_1), F'_y (x_1, y_1)). $]

#cont[由 $x_1$ 的任意性即得定理之证.]

现在把所得到的隐函数的微分法则用于最简单的“条件极值”问题. 这个问题在多变量情形的推广正是重要且有趣的条件极值理论，遗憾的是我们在这里不可能再充分展开讨论.

我们现在来研究在某个区域内的可微函数 $F(x, y)$ 且将把量 $x$ 视为自变量而把 $y$ 视为 $x$ 的函数，这个函数是由关系式

#eqnum(19)[$ italic(Phi)(x, y) = 0 $]

在某个区间 $[a, b]$ 上定义的，这里 $italic(Phi)(x, y)$ 也可微. 这也就是说，$F(x, y)$ 实际上是由上述复杂的方式给定的一个自变量 $x$ 的函数. 在数学分析及其应用中，经常要研究以这种复杂方式给定的函数. 现在来求区间 $[a, b]$ 上定义的函数的极值.

按照一般理论，这些极值 (相对极大值和相对极小值) 应当使函数 $F(x, y)$ 的导数变为零. 这也就是说，我们应当使已知函数 $z = F(x, y)$ 对 $x$ 的导数为零，这时当然要把 $y$ 视为由 (19) 式所定义的 $x$ 的函数，即应该令函数 $z$ 对 $x$ 的所谓“全”导数为零：

#eqnum(20)[$ frac(upright(d) z, upright(d) x) = frac(partial F, partial x) + frac(partial F, partial y) dot frac(upright(d) y, upright(d) x) = 0. $]

在此方程中，$display(frac(partial F, partial x))$ 及 $display(frac(partial F, partial y))$ 都是 $x$ 和 $y$ 的函数. 为确定 $display(frac(upright(d) y, upright(d) x))$，我们当然应当用隐函数的微分法则. 定义函数 $y$ 的关系式 (19) 给出

#dmath[$ frac(upright(d) y, upright(d) x) = - frac(frac(partial italic(Phi), partial x), frac(partial italic(Phi), partial y)), $]

#cont[由此，方程 (20) 可化为]

#dmath[$ frac(partial F, partial x) frac(partial italic(Phi), partial y) - frac(partial italic(Phi), partial x) frac(partial F, partial y) = 0. $]

#cont[此方程连同方程 (19) 一起能确定所有“临界的”数对 $(x, y)$，即任何使 $display(frac(upright(d) z, upright(d) x)) = 0$ 的点. 进一步的研究我们在这里就不再讲了.]

#pagebreak(weak: true)
