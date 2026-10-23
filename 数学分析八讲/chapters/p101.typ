#import "../theme.typ": *

#cont[们的讨论中得出的，因此，是微分 $d z$ 存在的推论.]

如同你们所看到那样，迄今为止的一切都是与一维情形完全类似地推得的.

但是，与一维情形相反的是，在一定点处偏导数 $display(frac(partial z, partial x))$ 及 $display(frac(partial z, partial y))$ 的存在还不足以保证在该点处微分 $d z$ 的存在性. 例如，对函数

#dmath[$ z = cases(
  display(frac(2 x y, sqrt(x^2 + y^2))) "," quad "当" x^2 + y^2 != 0 "时，",
  0 "," quad "当" x = y = 0 "时，",
) $]

在 $(0, 0)$ 点处，很显然有

#derivationDisplay[$ (Delta z)_(Delta x = 0) = (Delta z)_(Delta y = 0) = 0, $]

#continuationDisplay([因此], [$ frac(partial z, partial x) = frac(partial z, partial y) = 0, $])

如果当 $x = y = 0$ 时微分 $d z$ 存在，则因此应有 (16) 式恒等于零，即据 (15) 式应有 $Delta z = o(rho)$. 但这是不对的，因为例如当 $Delta x = Delta y != 0$ 时，很显然有

#derivationDisplay[$ Delta z = sqrt(2) Delta x, quad rho = sqrt(2) Delta x, quad Delta z = rho. $]

我们指出：如果 $display(frac(partial f, partial x))$ 及 $display(frac(partial f, partial y))$ 在点 $(x, y)$ 处连续，则在该点处表达式 (16) 是函数 $z = f(x, y)$ 的微分. 实际上，

#derivationAligned[$ Delta z &= f(x + Delta x, y + Delta y) - f(x, y) \
  &= [f(x + Delta x, y + Delta y) - f(x, y + Delta y)] \
  &quad + thin [f(x, y + Delta y) - f(x, y)]. $]

右边的第一个差由拉格朗日定理可化为

#derivationDisplay[$ Delta x f'_x (x + theta Delta x, y + Delta y) quad (0 < theta < 1), $]

而由函数 $f'_x (x, y)$ 在点 $(x, y)$ 处的连续性的假设，当 $Delta x -> 0, Delta y -> 0$ 时，必有

#derivationDisplay[$ f'_x (x + theta Delta x, y + Delta y) - f'_x (x, y) -> 0. $]

则上述的第一个差与 $f'_x (x, y) Delta x$ 相差一个形如 $o(Delta x) = o(rho)$ 的量：

#derivationDisplay[$ f(x + Delta x, y + Delta y) - f(x, y + Delta y) = f'_x (x, y) Delta x + o(rho), $]

从另一方面，很显然，依偏导数的定义本身则有

#pagebreak(weak: true)
