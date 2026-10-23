#import "../theme.typ": *

#dingliC[
  #eqnumL([矩阵指数函数 $e^(bold(A) t)$], $ e^(bold(A) t) = bold(I) + bold(A) t + 1/2 (bold(A) t)^2 + 1/6 (bold(A) t)^3 + dots.c = sum_(n=0)^infinity (bold(A) t)^n/(n!) $, 14)

  它关于 $t$ 的导数是 $bold(A) e^(bold(A) t)$:

  $ bold(A) + bold(A)^2 t + 1/2 bold(A)^3 t^2 + dots.c = bold(A) e^(bold(A) t), $

  它的特征值为 $e^(lambda t)$:

  $ (bold(I) + bold(A) t + 1/2 (bold(A) t)^2 + dots.c) bold(x) = (1 + lambda t + 1/2 (lambda t)^2 + dots.c) bold(x). $
]

上面的 $lambda$ 为 $bold(A)$ 的特征值, 除 $(bold(A) t)^n$ 的数是 "$n$ 的阶乘": $n! = 1 dot 2 dot dots.c dot (n-1) n$, 并规定 $0! = 1$. 排在 $1, 2, 6$ 之后的阶乘为 $4! = 24$ 和 $5! = 120$. 它们增长得很快, 因此上述级数 (14) 总是收敛的, 其导数总是 $bold(A) e^(bold(A) t)$. 因此 $e^(bold(A) t) bold(u)(0)$ 就是求解微分方程 $(dif bold(u))/(dif t) = bold(A) bold(u)$ 的简化公式——即使特征向量数目不够, 也是适用的.

后面的例 4 将展示在缺少一个特征向量的情况下, 该级数仍可用于求解方程. 它将生成 $t e^(lambda t)$. 这里先在矩阵 $bold(A)$ 可对角化为 $bold(X) Lambda bold(X)^(-1)$ 的情形下, 将 $e^(bold(A) t)$ 化为 $bold(X) e^(Lambda t) bold(X)^(-1)$.

本章强调如何利用对角化求出 $bold(u)(t) = e^(bold(A) t) bold(u)(0)$. 设 $bold(A)$ 有 $n$ 个线性无关的特征向量, 故可对角化, 即 $bold(A) = bold(X) Lambda bold(X)^(-1)$. 在 $e^(bold(A) t)$ 对应的级数中, 将 $bold(A)$ 替换为 $bold(X) Lambda bold(X)^(-1)$. 只要 $bold(X) Lambda bold(X)^(-1) bold(X) Lambda bold(X)^(-1)$ 出现, 中间的 $bold(X)^(-1) bold(X)$ 就可消去: 利用级数提出因子 $bold(X)$ 和 $bold(X)^(-1)$,

#eqnum($ e^(bold(A) t) &= bold(I) + bold(X) Lambda bold(X)^(-1) t + 1/2 (bold(X) Lambda bold(X)^(-1) t)(bold(X) Lambda bold(X)^(-1) t) + dots.c \ &= bold(X) [bold(I) + Lambda t + 1/2 (Lambda t)^2 + dots.c] bold(X)^(-1), $, 15)

则 $e^(bold(A) t)$ 被对角化了: $e^(bold(A) t) = bold(X) e^(Lambda t) bold(X)^(-1)$!

$e^(bold(A) t)$ 与 $bold(A)$ 有相同的特征向量矩阵 $bold(X)$. 另外 $Lambda$ 是对角矩阵, 而 $e^(Lambda t)$ 也是对角矩阵, 数 $e^(lambda_i t)$ 就在对角线上. 计算 $bold(X) e^(Lambda t) bold(X)^(-1) bold(u)(0)$ 可得 $bold(u)(t)$:

#eqnum($ e^(bold(A) t) bold(u)(0) &= bold(X) e^(Lambda t) bold(X)^(-1) bold(u)(0) \ &= [bold(x)_1 quad bold(x)_2 quad dots.c quad bold(x)_n] mat(delim: "[", e^(lambda_1 t), , , ; , e^(lambda_2 t), , ; , , dots.down, ; , , , e^(lambda_n t)) mat(delim: "[", c_1; c_2; dots.v; c_n) . $, 16)

这个解 $e^(bold(A) t) bold(u)(0)$ 与之前由三个步骤得到的 (6) 式结果一致:

#yaodian[
  (1) $bold(u)(0) = c_1 bold(x)_1 + c_2 bold(x)_2 + dots.c + c_n bold(x)_n = bold(X) bold(c)$, 此处需要 $n$ 个线性无关的特征向量;

  (2) 每个 $bold(x)_i$ 乘其增长因子 $e^(lambda_i t)$;

  (3) $e^(bold(A) t) bold(u)(0)$ 的最佳形式为

  #eqnum($ bold(u)(t) = c_1 e^(lambda_1 t) bold(x)_1 + c_2 e^(lambda_2 t) bold(x)_2 + dots.c + c_n e^(lambda_n t) bold(x)_n . $, 17)
]

#pagebreak()