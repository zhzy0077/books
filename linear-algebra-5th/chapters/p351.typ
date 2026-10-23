#import "../theme.typ": *

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #hei[第 1 步]　将向量 $bold(u)(0) = (9, 7, 4)$ 表示为 $2 bold(x)_1 + 3 bold(x)_2 + 4 bold(x)_3$, 因此 $(c_1, c_2, c_3) = (2, 3, 4)$.

  #hei[第 2 步]　因子 $e^(lambda t)$ 给出指数函数解 $e^t bold(x)_1$ 和 $e^(2 t) bold(x)_2$ 以及 $e^(3 t) bold(x)_3$.

  #hei[第 3 步]　满足 $bold(u)(0)$ 的线性组合解为 $bold(u)(t) = 2 e^t bold(x)_1 + 3 e^(2 t) bold(x)_2 + 4 e^(3 t) bold(x)_3$.
]

系数 $2, 3, 4$ 源自解线性方程组 $c_1 bold(x)_1 + c_2 bold(x)_2 + c_3 bold(x)_3 = bold(u)(0)$:

#eqnum($ mat(delim: "[", bold(x)_1, bold(x)_2, bold(x)_3) mat(delim: "[", c_1; c_2; c_3) = mat(delim: "[", 1, 1, 1; 0, 1, 1; 0, 0, 1) mat(delim: "[", 2; 3; 4) = mat(delim: "[", 9; 7; 4) quad "即" quad bold(X) bold(c) = bold(u)(0) . $, 7)

了解了如何解 $(dif bold(u))/(dif t) = bold(A) bold(u)$ 的基本思想之后, 接下来更进一步. 由于包含二阶导数的方程在应用中频频出现, 以下来求解这类方程. 后续还会介绍当 $t -> oo$ 时, 判断 $bold(u)(t)$ 是趋于零还是无穷大, 抑或只是振荡的方法.

本节最后介绍矩阵指数函数 $e^(bold(A) t)$. 与利用 $bold(A)^k bold(u)_0$ 解方程 $bold(u)_(k+1) = bold(A) bold(u)_k$ 的思路相同, 利用简化公式 $e^(bold(A) t) bold(u)(0)$ 可求解方程 $(dif bold(u))/(dif t) = bold(A) bold(u)$. 例 3 将展示如何使用 “差分方程” 帮助求解微分方程.

以上所有这些步骤都用到了矩阵的特征值 $lambda$ 和特征向量 $bold(x)$. 本节求解的是可转化为线性代数问题的常系数微分方程问题, 由此阐明此类最简单也是最重要的微分方程——它的解完全基于增长因子 $e^(lambda t)$.

#subsec[二阶微分方程]

力学中最重要的方程就是 $m y'' + b y' + k y = 0$. 第一项是质量 $m$ 乘加速度 $a = y''$, 此项 $m a$ 等于力 $F$ (此即牛顿 (Newton) 第二定律). 此力包括阻尼 $-b y'$ 和正比于移动距离的弹力 $-k y$. 由于包含了二阶导数 $y'' = (dif^2 y)/(dif t^2)$, 所以这是一个二阶微分方程. 它具有常系数 $m, b, k$, 故仍是线性的.

在微分方程课程中, 上述方程解法就是代入 $y = e^(lambda t)$. 每求一次导数, 就得到一个因子 $lambda$. 解方程要用到 $y = e^(lambda t)$:

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #eqnum($ m (dif^2 y)/(dif t^2) + b (dif y)/(dif t) + k y = 0 quad "化为" quad (m lambda^2 + b lambda + k) e^(lambda t) = 0 . $, 8)
]

因此只需解出 $m lambda^2 + b lambda + k = 0$. 这个关于 $lambda$ 的方程有两个根 $lambda_1$ 和 $lambda_2$, 于是关于 $y$ 的方程就有两个解 $y_1 = e^(lambda_1 t)$ 和 $y_2 = e^(lambda_2 t)$. 除非 $lambda_1 = lambda_2$, 否则线性组合 $c_1 y_1 + c_2 y_2$ 给出了通解.

而线性代数课程则使用矩阵与特征值. 因此将关于 $y''$ 的标量方程转换为关于 $y$ 和 $y'$ 的向量方程: 只要一阶导数即可. 设质量为 $m = 1$, 则关于 $bold(u) = (y, y')$ 的方程可化为 $(dif bold(u))/(dif t) = bold(A) bold(u)$:

#pagebreak()