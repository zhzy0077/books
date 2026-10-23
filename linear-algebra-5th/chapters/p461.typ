#import "../theme.typ": *
#set par(spacing: 13.5pt, leading: 12.5pt)

#block(stroke: 0.6pt, inset: (x: 10pt, y: 22pt), width: 100%, above: 20pt, below: 22pt)[
  #hei[(若尔当形)]　若 $bold(A)$ 有 $s$ 个线性无关的特征向量, 则它相似于对角线上有 $s$ 个若尔当块 $bold(J)_1, bold(J)_2, dots.c, bold(J)_s$ 的矩阵 $bold(J)$. 存在矩阵 $bold(B)$ 将 $bold(A)$ 变成若尔当形:

  #v(8pt)
  #eqnumL([若尔当形], $ bold(B)^(-1) bold(A) bold(B) = mat(delim: "[", bold(J)_1, , , ; , bold(J)_2, , ; , , dots.down, ; , , , bold(J)_s) = bold(J) . $, 3)
  #v(10pt)

  每个若尔当块 $bold(J)_i$ 均对应一个特征值 $lambda_i$ 和一个特征向量, 对角线正上方相邻元素均为 1:

  #v(8pt)
  #eqnumL([若尔当块], $ bold(J)_i = mat(delim: "[", lambda_i, 1, , ; , dots.down, dots.down, ; , , dots.down, 1; , , , lambda_i) . $, 4)
  #v(12pt)

  #hei[两个矩阵相似, 当且仅当它们有相同的若尔当形.]
]

每缺少一个特征向量, 若尔当形 $bold(J)$ 就有一个对角线上方的 1 (1 与特征值相邻) 与之对应. 在每一族相似矩阵里, 取一个代表称为 $bold(J)$. 它接近于对角矩阵 (或者可能就是对的). 利用若尔当形可以快速求解 $(d bold(u))/(d t) = bold(J) bold(u)$, 和求矩阵的幂 $bold(J)^k$. 该族的其他矩阵都有 $bold(B) bold(J) bold(B)^(-1)$ 的形式.

若尔当定理的证明可参考作者的教材 Linear Algebra and Its Applications, 或者其他理论教材. 该定理的推导相当复杂, 而若尔当形的计算过程数值不稳定, 因此它在实践中也并不流行. $bold(A)$ 的微小变化将分离重复的特征值, 并且去掉对角线外的 1——将若尔当形变为对角阵 $bold(Lambda)$.

无论是否给出证明, 读者需要抓住相似的中心思想——在保存 $bold(A)$ 的重要性质的前提下将它变得尽可能简单. 最佳的基 $bold(B)$ 给出 $bold(B)^(-1) bold(A) bold(B) = bold(J)$.

#v(8pt)
#hei[问题]　若 $n$ 阶方阵 $bold(A)$ 满足 $bold(A)^2 = bold(O)$, 试给出其特征值和所有可能的若尔当形.

#v(6pt)
#hei[答]　特征值必须是 0, 因为由 $bold(A) bold(x) = lambda bold(x)$ 推出 $bold(A)^2 bold(x) = lambda^2 bold(x)$, 即 $0 = lambda^2 bold(x)$. 由于

$ bold(J)^2 = (bold(B)^(-1) bold(A) bold(B))(bold(B)^(-1) bold(A) bold(B)) = bold(B)^(-1) bold(A)^2 bold(B) = bold(O), $

所以 $bold(A)$ 的若尔当形满足 $bold(J)^2 = bold(O)$. $bold(J)$ 的每个子块对角线上必然为 0. 对于子块大小分别为 $1 times 1, 2 times 2, 3 times 3$ 的 $bold(J)_k$, 观察 $bold(J)_k^2$:

$ mat(delim: "[", 0)^2 = mat(delim: "[", 0), quad mat(delim: "[", 0, 1; 0, 0)^2 = mat(delim: "[", 0, 0; 0, 0), quad mat(delim: "[", 0, 1, 0; 0, 0, 1; 0, 0, 0)^2 = mat(delim: "[", 0, 0, 1; 0, 0, 0; 0, 0, 0). $



#pagebreak()