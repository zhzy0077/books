#import "../theme.typ": *
#set par(spacing: 17.5pt, leading: 13.8pt)
#show math.equation.where(block: true): set block(above: 20pt, below: 20pt)

例 2 中特征值 $lambda = 8$ 与 $beta = -1$ 对应的特征向量是正交的:

$ (bold(S) - 8 bold(I)) bold(z) = mat(delim: "[", -6, 3 - 3i; 3 + 3i, -3) mat(delim: "[", z_1; z_2) = mat(delim: "[", 0; 0), quad "得" bold(z) = mat(delim: "[", 1; 1 + i), $

$ (bold(S) + bold(I)) bold(y) = mat(delim: "[", 3, 3 - 3i; 3 + 3i, 6) mat(delim: "[", y_1; y_2) = mat(delim: "[", 0; 0), quad "得" bold(y) = mat(delim: "[", 1 - i; -1). $

#eqL[正交特征向量][$ bold(y)^H bold(z) = [1 + i quad -1] mat(delim: "[", 1; 1 + i) = 0. $]

这些特征向量的长度平方为 $1^2 + 1^2 + 1^2 = 3$. 它们除以 $sqrt(3)$ 后, 化为单位向量. 这样就得到了标准正交向量. 如果以它们为列向量组成特征值矩阵 $bold(X)$, 则可对角化 $bold(S)$.

当 $bold(S)$ 是实对称矩阵时, 上述 $bold(X)$ 就是正交矩阵 $bold(Q)$. 当 $bold(S)$ 是复矩阵且为埃尔米特矩阵时, 它的特征向量可取为复的标准正交向量. #hei[特征向量矩阵 $bold(X)$ 有点像实正交矩阵, 但是它是满足 $bold(X)^H bold(X) = bold(I)$ 的复矩阵.] 我们赋予这样的矩阵一个新名字 “#hei[酉矩阵]”, 并仍以 $bold(Q)$ 记之.

#block(above: 20pt, below: 16pt)[#hei[酉矩阵]]

酉矩阵 $bold(Q)$ 是具有#hei[标准正交列向量]的 (复) 方阵. 对上述埃尔米特矩阵 $bold(S)$,

#eqL[酉矩阵 $bold(Q)$ 对角化 $bold(S)$][$ bold(Q) = 1/sqrt(3) mat(delim: "[", 1, 1 - i; 1 + i, -1). $]

而上述矩阵 $bold(Q)$ 也是一个埃尔米特矩阵. 这有些出人意料, 因为实际情况下得到的 $bold(Q)$ 通常并非如此. 下面会发现上述矩阵 $bold(Q)$ 的特征值必为 1 或 $-1$.

检验实矩阵 $bold(Q)$ 的列向量组标准正交的条件是 $bold(Q)^T bold(Q) = bold(I)$. 这要求 $bold(Q)^T bold(Q)$ 的非对角元素为内积零. 而对于复矩阵 $bold(Q)$ 的情形, $bold(Q)^T$ 变成了 $bold(Q)^H$. 当 $bold(Q)^H$ 左乘 $bold(Q)$ 时, 从结果可以看出 $bold(Q)$ 的各列向量是否标准正交. 当 $bold(Q)$ 的各列向量标准正交时, 任意两个列向量的内积对应 $bold(Q)^H bold(Q) = bold(I)$ 的元素:

#v(6pt)
#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 16pt), width: 100%, above: 20pt, below: 20pt)[
  #hei[具有标准正交列向量的矩阵 $bold(Q)$ 满足 $bold(Q)^H bold(Q) = bold(I)$.]

  #v(6pt)
  #hei[如果 $bold(Q)$ 又是方阵, 那么 $bold(Q)$ 为酉矩阵, 即 $bold(Q)^H = bold(Q)^(-1)$.]
]

#v(14pt)
当用列向量标准正交的矩阵 $bold(Q)$ 左乘任意向量 $bold(z)$ 时, 所得向量 $bold(Q) bold(z)$ 的长度并不发生变化, 因为 $bold(z)^H bold(Q)^H bold(Q) bold(z) = bold(z)^H bold(z)$. 如果 $bold(z)$ 是 $bold(Q)$ 的特征向量, 那么还可以知道: #hei[酉矩阵 (以及正交矩阵) $bold(Q)$ 的特征值 $lambda$ 均满足绝对值 1, 即 $abs(lambda) = 1$.]

#v(14pt)
#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 14pt), width: 100%, above: 20pt, below: 20pt)[
  #hei[若 $bold(Q)$ 为酉矩阵, 则 $norm(bold(Q) bold(z)) = norm(bold(z))$. 于是由 $bold(Q) bold(z) = lambda bold(z)$ 推得 $abs(lambda) = 1$.]
]

#pagebreak()