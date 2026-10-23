#import "../theme.typ": *

#cont[形：函数 $f(x, y)$ 在区域 $D$ 上连续，但是却存在方程 (3) 的几个当 $x = x_0$ 时等于 $y_0$ 的解. 然而，只要对函数 $f(x, y)$ 要求稍多于简单的连续性，就可以保证解的唯一性，其中最方便的形式之一是一个更强的条件，它可表述成：存在正的常数 $k$，使得#em[对区域 $D$ 的任意的点 $(x, y_1)$ 和 $(x, y_2)$ 有]]

#eqnum("A")[$ |f(x, y_1) - f(x, y_2)| lt.eq.slant k |y_1 - y_2|. $]

#cont[说实在的，这个条件还不是条件中最宽的，但在多数情况下实际碰到的情况能满足它，并且由于它很简单，是很方便应用的.]

这样一来，就需要证明：#em[如果函数 $f(x, y)$ 在区域 $D$ 上连续且满足条件(A)#footnote[这条件称为利普希茨条件. —— 译者注]，则方程 (3) 当 $x = x_0$ 时等于 $y_0$ 的解 $y = phi(x)$ 是唯一的.]

我们假定，有两个函数 $phi_1 (x), phi_2 (x)$，当 $x_0 - alpha lt.eq.slant x lt.eq.slant x_0 + alpha$ 时都满足方程 (3) 且有 $phi_1 (x_0) = phi_2 (x_0) = y_0$. 设

#dmath[$ phi_2 (x) - phi_1 (x) = omega(x), $]

#cont[因而 $omega(x_0) = 0$. 此时，当 $x_0 - alpha lt.eq.slant x lt.eq.slant x_0 + alpha$ 时有]

#eqnum(10)[$ &|(dif omega)/(dif x)| = |(dif phi_2)/(dif x) - (dif phi_1)/(dif x)| = |f(x, phi_2 (x)) - f(x, phi_1 (x))| \
  &lt.eq.slant k |phi_2 (x) - phi_1 (x)| = k |omega(x)|. $]

#cont[我们以 $mu$ 来表示函数 $|omega(x)|$ 在区间 $[x_0 - display(frac(1, 2k)), x_0 + display(frac(1, 2k))]$ 和 $[x_0 - alpha, x_0 + alpha]$ 中的较小一个上的最大值（记这个区间为 $[x_0 - r, x_0 + r]$，其中 $r$ 表示数 $alpha$ 与 $display(frac(1, 2k))$ 中小的一个）.]

#cont[由函数 $|omega(x)|$ 的连续性知，这个最大值在某个确定的 $x = x_1$ 处存在：$|omega(x_1)| = mu$.]

#cont[应用关系式 (10) 和第一中值定理，我们得到]

#dmath[$ mu &= |omega(x_1)| = |omega(x_1) - omega(x_0)| = |integral_(x_0)^(x_1) (dif omega)/(dif x) dif x| \
  &lt.eq.slant |integral_(x_0)^(x_1) |(dif omega)/(dif x)| dif x| lt.eq.slant k |integral_(x_0)^(x_1) |omega(x)| dif x| \
  &lt.eq.slant k mu dot |x_1 - x_0| lt.eq.slant k mu dot frac(1, 2k) = frac(mu, 2). $]

#cont[由此得到 $mu = 0$. 这表明当 $x_0 - r lt.eq.slant x lt.eq.slant x_0 + r$ 时 $omega(x) = 0$. 如果 $r = alpha$，定理得证.]

#cont[如果 $r = display(frac(1, 2k)) < alpha$，则总会有]

#dmath[$ omega (x_0 - frac(1, 2k)) = omega (x_0 + frac(1, 2k)) = 0. $]

#cont[因此我们可以逐次利用点 $x_0 - display(frac(1, 2k))$ 及 $x_0 + display(frac(1, 2k))$ 代替 $x = x_0$ 作为始点来重复我们的讨论. 这使得我们可以断定，$omega(x) = 0$ 或者在区间 $[x_0 - 2 dot display(frac(1, 2k)), x_0 + 2 dot display(frac(1, 2k))]$ 上成立，]

#pagebreak(weak: true)
