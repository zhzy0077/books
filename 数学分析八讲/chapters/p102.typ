#import "../theme.typ": *

#dmath[$ f(x, y + Delta y) - f(x, y)
  &= f'_y (x, y) Delta y + o(Delta y) \
  &= f'_y (x, y) Delta y + o(rho), $]

#cont[所以]

#dmath[$ Delta z = f'_x (x, y) Delta x + f'_y (x, y) Delta y + o(rho), $]

#cont[这就是所要证明的. 我们的推理还表明，只要在点 $(x, y)$ 处两个偏导数之一是连续的就足够了.]

无论如何，一般情况下即使偏导数存在，微分也有可能不存在. 因此在定义二元函数可微性时我们就面临着选择：是以偏导数存在为基础还是以微分存在为基础来定义可微性？ 通常我们称函数在一定点处是可微的，如果它在该点有微分存在. 这个关于函数的可微性的定义，要求得比偏导数的存在更多一些，这是很方便的，因为理论的进一步发展证明，只有具有微分的函数才会在其性质上显现出与单变量可微函数完全相似的性质.

要得到偏导数 $display(frac(partial z, partial x))$，我们只给一个变量 $x$ 以增量而令 $y$ 不变. 几何上，我们说让点 $P(x, y)$ 平行于 $O x$ 轴移动到点 $P_1 (x + Delta x, y)$ (图 23)，偏导数 $display(frac(partial z, partial x))$ 定义为比值 $display(frac(f(P_1) - f(P), overline(P P_1)))$ 当 $P_1 -> P$ 时的极限.

#sourceFigure("assets/p102/fig23.png", figureCaption(23))

#cont[此处 $overline(P P_1) = Delta x$ 是点 $P$ 与点 $P_1$ 之间的距离，$f(P) = f(x, y), f(P_1) = f(x + Delta x, y)$.]

#cont[类似地有]

#dmath[$ frac(partial z, partial y) = lim_(P_2 -> P) frac(f(P_2) - f(P), overline(P P_2)), $]

其中 $P_2$ 是坐标为 $(x, y + Delta y)$ 的点，它沿平行于 $O y$ 轴方向无限趋近于 $P$. 这也就是说，函数 $z$ 在点 $P$ 的 $display(frac(partial z, partial x))$ 是它 “沿 $O x$ 方向” 的导数，而 $display(frac(partial z, partial y))$ 则是它 “沿 $O y$ 方向” 的导数. 显然，我们可用完全类似的方法来定义函数 $z = f(x, y)$ 沿着与 $O x$ 轴构成任意倾角 $phi$ 的其他方向的偏导数. 为此只需这样放置点 $P$ 和点 $Q$，使得由 $P$

#pagebreak(weak: true)
