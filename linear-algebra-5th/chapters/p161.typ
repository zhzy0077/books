#import "../theme.typ": *
#set par(spacing: 14pt, leading: 12.8pt)

#secBracket[3.2  $bold(A)$ 的零空间: 求解 $bold(A) bold(x) = bold(0)$ 与 $bold(R) bold(x) = bold(0)$]

#block(stroke: 0.6pt, radius: 4pt, inset: (x: 10pt, y: 10pt), width: 100%, above: 22pt)[
  #enum(numbering: "1.", tight: false,
    [$m times n$ 矩阵 $bold(A)$ 在 $R^n$ 中的零空间 $bold(N) (bold(A))$ 是 $bold(A) bold(x) = bold(0)$ 的解 $bold(x)$ 的全体, 其中包括了零解 $bold(x) = bold(0)$.],
    [消元法 (由 $bold(A)$ 到 $bold(U)$ 再到 $bold(R)$) 并不改变零空间: $bold(N) (bold(A)) = bold(N) (bold(U)) = bold(N) (bold(R))$.],
    [最简行阶梯形矩阵 $bold(R) = "rref"(bold(A))$ 的主元全为 1, 且其上、下方元素皆为零.],
    [若 $bold(R)$ 的第 $j$ 列是自由的 (即无主元), 则存在 $bold(A) bold(x) = bold(0)$ 的一个满足 $x_j = 1$ 的 “特殊解”.],
    [矩阵主元数即 $bold(R)$ 中非零行数目, 亦即秩 $r$. 此时矩阵中存在 $n - r$ 个自由列.],
    [对于满足 $m < n$ 的 $m times n$ 矩阵 $bold(A)$, 其零空间含有 $bold(A) bold(x) = bold(0)$ 的非零解.],
  )
]

本节讨论包含 $bold(A) bold(x) = bold(0)$ 全部解的子空间. $m times n$ 矩阵 $bold(A)$ 可能为方阵或长方阵. 该方程组对应 $bold(A) bold(x) = bold(b)$ 中的 $bold(b)$ 是零向量的情形. 此时立刻可以得到一个解为 $bold(x) = bold(0)$. 对于可逆矩阵 $bold(A)$, 这就是 $bold(A) bold(x) = bold(0)$ 的唯一解. 对于非可逆矩阵, $bold(A) bold(x) = bold(0)$ 存在非零解. 每个解 $bold(x)$ 均属于 $bold(A)$ 的零空间.

利用消元法, 可以求出全部解, 从而得到这个非常重要的子空间——矩阵的零空间.

#dmath[$ "零空间" bold(N) (bold(A)) "由" bold(A) bold(x) = bold(0) "的全部解构成, 这些解向量" bold(x) "均在" bold(R)^n "中." $]

先验证解向量构成子空间. 假设 $bold(x)$ 与 $bold(y)$ 均在零空间中 (即 $bold(A) bold(x) = bold(0)$ 和 $bold(A) bold(y) = bold(0)$), 由矩阵乘法规则得到 $bold(A) (bold(x) + bold(y)) = bold(0) + bold(0)$ 和 $bold(A) (c bold(x)) = c bold(0)$, 即等号右边仍为零向量, 因此 $bold(x) + bold(y)$ 与 $c bold(x)$ 也都在零空间 $bold(N) (bold(A))$ 之中. 鉴于加法与数乘结果均含于零空间, 所以它是一个子空间.

再次强调: 解向量 $bold(x)$ 有 $n$ 个分量, 这些向量都在 $R^n$ 中, 因此零空间是 $R^n$ 的子空间. 而列空间 $bold(C) (bold(A))$ 是 $R^m$ 的子空间.

#hei[例 1]　描述 $bold(A) = mat(delim: "[", 1, 2; 3, 6)$ 的零空间. 该矩阵是奇异的!

#hei[解]　对线性方程组 $bold(A) bold(x) = bold(0)$ 使用消元法:

#dmath[$ cases(x_1 + 2x_2 = 0 ",", 3x_1 + 6x_2 = 0 ",") quad -> quad cases(x_1 + 2x_2 = 0 ",", 0 = 0 ".") $]

原方程组实际上只含一个方程, 因为第二个方程是第一个方程的 3 倍. 在行图中, 直线 $x_1 + 2x_2 = 0$ 与直线 $3x_1 + 6x_2 = 0$ 是一样的. 该直线就是零空间 $bold(N) (bold(A))$, 它包含了全部解 $(x_1, x_2)$.

为了描述 $bold(A) bold(x) = bold(0)$ 的解, 下面介绍一种有效的方法. 在直线上选择一个点 (即 “特殊解”), 则直线上所有点均为该点的倍数. 特别地, 取第二个分量 $x_2 = 1$, 由方程 $x_1 + 2x_2 = 0$ 可知, 第一个分量必为 $x_1 = -2$. 从而特殊解为 $bold(s) = (-2,1)$.



#pagebreak()
