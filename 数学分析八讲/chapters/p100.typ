#import "../theme.typ": *

#cont[即作为这样一个函数对 $x$ 的通常的导数，该函数即在 $f(x, y)$ 中给变量 $y$ 以固定的常值时所得的 $x$ 的函数. 类似地可以定义 $display(frac(partial f, partial y)) = f'_y (x, y)$. 这些偏导数中的每一个都和函数 $f(x, y)$ 一样，是两个自变量 $x, y$ 的二元函数. 为方便及直观计，我们这里时常把“当 $x = a, y = b$ 时”的说法用“在点 $(a, b)$ 处”的说法来代替，把它看成平面 $(x, y)$ 上的直角坐标为 $x = a, y = b$ 的点.]

首先应当定义已知函数 $z = f(x, y)$ 在已知点 $(a, b)$ 处的可微性概念. 在一元函数的情形，导数的存在当然等价于微分的存在，而且这时正如我们已经看到的，对函数 $y = f(x)$ 而言，微分 $dif y$ 定义为增量 $Delta x$ 的线性函数，当 $Delta x -> 0$ 时这个线性函数与增量 $Delta y$ 之差是一个高阶的无穷小.

现在来看二元函数 $z = f(x, y)$ 的情形，我们这里也约定称函数 $z$ 的微分是增量 $Delta x$ 和 $Delta y$ 的这样的线性组合 $A Delta x + B Delta y + C$，当 $Delta x -> 0, Delta y -> 0$ 时它与增量 $Delta z$ 相差一个高阶无穷小. 在一维的情形下我们可以（设 $f'(x) != 0$）把量 $Delta x, Delta y, dif y$ 中的任一个理解为基本的无穷小（其无穷小的阶彼此相等），为方便起见，在二维的情形（尽管绝对不是必须的）把量 $rho = sqrt(Delta x^2 + Delta y^2)$ 作为基本无穷小量，它表示“动”点 $(x + Delta x, y + Delta y)$ 与“始”点 $(x, y)$ 之间的距离. 如果无穷小 $Delta x$ 与 $Delta y$ 是具有同样阶的无穷小，则当然量 $rho$ 也具有同样的阶. 这也就是说，表达式 $A Delta x + B Delta y + C$ 是函数 $z = f(x, y)$ 的微分 $dif z$，如果当 $Delta x -> 0, Delta y -> 0$ 时有

#eqnum(15)[$ Delta z - (A Delta x + B Delta y + C) = o(rho) $]

#cont[成立的话. 现在来证明，如果 $dif z$ 存在，则偏导数 $display(frac(partial z, partial x))$ 及 $display(frac(partial z, partial y))$ 也都存在，且]

#dmath[$ A = frac(partial z, partial x), quad B = frac(partial z, partial y), quad C = 0, $]

#cont[因此]

#eqnum(16)[$ dif z = frac(partial z, partial x) Delta x + frac(partial z, partial y) Delta y. $]

#cont[实际上，首先由函数 $z$ 的连续性（我们当然要假定有这一点），关系式 (15) 取极限得 $C = 0$. 确定了这一点以后，再在公式 (15) 中令 $Delta y = 0$（依照我们的条件，该公式应当对以任何方式趋近于零的量 $Delta x$ 及 $Delta y$ 都成立），这就得到]

#dmath[$ (Delta z)_(Delta y = 0) = A Delta x + o(Delta x), $]

#cont[由此得]

#dmath[$ A = lim_(Delta x -> 0) frac((Delta z)_(Delta y = 0), Delta x) = frac(partial z, partial x), $]

#cont[类似地，可以确定 $B = display(frac(partial z, partial y))$. 这里很显然，偏导数 $display(frac(partial z, partial x))$ 及 $display(frac(partial z, partial y))$ 的本身的存在性是从我]

#pagebreak(weak: true)
