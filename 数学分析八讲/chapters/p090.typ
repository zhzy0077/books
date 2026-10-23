#import "../theme.typ": *

#leadLabel[定理]如果函数 $y = f(x)$ 在区间 $[x, x + n Delta x]$ 上有直到 $n - 1$ 阶的连续导函数，且在区间内部有 $n$ 阶导函数#footnote[在区间的端点处只要有 $n - 1$ 阶的单边导函数就行了．]，则存在数 $theta (0 < theta < 1)$, 使得

#eqnum("B")[$ Delta^n y = f^((n))(x + theta n Delta x)(Delta x)^n. $]

#cont[这里 $Delta^n y$ 表示已知函数 $y = f(x)$ 的“$n$ 阶差”，一阶差即是普通的增量 $Delta y = f(x + Delta x) - f(x)$, $n + 1$ 阶差定义为 $n$ 阶差的第一阶差，因而特别地有]

#dmath[$ Delta^2 &= Delta(Delta y) \
  &= [f(x + Delta x + Delta x) - f(x + Delta x)] - [f(x + Delta x) - f(x)] \
  &= f(x + 2 Delta x) - 2 f(x + Delta x) + f(x); \
  Delta^3 y &= f(x + 3 Delta x) - 3 f(x + 2 Delta x) + 3 f(x + Delta x) - f(x) $]

#cont[等等．一般地，容易用归纳法证明]

#dmath[$ Delta^n y &= f(x + n Delta x) - n f[x + (n - 1) Delta x] \
  &quad + frac(n(n - 1), 2) f[x + (n - 2) Delta x] - dots.h \
  &quad + (-1)^(n-1) n f(x + Delta x) + (-1)^n f(x). $]

#leadLabel[证明]当 $n = 1$ 时，该定理与拉格朗日定理一致．我们假设定理对 $n$ 阶差成立，再证明它对 $n + 1$ 阶差也成立．因此我们假设函数 $y = f(x)$ 在区间 $[x, x + (n + 1)Delta x]$ 上有 $n$ 阶的连续导函数，且在其内有 $n + 1$ 阶的导函数．由此得函数 $Delta y = f(x + Delta x) - f(x)$ 在区间 $[x, x + n Delta x]$ 上有 $n$ 阶的导函数．应用我们的定理于其 $n$ 阶差，则得

#dmath[$ Delta^n(Delta y) = (Delta x)^n {f^((n))(x + Delta x + theta_1 n Delta x) - f^((n))(x + theta_1 n Delta x)}, $]

#cont[其中 $0 < theta_1 < 1$．但从我们的前提条件得出：函数 $f^((n))$ 在区间 $[x + theta_1 n Delta x, x + (1 + theta_1 n)Delta x]$ 上连续且在其内可微，因而应用拉格朗日定理于上面等式的括号内，得到]

#dmath[$ Delta^(n+1) y &= (Delta x)^(n+1) f^((n+1))(x + theta_1 n Delta x + theta_2 Delta x) \
  &quad = (Delta x)^(n+1) f^((n+1))(x + theta (n + 1)Delta x), $]

#cont[此即是所要证明的．]

拉格朗日定理的另一个重要的推广是著名的“柯西公式”：设有两个在区间 $[a, b]$ 上连续且在其内可微的函数 $f_1 (x)$ 和 $f_2 (x)$，同时 $f'_2 (x)$ 在该区间的内部处处不为零．此时在区间 $[a, b]$ 内存在某一点 $c$，使得

#eqnum("C")[$ frac(f_1 (b) - f_1 (a), f_2 (b) - f_2 (a)) = frac(f'_1 (c), f'_2 (c)). $]

#pagebreak(weak: true)
