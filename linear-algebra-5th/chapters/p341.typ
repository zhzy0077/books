#import "../theme.typ": *
#set par(spacing: 20pt, leading: 15pt)
#show math.equation.where(block: true): set block(above: 26pt, below: 26pt)

#block(stroke: 0.6pt, inset: (x: 4pt, y: 16pt), width: 100%, above: 24pt)[
  由 $bold(u)_0 = c_1 bold(x)_1 + c_2 bold(x)_2 + dots.c + c_n bold(x)_n$ 得 $bold(u)_k = c_1 lambda_1^k bold(x)_1 + c_2 lambda_2^k bold(x)_2 + dots.c + c_n lambda_n^k bold(x)_n$.
]

上面展示了解法的三个步骤 (由 $bold(X)^(-1) bold(u)_0$ 得 $bold(c)$, 由 $bold(Lambda)^k$ 得 $lambda^k$, 以及由 $bold(X)$ 得到 $bold(x)$).

#hei[5.] 如果每个特征值对应足够多的特征向量 ($"GM" = "AM"$), 那么 $bold(A)$ 可对角化.

#v(16pt)
#barHead[■ 范例解析]
#v(12pt)

#hei[6.2 A]  卢卡斯 (Lucas) 数 $L_n$ 类似于斐波那契数, 不过 $L_1 = 1$, $L_2 = 3$. 使用与斐波那契数相同的递推式 $L_(k+2) = L_(k+1) + L_k$, 接下来的卢卡斯数是 $4,7,11,18$. 证明卢卡斯数 $L_100$ 是 $lambda_1^100 + lambda_2^100$, 其中 $lambda_1, lambda_2$ 为矩阵 $bold(A) = mat(delim: "[", 1, 1; 1, 0)$ 的特征值.

证　因为递推式 $L_(k+2) = L_(k+1) + L_k$ 与斐波那契数的相同 (只是初值不同而已), 所以可以像斐波那契数一样得到 $bold(u)_(k+1) = mat(delim: "[", 1, 1; 1, 0) bold(u)_k$. 原方程变为一个 $2 times 2$ 方程组:

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 28pt), width: 100%, above: 24pt, below: 26pt)[
  #align(center)[$ "令" bold(u)_k = mat(delim: "[", L_(k+1); L_k) , quad "则" quad cases(L_(k+2) = L_(k+1) + L_k, L_(k+1) = L_(k+1)) quad "就是" quad bold(u)_(k+1) = mat(delim: "[", 1, 1; 1, 0) bold(u)_k . $]
]

$bold(A) = mat(delim: "[", 1, 1; 1, 0)$ 的特征值与特征向量仍然出自 $lambda^2 = lambda + 1$:

#dmath[$ lambda_1 = (1 + sqrt(5)) / 2 quad "对应" quad bold(x)_1 = mat(delim: "[", lambda_1; 1) , quad lambda_2 = (1 - sqrt(5)) / 2 quad "对应" quad bold(x)_2 = mat(delim: "[", lambda_2; 1) . $]

现在求解 $c_1 bold(x)_1 + c_2 bold(x)_2 = bold(u)_1 = (3,1)$, 解为 $c_1 = lambda_1$ 和 $c_2 = lambda_2$, 验算:

#dmath[$ lambda_1 bold(x)_1 + lambda_2 bold(x)_2 = mat(delim: "[", lambda_1^2 + lambda_2^2; lambda_1 + lambda_2) = mat(delim: "[", "tr"(bold(A)^2); "tr"(bold(A))) = mat(delim: "[", 3; 1) = bold(u)_1 . $]

$bold(u)_100 = bold(A)^99 bold(u)_1$ 给出了卢卡斯数对 $(L_101, L_100)$. 特征向量 $bold(x)_1$ 和 $bold(x)_2$ 的第二个分量均为 1, 所以 $bold(u)_100$ 的第二个分量即为所求:

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 12pt, y: 18pt), width: 100%, above: 18pt, below: 20pt)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 2em,
    align: horizon,
    [#hei[卢卡斯数]],
    [$ L_100 = c_1 lambda_1^99 + c_2 lambda_2^99 = lambda_1^100 + lambda_2^100 . $],
  )
]

比起斐波那契数, 卢卡斯数的初值更大. 由前面的推导可知, #box[当 $k -> oo$ 时, $L_k/F_k -> sqrt(5)$.]

#pagebreak()