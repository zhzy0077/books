#import "../theme.typ": *

#figure(image("../assets/fig-p222-42.png", width: 82%), numbering: none, caption: [图 4.2　$m times n$ 矩阵 $bold(A)$ 的两对正交子空间, 维数相加分别为 $n$ 和 $m$. 此即关于 $R^n$ 中两个子空间以及 $R^m$ 中两个子空间的全局图.])

#hei[正交补]

#hei[重点]  基本子空间不仅是成对正交的, 它们的维数也是配对的. 例如, $R^3$ 中两条直线可以是垂直的, 但它们不会是 $3 times 3$ 矩阵的行空间与零空间: 这两条直线的维数均为 1, 相加为 2, 而一对基本子空间的维数 $r$ 和 $n-r$ 相加应该是 $n = 3$.

$3 times 3$ 矩阵的一对基本子空间的维数要么是 2 和 1, 要么是 3 和 0. 这样的一对子空间不仅是正交的, 它们还是正交补.

#hei[定义]  子空间 $V$ 的正交补是指垂直于 $V$ 的全体向量构成的子空间. $V$ 的这个正交子空间记作 $V^perp$ (读作“V 垂”).

根据上述定义, 零空间是行空间的正交补: 垂直于 $bold(A)$ 各行的每一个向量 $bold(x)$ 均满足 $bold(A) bold(x) = 0$, 亦即属于零空间.

反之亦真. 正交于零空间的任意向量 $bold(v)$ 必然属于行空间. 否则, 可以在不改变零空间的同时, 为原矩阵新增一行 $bold(v)$. 于是行空间就变大了, 这违背了结论 $r + (n-r) = n$. 因此可以断言零空间的正交补 $N(bold(A))^perp$ 恰恰就是行空间 $C(bold(A)^T)$.

同理, 在 $R^m$ 中, 左零空间与列空间不仅是正交的, 而且互为正交补. 它们的维数之和等于全空间维数, 即 $r + (m-r) = m$.

#block(stroke: 0.8pt, inset: 6pt, width: 100%)[
  #align(center)[#hei[线性代数基本定理（第二部分）]  对 $m times n$ 矩阵 $bold(A)$,]
  #align(center)[零空间 $N(bold(A))$ 是行空间 $C(bold(A)^T)$ 的正交补（在 $R^n$ 中）,]
  #align(center)[左零空间 $N(bold(A)^T)$ 是列空间 $C(bold(A))$ 的正交补（在 $R^m$ 中）.]
]

线性代数基本定理第一部分给出了子空间的维数, 第二部分揭示了子空间之间的正交关系. “正交补”的意义在于每个向量 $bold(x)$ 均可分解为一个行空间向量 $bold(x)_r$ 加上一个零空间向量 $bold(x)_n$. 当 $bold(A)$ 左乘 $bold(x) = bold(x)_r + bold(x)_n$ 两边时, 图 4.3 表示了 $bold(A) bold(x) = bold(A) bold(x)_r + bold(A) bold(x)_n$ 的结果:
零空间向量映射为零向量, 即 $bold(A) bold(x)_n = 0$;
行空间向量映射到列空间, 即 $bold(A) bold(x)_r = bold(A) bold(x)$.





#pagebreak()
