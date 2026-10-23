#import "../theme.typ": *

#figure(image("../assets/fig-p440-1.png", width: 88%), numbering: none, caption: [图 8.1　线到线、等间距点到等间距点, $bold(u) = 0$ 到 $T(bold(u)) = 0$.])

线性性质可推广到 3 个向量或 $n$ 个向量的组合:

#dingliC[
  #grid(columns: (auto, 1fr, auto), column-gutter: 1em, row-gutter: 4pt,
    align(horizon)[#hei[线性性质]],
    align(horizon)[$bold(u) = c_1 bold(v)_1 + c_2 bold(v)_2 + dots.c + c_n bold(v)_n$ 必然映射为],
    [],
    [],
    align(horizon)[$T(bold(u)) = c_1 T(bold(v)_1) + c_2 T(bold(v)_2) + dots.c + c_n T(bold(v)_n).$],
    align(horizon)[$(1)$],
  )
]

由 2 个向量的情形可推出 3 个向量的情形的证明:

#dmath[$ T(c bold(u) + d bold(v) + e bold(w)) = T(c bold(u)) + T(d bold(v) + e bold(w)), $]

对右边 2 项再次应用线性性质, 得到 $c T(bold(u)) + d T(bold(v)) + e T(bold(w))$.

$n$ 个向量情形的准则 (1) 给出关于线性变换最重要的事实:

#yaodian[
  如果知道了向量空间 $V$ 的一组基中全部向量 $bold(v)_1, bold(v)_2, dots.c, bold(v)_n$ 的像 $T(bold(v))$, #linebreak() 那么就知道了空间 $V$ 中任一向量 $bold(u)$ 的像 $T(bold(u))$.
]

理由如下: 空间 $V$ 中任一向量均为基向量 $bold(v)_j, j = 1, 2, dots.c, n$ 的线性组合, 线性性质表明, $T(bold(u))$ 为输出 $T(bold(v)_j), j = 1, 2, dots.c, n$ 的同样系数的线性组合.

#hei[例 4]　设线性变换 $T$ 为求输入 $bold(u)$ 的导数: $T(bold(u)) = (dif bold(u))/(dif x)$. 如何计算 $bold(u) = 6 - 4x + 3x^2$ 的导数? 可从基向量组 $1, x$ 和 $x^2$ 开始, 它们的导数分别为 0, 1 和 $2x$. 于是求基向量任意线性组合的导数均可以使用线性性质:

#dmath[$ (dif bold(u))/(dif x) = 6 (1 "的导数") - 4 (x "的导数") + 3 (x^2 "的导数") = -4 + 6x. $]

微积分的全部内容是基于线性性质的! 微积分基础中先求基本初等函数, 如 $x^n, sin x, cos x$ 和 $e^x$ 等的导数, 再对它们的所有组合应用线性性质, 即可求出一些初等函数的导数.

需要说明的是, 微积分中唯一特别的法则是链式法则, 该法则给出复合函数 $f(g(x))$ 的导数.

$T(bold(u)) = (dif bold(u))/(dif x)$ 的零空间: 计算零空间即求解 $T(bold(u)) = 0$. 仅当 $bold(u)$ 为常数函数时, 其微分为 0. 因此零空间为一维的, 它是函数空间中的一条 “线”, 包含特解 $bold(u) = 1$ 的所有倍数.



#pagebreak()