#import "../theme.typ": *

#secBracket[6.2  矩阵对角化]

#block(stroke: 0.6pt, radius: 4pt, inset: (x: 10pt, y: 10pt), width: 100%, above: 22pt)[
  #hei[1.] $bold(A) bold(X) = bold(X) bold(Lambda)$ 的各列为 $bold(A) bold(x)_k = lambda_k bold(x)_k$, 其中特征值矩阵 $bold(Lambda)$ 是对角矩阵.

  #hei[2.] 对 $n$ 阶矩阵 $bold(A)$, $n$ 个线性无关特征向量所成 $bold(X)$ 对角化 $bold(A)$:

  #align(center)[#box(stroke: 0.6pt, inset: 3pt)[$ bold(A) = bold(X) bold(Lambda) bold(X)^(-1), quad bold(Lambda) = bold(X)^(-1) bold(A) bold(X) . $]]

  #hei[3.] 特征向量矩阵 $bold(X)$ 也将 $bold(A)$ 的所有幂 $bold(A)^k$ 对角化: #box(stroke: 0.6pt, inset: 3pt)[$ bold(A)^k = bold(X) bold(Lambda)^k bold(X)^(-1) $].

  #hei[4.] $bold(u)_k = bold(A)^k bold(u)_0 = bold(X) bold(Lambda)^k bold(X)^(-1) bold(u)_0 =$ #box(stroke: 0.6pt, inset: 3pt)[$ c_1 lambda_1^k bold(x)_1 + c_2 lambda_2^k bold(x)_2 + dots.c + c_n lambda_n^k bold(x)_n $] 为方程 $bold(u)_(k+1) = bold(A) bold(u)_k$ 的解.

  #hei[5.] 互异特征值 $arrow.r$ $bold(X)$ 可逆, 且 $bold(A)$ 可对角化;\
   相等特征值 $arrow.r$ $bold(A)$ 线性无关的特征向量可能太少, 导致 $bold(X)^(-1)$ 不存在.

  #hei[6.] 每个矩阵 $bold(C) = bold(B)^(-1) bold(A) bold(B)$ 与 $bold(A)$ 有相同的特征值, 这些 $bold(C)$ “相似” 于 $bold(A)$.
]



当 $bold(x)$ 为特征向量 (对应特征值 $lambda$) 时, $bold(A)$ 左乘 $bold(x)$ 只是#hei[数 $lambda$ 乘 $bold(x)$: $bold(A) bold(x) = lambda bold(x)$]. 矩阵运算的难度大大降低了. 此时可以专注于各个特征向量, 而不是同时处理所有元素. 这就像分析一个对角矩阵时, 不必关注对角线之外元素. 例如, 对角矩阵的 100 次方是容易计算的.

#hei[本节的要点非常直接: 当恰当运用特征向量时, 矩阵 $bold(A)$ 就变成对角矩阵 $bold(Lambda)$.] 这是关键思想的矩阵形式. 先从一个基本计算开始本节内容, 后面再解释式子 $bold(A) bold(X) = bold(X) bold(Lambda)$ 的涵义.



#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  对角化　设 $n times n$ 矩阵 $bold(A)$ 有 $n$ 个线性无关的特征向量 $bold(x)_1, bold(x)_2, dots.c, bold(x)_n$, 以它们为列构成特征向量矩阵 $bold(X)$, 那么 $bold(X)^(-1) bold(A) bold(X)$ 是特征值矩阵 $bold(Lambda)$:

  
  #eqnumL([特征向量矩阵 $bold(X)$\ 特征值矩阵 $bold(Lambda)$], $ bold(X)^(-1) bold(A) bold(X) = bold(Lambda) = mat(delim: "[", lambda_1, , , ; , lambda_2, , ; , , dots.down, ; , , , lambda_n) . $, 1)
]



上述矩阵 $bold(A)$ “对角化” 了. 这里用大写字母 $bold(Lambda)$ 表示特征值矩阵, 是由于小写字母 $lambda$ 表示的特征值都在该矩阵的主对角线上.

 例 1　矩阵 $bold(A) = mat(delim: "[", 1, 5; 0, 6)$ 是三角形矩阵, 那么它的特征值都在主对角线上: $lambda = 1$ 和 $lambda = 6$.



#grid(
  columns: (auto, 1fr),
  column-gutter: 12pt,
  align: horizon,
  [特征向量\ 构成 $bold(X)$\ $ mat(delim: "[", 1; 0) , mat(delim: "[", 1; 1) $],
  align(center)[
    #grid(
      columns: (auto, auto, auto, auto, auto),
      column-gutter: 8pt,
      row-gutter: 6pt,
      align: center + horizon,
      [$ mat(delim: "[", 1, -1; 0, 1) $], [$ mat(delim: "[", 1, 5; 0, 6) $], [$ mat(delim: "[", 1, 1; 0, 1) $], [$ = $], [$ mat(delim: "[", 1, 0; 0, 6) , $],
      [$bold(X)^(-1)$], [$bold(A)$], [$bold(X)$], [$=$], [$bold(Lambda)$.],
    )
  ]
)



换言之, $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$. 再注意到 $bold(A)^2 = bold(X) bold(Lambda) bold(X)^(-1) bold(X) bold(Lambda) bold(X)^(-1)$, 故 $bold(A)^2$ 等于 $bold(X) bold(Lambda)^2 bold(X)^(-1)$.





#pagebreak()
