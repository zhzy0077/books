#import "../theme.typ": *

#dmath[$ y = tan x = frac(sin x, cos x) $]

#cont[在所有的 $cos x != 0$ 的 $x$ 值处连续，即对形如 $x != (2k + 1) frac(pi, 2)$ 的 $x$ 值连续，其中 $k$ 为任意整数.]

指数函数 $a^x$ 的连续性的证明要复杂一些. 为明确起见，我们假设 $a > 1$，因而函数 $y = a^x$ 是增函数. 我们先来证明当 $x -> 0$ 时 $a^x -> a^0 = 1$. 为明确起见，再设 $x -> +0$，即只对正值 $x$ 研究 $a^x$. 当 $x -> -0$ 时的情形可以完全类似地解决. 当 $x > 0$ 时 $a^x > 1$，且要证 $x -> +0$ 时函数 $a^x -> 1$，只需证明对于无论怎样小的 $epsilon > 0$，当 $x > 0$ 充分小时 $a^x < 1 + epsilon$. 但对任意的自然数 $n$ 有

#dmath[$ (1 + epsilon)^n = 1 + n epsilon + dots.c > n epsilon, $]

#cont[由此得，当 $n -> +infinity$ 时，$(1 + epsilon)^n -> +infinity$. 这就表明对于充分大的 $n$，]

#dmath[$ (1 + epsilon)^n > a, quad a^(frac(1, n)) < 1 + epsilon. $]

#cont[又因 $a^x$ 为增函数，则对所有充分小的正 $x$ 有]

#dmath[$ 1 < a^x < 1 + epsilon, $]

#cont[即实际上当 $x -> 0$ 时 $a^x -> 1$. 接下来的证明就简单了. 关系式]

#dmath[$ a^x - a^alpha = a^alpha (a^(x - alpha) - 1) $]

#cont[表明，当 $x -> alpha$ 时函数 $a^x$ 有极限 $a^alpha$，即函数对任何 $x$ 值连续.]

无理函数、对数函数和反三角函数的连续性问题现在可以用反函数的连续性的一般理论加以解决：如果函数 $y = f(x)$ 在区间 $[a, b]$ 上是连续的且是增加的，则其反函数 $x = phi(y)$ 也在区间 $[alpha, beta]$ 上连续，其中 $alpha = f(a), beta = f(b)$. 实际上，设 $gamma$ 为区间 $[alpha, beta]$ 上的任意一点. 需要证明

#dmath[$ lim_(y -> gamma) phi(y) = phi(gamma). $]

#cont[先设 $y -> gamma - 0$，即 $y$ 从下方趋近于 $gamma$. 因为同函数 $f(x)$ 一样，反函数 $phi(y)$ 也是增函数，所以 $limits(lim)_(y -> gamma - 0) phi(y)$ 在任何情况下都存在. 我们用 $c$ 表示这个极限并且证明 $c = phi(gamma)$.]

因为函数 $f(x)$ 连续且当 $y -> gamma - 0$ 时 $phi(y) -> c$，则当 $y -> gamma - 0$ 时 $y = f[phi(y)] -> f(c)$，由此得 $f(c) = gamma$. 这可以直接得到：$c = phi[f(c)] = phi(gamma)$，即

#dmath[$ lim_(y -> gamma - 0) phi(y) = phi(gamma), $]

#cont[又因为我们同样容易证明]

#dmath[$ lim_(y -> gamma + 0) phi(y) = phi(gamma), $]

#pagebreak(weak: true)
