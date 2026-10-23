#import "../theme.typ": *

#align(center, subsec[6.3　微分方程组])

#v(8pt)

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #hei[1.] 如果 $bold(A) bold(x) = lambda bold(x)$, 那么 $bold(u)(t) = e^(lambda t) bold(x)$ 是微分方程组 $(dif bold(u))/(dif t) = bold(A) bold(u)$ 的解, 每个 $lambda$ 和 $bold(x)$ 对应一个解 $e^(lambda t) bold(x)$.

  #hei[2.] 若矩阵 $bold(A)$ 的对角化分解式为 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$, 则

  #align(center)[#box(stroke: 0.6pt, inset: 3pt)[$ bold(u)(t) = e^(bold(A) t) bold(u)(0) = bold(X) e^(bold(Lambda) t) bold(X)^(-1) bold(u)(0) = c_1 e^(lambda_1 t) bold(x)_1 + c_2 e^(lambda_2 t) bold(x)_2 + dots.c + c_n e^(lambda_n t) bold(x)_n . $]]

  #hei[3.] 当矩阵 $bold(A)$ 的所有特征值的实部都小于 0 时, $bold(A)$ 是稳定的, 且有 $bold(u)(t) -> 0$ 和 $e^(bold(A) t) -> bold(O)$.

  #hei[4.] 若矩阵 $bold(A)$ 可对角化, 则矩阵指数函数

  #align(center)[$ e^(bold(A) t) = bold(I) + bold(A) t + dots.c + ((bold(A) t)^n)/(n!) + dots.c = bold(X) e^(bold(Lambda) t) bold(X)^(-1) . $]

  #hei[5.] 二阶微分方程 $u'' + B u' + C u = 0$ 等价于 一阶微分方程组 $mat(delim: "[", u; u')' = mat(delim: "[", 0, 1; -C, -B) mat(delim: "[", u; u') .$
]

#v(6pt)

矩阵 $bold(A)$ 的特征值和特征向量以及对角化分解式 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$ 很适合计算矩阵的幂 $bold(A)^k$. 它们同样也适于求解微分方程组 $(dif bold(u))/(dif t) = bold(A) bold(u)$. 本节大部分内容属于线性代数范畴, 但还需要一点微积分知识: 关于 $t$ 的函数 $e^(lambda t)$ 的导数为 $lambda e^(lambda t)$. 本节的主要内容是: 将常系数微分方程 (组) 转化为能用线性代数求解的形式.

可以利用指数函数求解常微分方程 $(dif u)/(dif t) = u$ 和 $(dif u)/(dif t) = lambda u$:

#eqnum($ (dif u)/(dif t) = u quad "解得" quad u(t) = C e^t, quad quad (dif u)/(dif t) = lambda u quad "解得" quad u(t) = C e^(lambda t) . $, 1)

当 $t = 0$ 时, 它们都能推出 $u(0) = C$, 即 “初值” $u(0)$ 就是 $C$ 的值. 因此 $t = 0$ 时初值为 $u(0)$ 的上述两个方程, 解分别为 $u(t) = u(0) e^t$ 和 $u(t) = u(0) e^(lambda t)$.

刚才只是求解 $1 times 1$ 形状的问题. 线性代数可解决 $n times n$ 形状的情形 $(dif bold(u))/(dif t) = bold(A) bold(u)$, 未知数为向量函数 $bold(u)(t)$, 初值为给定的向量 $bold(u)(0)$. $n$ 个方程蕴涵 $n$ 阶方阵 $bold(A)$. 由 $bold(A)$ 的 $n$ 个特征值 $lambda$ 推出 $bold(u)(t)$ 中的 $n$ 个指数函数 $e^(lambda t)$:

#v(4pt)

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #eqnumL([包含 $n$ 个方程\ 的微分方程组], $ (dif bold(u))/(dif t) = bold(A) bold(u), quad "初值为向量" quad bold(u)(0) = mat(delim: "[", u_1 (0); u_2 (0); dots.v; u_n (0)) . $, 2)
]

#pagebreak()