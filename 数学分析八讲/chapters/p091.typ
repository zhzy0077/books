#import "../theme.typ": *

这个一般的公式（当 $f_2 (x) = x$ 时变为拉格朗日定理）的证明与拉格朗日定理的情况完全一样．令

#dmath[$ phi(x) = f_1 (x)[f_2 (b) - f_2 (a)] - f_2 (x)[f_1 (b) - f_1 (a)], $]

我们得到 $phi(a) = phi(b)$．因此函数 $phi(x)$ 要么在区间 $[a, b]$ 上为常数，要么在此区间内取得最大值或者最小值．由此完全同证明拉格朗日定理时一样，我们断定在某个点 $c$ 处 $(a < c < b)$ 必然有 $phi'(c) = 0$．这等价于等式 (C) 的结论．

还应注意，该等式 (C) 的左边不会是没有意义的，因为当 $f_2 (a) = f_2 (b)$ 时，由拉格朗日定理，函数 $f'_2 (x)$ 在 $[a, b]$ 之内应可以变为零，这是被排除于定理前提之外的．

#subsec[高阶微分]

正如你们所了解的，高阶的导数和微分是可以递推定义的：$n$ 阶导数是通过对 $n - 1$ 阶导数求导而得到的，类似的情形对微分也是如此．

函数 $y = f(x)$ 的高阶导数和微分之间有关系式

#eqnum(5)[$ upright(d)^n y = f^((n))(x) upright(d) x^n $]

#cont[（其中 $upright(d) x^n$ 表示的是自变量 $x$ 的一阶微分的 $n$ 次幂），其证明也是由归纳法给出的：如果 $x$ 是自变量，则 $upright(d) x = Delta x$ 与 $x$ 无关，因而由微分 (5) 式就得到（“$prime$”表示对 $x$ 求导）：]

#dmath[$ upright(d)^(n+1) y = upright(d)(upright(d)^n y) = (upright(d)^n y)' upright(d) x = f^((n+1))(x) upright(d) x^(n+1). $]

正如我们上面所看到的那样，当 $n = 1$ 时，当 $x$（从而也有 $y$）是自变量 $t$ 的任意的可微函数 $x = phi(t)$ 时，(5) 式仍然成立．容易证明当 $n = 2$ 时情况就变了：高阶微分对于自变量的变换不再有形式的不变性．实际上，我们要用 $(upright(d)^2 y)_x$ 或者 $(upright(d)^2 y)_t$ 来表示函数 $y = f(x)$ 的二阶微分，视我们是以量 $x$ 或者以量 $t$ 为自变量而定．

#cont[这时有]

#dmath[$ (upright(d)^2 y)_x = f''(x) upright(d) x^2, $]

#cont[同时有]

#dmath[$ (upright(d)^2 y)_t &= frac(upright(d)^2 f[phi(t)], upright(d) t^2) dot upright(d) t^2 = frac(upright(d) {f'[phi(t)] phi'(t)}, upright(d) t) dot upright(d) t^2 \
  &= {f''[phi(t)] phi'^2 (t) + f'[phi(t)] phi''(t)} upright(d) t^2 \
  &= f''(x) upright(d) x^2 + f'[phi(t)] phi''(t) upright(d) t^2. $]

#cont[我们看到这两个式子是不同的：第二个包含了一个添加的项 $f'[phi(t)] phi''(t) upright(d) t^2$，它在第一个式子中是没有的，并且只有当 $x$ 是 $t$ 的线性函数（$phi(t) = a t + b$）时才恒等于零．这就是说，二阶微分与一阶微分不同，它只有对于自变量的线性变换才有形式的不变性．]

#pagebreak(weak: true)
