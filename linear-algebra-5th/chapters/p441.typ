#import "../theme.typ": *
#set par(spacing: 15pt, leading: 13.2pt)
#show math.equation.where(block: true): set block(above: 16pt, below: 16pt)

$T(bold(u)) = (dif bold(u))/(dif x)$ 的列空间: 本例假设输入空间由所有二次函数 $bold(u) = a + b x + c x^2$ 构成, 则输出空间 (列空间) 为所有线性函数 $b + 2c x$. 注意, 计数定理 $r + (n - r) = n$ 仍然成立:

#dmath[列空间的维数 + 零空间的维数 $= 2 + 1 = 3 =$ 输入空间的维数.]

求导变换 $dif/(dif x)$ 对应的矩阵是什么? 即使是讨论导数, 也可以给出一个对应的矩阵表示. 设变换 $T = dif/(dif x)$, 则 $T$ 为线性变换, 且 $T$ 对基函数的作用是清晰的:

#eqnumL([对 $bold(v)_1, bold(v)_2, bold(v)_3 = 1, x, x^2$], $ (dif bold(v)_1)/(dif x) = 0, quad (dif bold(v)_2)/(dif x) = 1 = bold(v)_1, quad (dif bold(v)_3)/(dif x) = 2x = 2 bold(v)_2 . $, 2)

即三维输入空间 $V$ (二次函数) 被映射为二维输出空间 $W$ (线性函数). 将 $bold(v)_1, bold(v)_2, bold(v)_3$ 视为向量, 则给出变换矩阵:

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 22pt), width: 100%, above: 18pt, below: 20pt)[
  #grid(columns: (1fr, auto), align: (center + horizon, right + horizon),
    [$bold(A) = mat(delim: "[", 0, 1, 0; 0, 0, 2)$ 为求导变换 $T = dif/(dif x)$ 对应的矩阵.],
    [$(3)$],
  )
]

线性变换 $dif/(dif x)$ 可以完美地由矩阵乘法 $bold(A) bold(u)$ 来解释 (将函数改写向量): 对输入 $a + b x + c x^2$, 令 $bold(u) = (a, b, c)$, 则

$ "乘积" bold(A) bold(u) = mat(delim: "[", 0, 1, 0; 0, 0, 2) mat(delim: "[", a; b; c) = mat(delim: "[", b; 2c), $

对应输出 $(dif bold(u))/(dif x) = b + 2c x$. 由 $T$ 确定的 $bold(A)$ (后续将对每个线性变换确定一个变换矩阵) 依赖于输入基 $1, x, x^2$ 和输出基 $1, x$ 的选取.

接下来考虑积分, 它们给出微分变换 $T = dif/(dif x)$ 的广义逆 $T^+$. 由于所有常值函数的微分为 0 (多对一), 因此既不能写 “$T^(-1)$”, 也不能定义 “$T$ 的逆”.

#hei[例 5]　积分 $T^+$ 也是线性的:

$ integral_0^x (D + E x) dif x = D x + 1/2 E x^2. $

此时输入基为 $1, x$, 输出基为 $1, x, x^2$. 变换 $T^+$ 的矩阵 $bold(A)^+$ 为 $3 times 2$ 的: 对输入 $D + E x$, 令 $bold(v) = (D, E)$, 则

$ "乘积" bold(A)^+ bold(v) = mat(delim: "[", 0, 0; 1, 0; 0, 1/2) mat(delim: "[", D; E) = mat(delim: "[", 0; D; E/2), $

对应输出为 $bold(v)$ 的积分 $T^+(bold(v)) = D x + 1/2 E x^2$. 微积分基本定理指出, 积分是微分的广义逆. 从线性代数角度看, 矩阵 $bold(A)^+$ 为矩阵 $bold(A)$ 的广义逆:

#pagebreak()