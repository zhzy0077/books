#import "../theme.typ": *

#subsec[奇异矩阵与可逆矩阵]

现在回到中心问题: 哪些矩阵可逆? 在本节开始部分介绍了主元判断法: 当 $n$ 阶方阵 $bold(A)$ 有全部 $n$ 个主元时, $bold(A)^(-1)$ 存在 (允许换行). 现在利用高斯-若尔当消元法来证明这一结论: \
#hei[1.] 利用 $n$ 个主元, 消元法可求解全部线性方程组 $bold(A) bold(x)_i = bold(e)_i$, $i=1,2,dots.c,n$. 用列向量 $bold(x)_i$ 构造 $bold(A)^(-1)$, 则 $bold(A) bold(A)^(-1) = bold(I)$ 且 $bold(A)^(-1)$ 至少是一个右逆. \
#hei[2.] 上述消元法本质上是对矩阵 $bold(A)$ 左乘一系列消元矩阵 $bold(E)$ 和置换矩阵 $bold(P)$, 以及一个对角矩阵 $bold(D)^(-1)$:

#grid(columns: (auto, 1fr, auto), column-gutter: 10pt,
  [左逆 $bold(C)$],
  align(center)[$ bold(C) bold(A) = (bold(D)^(-1) dots.c bold(E) dots.c bold(P) dots.c bold(E)) bold(A) = bold(I) . $],
  align(bottom)[$(9)$],
)

$bold(D)^(-1)$ 的作用是通过除以主元来得到对角线上的 1, $bold(E)$ 的作用是在主元上方和下方生成零, $bold(P)$ 的作用则是根据需要换行 (见第 2.7 节). (9) 式中括号内矩阵的乘积显然就是 $bold(A)$ 的一个左逆, 因此, 若矩阵 $bold(A)$ 有 $n$ 个主元, 则由高斯-若尔当消元法得到了 $bold(A)^(-1) bold(A) = bold(I)$.

本节开始部分的注记 2 已说明右逆与左逆相等, 因此一个具有完整主元集的方阵总是存在一个双边逆矩阵.

现在用反证法来证明: 若 $n$ 阶方阵 $bold(A), bold(C)$ 满足 $bold(A) bold(C) = bold(I)$, 则 $bold(A)$ 一定有 $n$ 个主元. \
#hei[1.] 若 $bold(A)$ 没有 $n$ 个主元, 则消元后会出现零行. \
#hei[2.] 这些消元步骤能用左乘可逆矩阵 $bold(M)$ 得到, 因此 $bold(M) bold(A)$ 中至少有一行全为零. \
#hei[3.] 若 $bold(A) bold(C) = bold(I)$, 则 $bold(M) bold(A) bold(C) = bold(M)$. $bold(M) bold(A)$ 中零行左乘 $bold(C)$ 等于零行, 可知 $bold(M)$ 中有零行. \
#hei[4.] 而可逆矩阵 $bold(M)$ 不可能包含零行! 因此, 若 $bold(A) bold(C) = bold(I)$, 则 $bold(A)$ 一定有 $n$ 个主元.

以上讨论包括四个步骤, 但结果简短而重要. 上式中 $bold(C)$ 是 $bold(A)^(-1)$.

#yaodian[
#hei[消元法提供了方阵可逆性的完整判断方法. 当 $n$ 阶方阵 $bold(A)$ 恰有 $n$ 个主元时, $bold(A)^(-1)$ 存在 (可用高斯-若尔当消元法计算). 更进一步, 由上述讨论可得:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ "若" bold(A) bold(C) = bold(I) ", 则" bold(C) bold(A) = bold(I) "且" bold(C) = bold(A)^(-1) . $],
  align(bottom)[$(10)$],
)]
]

#hei[例 6]  若 $bold(L)$ 是主对角线上元素全为 1 的下三角形矩阵, 则 $bold(L)^(-1)$ 也是如此.

#align(center)[三角形矩阵可逆当且仅当主对角线上的元素都不为零.]

当 $bold(L)$ 的主对角线上元素全为 1 时, $bold(L)^(-1)$ 对应的元素也为 1. 对如下三阶方阵 $bold(L)$, 利用高斯-若尔当方法通过 $bold(E)_(32), bold(E)_(31), bold(E)_(21)$ 来构造 $bold(L)^(-1)$. 注意, $bold(L)^(-1)$ 中的元素 11 是由 $3 times 5 - 4$ 所得.

#grid(columns: (auto, 1fr), column-gutter: 16pt,
  [对下三角形矩阵 $bold(L)$ 应用\ 高斯-若尔当方法],
  align(center)[$ mat(delim: "[", 1,0,0,1,0,0; 3,1,0,0,1,0; 4,5,1,0,0,1) = [bold(L) quad bold(I)] $],
)

#grid(columns: (auto, auto, auto), column-gutter: 10pt,
  [$->$],
  $ mat(delim: "[", 1,0,0,1,0,0; 0,1,0,-3,1,0; 0,5,1,-4,0,1) $,
  $ mat(delim: #none, "(第 2 行减去第 1 行的 3 倍)"; "(第 3 行减去第 1 行的 4 倍)"; "(第 3 行减去第 2 行的 5 倍)") $,
)



#pagebreak()
