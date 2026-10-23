#import "../theme.typ": *

#dmath[$ c_(x_0) = limits(lim)_(y -> b) z in V; $]

但由极限概念的定义, 这就表明: 对数 (或符号)$c_(x_0)$ 的任何邻域 $V'$, 都可以找出数 (或符号)$b$ 的邻域 $B_(x_0)$, 使得当 $x = x_0$ 以及对任何 $y in B_(x_0)$, 都有 $z in V'$. 很显然, 这不妨碍我们把邻域 $V'$ 选得这样小, 以致 $V' subset V$(因为 $c_(x_0) in V$). 另一方面, 因为点 $(x_0, b) in U$, 所以我们可以选取如此靠近 $b$ 的数 $y_0 in B_(x_0)$, 使得点 $(x_0, y_0)$ 也属于邻域 $U$(图 10).

#figureTextLayout("discontinuous-limit",
  figureInset(10)[
    #sourceFigure("assets/p038/fig10.png", figureCaption(10))
  ],
  [由于 $y_0 in B_(x_0)$, 此时在点 $(x_0, y_0)$, $z in V' subset V$. 现在注意到, 由于 $U$ 是点 $(a, b)$ 的任意邻域以及 $V$ 是数 (或符号)$c$ 的任意邻域, 则我们找到了点 $(x_0, y_0) in U$, 使得 $z in V$. 这件事证明了 $c$ 是量 $z$ 当 $x -> a, y -> b$ 时的部分极限. 如同我们所设的那样, 若 $limits(lim)_(x -> a \ y -> b) z$ 存在, 则它是唯一的部分极限, 因而应当等于 $c$. 此即所要证明的.],
)

#pagebreak(weak: true)
