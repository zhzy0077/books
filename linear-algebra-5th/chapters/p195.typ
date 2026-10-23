#import "../theme.typ": *

对于同一向量空间, 可以找到许多其他的基 (无穷多组). 基并不唯一!

#hei[例 7]  (重要) 任意 $n times n$ 可逆矩阵 $bold(A)$ 的列向量组构成 $R^n$ 的一组基 ($n = 3$):

#align(center)[
  #grid(columns: (auto, auto, auto, auto), column-gutter: 16pt, align: (right + horizon, center + horizon, right + horizon, center + horizon),
    [可逆矩阵,\ 列线性无关,\ 列空间为 $R^3$],
    $bold(A) = mat(delim: "[", 1,0,0;1,1,0;1,1,1)$,
    [奇异矩阵,\ 列线性相关,\ 列空间不为 $R^3$],
    $bold(B) = mat(delim: "[", 1,0,1;1,1,2;1,1,2)$,
  )
]

$bold(A) bold(x) = 0$ 的唯一解是 $bold(x) = bold(A)^(-1) 0 = 0$. $bold(A)$ 的各列线性无关. 因为任意向量 $bold(b)$ 均为列的线性组合, 所以各列生成整个 $R^n$ 空间. $bold(A) bold(x) = bold(b)$ 总是有解 $bold(x) = bold(A)^(-1) bold(b)$. 将可逆矩阵的这些结论汇集起来, 就得到

#yaodian[
  当一组向量 $bold(v)_1, bold(v)_2, ..., bold(v)_n$ 正好是 $n times n$ 可逆矩阵的列时, 它们就是 $R^n$ 的一组基. 因此 $R^n$ 有无穷多组不同的基.
]

各列线性相关时, 仅保留主元列——对于上述矩阵 $bold(B)$ 而言是两个主元所在的前两列. 它们线性无关, 且生成了列空间.

#yaodian[
  矩阵 $bold(A)$ 的主元列是列空间的一组基. $bold(A)$ 的主元行是行空间的一组基, 最简行阶梯形矩阵 $bold(R)$ 的主元行亦然.
]

#hei[例 8]  不可逆矩阵的列向量组不构成基! 如下矩阵 $bold(A)$ 不可逆:

#align(center)[
  #grid(columns: (auto, auto), column-gutter: 18pt, align: (right + horizon, center + horizon),
    [一个主元列,\ 一个主元行 (秩 $r = 1$)],
    [$bold(A) = mat(delim: "[", 2,4;3,6)$ 化简为 $bold(R) = mat(delim: "[", 1,2;0,0)$],
  )
]

$bold(A)$ 的首列是主元列, 此列单独就构成列空间的一组基. $bold(A)$ 的第 2 列构成另一组基, 该列的任意非零倍数均构成一组基. 对基的选择有无穷多种, 其中之一就是主元列.

注意, $bold(R)$ 的主元列 $(1, 0)$ 是以零分量结尾的. 这个列向量是 $bold(R)$ 的列空间的一组基, 但它并不属于 $bold(A)$ 的列空间. $bold(A)$ 和 $bold(R)$ 的列空间并不相同, 它们的基也不同. (但维数相同.)

$bold(A)$ 和 $bold(R)$ 的行空间相同. 它包含 $(2, 4)$ 和 $(1, 2)$ 以及这两个向量的所有其他倍数. 如前所述, 有无穷多组基可供选择. 一个自然的选择是将 $bold(R)$ 的非零行 (即主元行) 选为基. 秩 1 矩阵 $bold(A)$ 对应的基中仅含一个向量:

#align(center)[
  列空间的基为 $mat(delim: "[", 2;3)$, 行空间的基为 $mat(delim: "[", 1;2)$.
]

(下一章将重新回来讨论列空间与行空间的基.) 前面的例子均短小精悍, 是为了让新引入的基的概念清晰易懂, 接下来的例子规模更大但依旧可以阐明基的概念.

#hei[例 9]  以下矩阵秩为 2, 求出该矩阵列空间和行空间的基:

#align(center)[
  $bold(R) = mat(delim: "[", 1,2,0,3;0,0,1,4;0,0,0,0).$
]



#pagebreak()
