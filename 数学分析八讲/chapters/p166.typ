#import "../theme.typ": *

#bottomEqnum(9)[$ &lt.eq.slant M {x'' - x_(l - 1) + (l - k - 1) frac(alpha, n) + x_k - x'} \
    &= M {x'' - x_(l - 1) + (x_(l - 1) - x_k) + x_k - x'} \
    &= M(x'' - x'). $]

#cont[由此直接看出，当 $|x'' - x'|$ 充分小时有 $|phi_n (x'') - phi_n (x')| < epsilon$，不管点 $x'$ 与 $x''$ 的位置怎样以及 $n$ 是怎样的数.]

3) 因为函数 $phi_n (x)$ 的集合在区间 $[x_0, x_0 + alpha]$ 上有界且等度连续，则由所证明的引理，它应包含有在此区间上一致收敛的函数序列. 因此今后我们将只考虑这个序列，而且我们可以毫无顾虑地仍旧以 $phi_1 (x), phi_2 (x), dots.c, phi_n (x), dots.c$ 来表示它. 这也就是说，当 $n -> infinity$ 时 $phi_n (x) -> phi (x)$ 对 $x_0 lt.eq.slant x lt.eq.slant x_0 + alpha$ 一致成立. 现在我们来证明，以这种方式确定的函数 $phi (x)$ 满足所求证的定理的所有条件. 因为对任何 $n$ 都有 $phi_n (x_0) = y_0$，所以首先有 $phi (x_0) = y_0$.

4) 我们来证明当 $x_0 lt.eq.slant x lt.eq.slant x_0 + alpha$ 时函数 $phi (x)$ 满足微分方程 (3). 设给定任意的 $epsilon > 0$. 由函数 $f(x, y)$ 的连续性及区域 $D$ 的有界性和闭性知，存在 $delta > 0$，使得对区域 $D$ 的任意两点 $(xi_1, eta_1)$ 和 $(xi_2, eta_2)$，只要有不等式 $|xi_2 - xi_1| < delta, |eta_2 - eta_1| < 2 M delta$，则必成立不等式

#dmath[$ |f(xi_2, eta_2) - f(xi_1, eta_1)| < epsilon. $]

#cont[像以往一样，记 $phi_n (x_i) = y_i$，由不等式 (9) 我们得到，当 $x' lt.eq.slant x_i lt.eq.slant x''$ 时，]

#dmath[$ |y_i - phi_n (x')| lt.eq.slant M(x_i - x') lt.eq.slant M(x'' - x'). $]

#cont[又因为对充分大的 $n$ 有]

#dmath[$ |phi_n (x') - phi (x')| lt.eq.slant M(x'' - x') $]

#cont[所以]

#dmath[$ |y_i - phi (x')| lt.eq.slant 2 M(x'' - x'). $]

#cont[因此，如果 $|x'' - x'| lt.eq.slant delta$，则对充分大的 $n$ 以及 $x' lt.eq.slant x_i lt.eq.slant x''$，我们有]

#dmath[$ |x_i - x'| < delta, quad |y_i - y'| lt.eq.slant 2 M delta, $]

#cont[这里设 $y' = phi (x')$. 由此按数 $delta$ 的定义，当 $x' lt.eq.slant x_i lt.eq.slant x''$ 时，对充分大的 $n$，我们得到]

#dmath[$ |f(x_i, y_i) - f(x', y')| < epsilon $]

#cont[或者]

#dmath[$ f(x', y') - epsilon lt.eq.slant f(x_i, y_i) lt.eq.slant f(x', y') + epsilon. $]

#cont[如果对 (8) 式右边的每一项应用此估计式，则我们很显然得到：当 $0 < x'' - x' < delta$ 以及 $n$ 充分大时有]

#dmath[$ [f(x', y') - epsilon](x'' - x') lt.eq.slant phi_n (x'') - phi_n (x') $]

#pagebreak(weak: true)
