#import "../theme.typ": *

#cont[通过的路程的值，但是要把原来的运动换成另一种运动，即动点在此时间段内是以该区间开始时的速度作匀速运动的．实际上，真实的动点在此时间间隔内通过的实际距离一般来说会是另外的数值，因为速度不会是常数．]

正如我们所了解的那样，一般情况下，导数 $f'(x)$ 是作为量 $y$ 对已知量 $x$ 的相对变化率的度量来研究的，所以我们可以把微分 $upright(d) y = f'(x) Delta x$ 看作是另一个函数 $y$ 当自变量 $x$ 从其初值变化到 $x + Delta x$ 时的增量，而这个函数在区间 $[x, x + Delta x]$ 的所有点处变化率的度量都和原来的函数在该区间的起点处一样．这可以直观地用图 21 来表示：$upright(d) y$ 是另一条曲线 $y = f(x)$ 当自变量从 $x$ 变到 $x + Delta x$ 时纵坐标走过的路程，这条曲线在此区间上处处的倾角都与原来曲线在点 $x$ 处的倾角一样，即我们以原曲线在横坐标为 $x$ 的点处所引的切线来代替原曲线．

#align(center)[
  #sourceFigure("assets/p086/fig21.png", figureCaption(21))
]

你们可能知道：在应用科学中，当 $Delta x$ 很小时常常不区别函数 $y = f(x)$ 的增量 $Delta y$ 与微分 $upright(d) y$．这有时甚至会导致“微分就是无穷小增量”这种不正确而且有害的说法（实际上，微分一般来说既不是增量，也不是无穷小量）．把原来的函数换成另一个函数自然引发出两个问题：1）这种代换在什么范围内是允许的？2）这种代换会带来什么好处？认真回答这两个问题对我们将是有益的．

要回答第一个问题，我们将从关系式

#dmath[$ f'(x) = lim_(Delta x -> 0) frac(Delta y, Delta x) $]

#cont[出发，并以 $alpha$ 来表示由此关系式而得的无穷小量 $display(frac(Delta y, Delta x)) - f'(x)$．这使得]

#eqnum("3′")[$ Delta y = f'(x) Delta x + alpha Delta x = upright(d) y + alpha Delta x. $]

因为当 $Delta x -> 0$ 时 $alpha -> 0$，所以乘积 $alpha Delta x$ 是比 $Delta x$ 更为高阶的无穷小量．这里是以 $Delta x$ 为自变量，所以比值 $display(frac(upright(d) y, upright(d) x)) = f'(x)$ 对 $Delta x$ 而言是常量（但对 $x$ 而言却是变量#footnote[请比较上一个脚注．—— 译者注]），

#pagebreak(weak: true)
