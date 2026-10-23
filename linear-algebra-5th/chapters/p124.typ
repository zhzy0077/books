#import "../theme.typ": *

将 $bold(E)_(i j)$ 移到右边 (等式两边按相反顺序同时左乘 $bold(E)_(i j)^(-1)$), 使右边变成逆矩阵左乘 $bold(U)$:

$ (bold(E)_(32) bold(E)_(31) bold(E)_(21)) bold(A) = bold(U) quad "变成" quad bold(A) = (bold(E)_(21)^(-1) bold(E)_(31)^(-1) bold(E)_(32)^(-1)) bold(U) . quad text("即") quad bold(A) = bold(L) bold(U) . $

特别注意, 逆矩阵的乘积必须是相反的次序. 上式中三个逆矩阵的乘积就是 $bold(L)$, 由此可得 $bold(A) = bold(L) bold(U)$.

#hei[说明与例子]

#hei[第一点]  每个消元矩阵 $bold(E)$ 的逆矩阵 $bold(E)^(-1)$ 都是下三角形矩阵, 它的非对角线元素是 $l_(i j)$, 用于恢复由 $-l_(i j)$ 生成的减法运算. $bold(E)$ 和 $bold(E)^(-1)$ 主对角线上的元素都是 1. 在上一段的例子中

$ l_(21) = 3 , quad bold(E) = mat(delim: "[", 1, 0; -3, 1) , quad bold(L) = bold(E)^(-1) = mat(delim: "[", 1, 0; 3, 1) . $

#hei[第二点]  上述等式展示了一个下三角形矩阵 ($bold(E)_(i j)$ 的乘积) 左乘矩阵 $bold(A)$ 的向下消元, 同时也展示了所有 $bold(E)_(i j)^(-1)$ 左乘 $bold(U)$ 还原成 $bold(A)$. 这些逆矩阵相乘得到的下三角形矩阵就是 $bold(L)$.

等式中改为使用逆矩阵的一个原因是需要分解矩阵 $bold(A)$ 而不是 $bold(U)$, “逆矩阵形式”恰好给出了 $bold(A) = bold(L) bold(U)$. 另一个原因是在上述过程中获得了超过预期的额外收获, 也就是以下第三点: $bold(L)$ 非常完美.

#hei[第三点]  乘数 $l_(i j)$ 在全体逆矩阵乘积所得的 $bold(L)$ 中位置没有变化——恰好也在位置 $(i, j)$. 通常矩阵乘法会混合运算所有数字, 但这里却没有出现这一现象. 逆矩阵的正确相乘顺序可以保持乘数 $l_(i j)$ 位置不变. 后续 (2) 式将说明原因.

因为每个 $bold(E)^(-1)$ 主对角线上的元素都是 1, 故 $bold(L)$ 也具有这一显著特点.

#yaodian[
  #align(center)[这是不含换行的消元法.]
  #grid(columns: (auto, 1fr), column-gutter: 2em, align: (right, left), [
    $bold(A) = bold(L) bold(U)$
  ], [
    上三角形矩阵 $bold(U)$ 主对角线上是主元,\
    下三角形矩阵 $bold(L)$ 主对角线上的元素都是1,\
    乘数 $l_(i j)$ 在 $bold(L)$ 的主对角线下方.
  ])
]

#hei[例 1]  对如下矩阵 $bold(A)$, 消元法首先从第 2 行中减去第 1 行的 $1/2$ 倍, 然后从第 3 行中减去第 2 行的 $2/3$ 倍, 则下三角形矩阵 $bold(L)$ 包含乘数 $l_(21) = 1/2$ 和 $l_(32) = 2/3$, 且乘积 $bold(L) bold(U)$ 可得 $bold(A)$:

$ bold(A) = mat(delim: "[", 2, 1, 0; 1, 2, 1; 0, 1, 2) = mat(delim: "[", 1, 0, 0; 1/2, 1, 0; 0, 2/3, 1) mat(delim: "[", 2, 1, 0; 0, 3/2, 1; 0, 0, 4/3) = bold(L) bold(U) . $

因为 $bold(A)$ 在位置 $(3, 1)$ 的元素是 0, 无需任何操作, 因此位置 $(3, 1)$ 的乘数是 0.

#hei[例 2]  将例 1 中矩阵 $bold(A)$ 左上角的元素 2 变成 1 后得到矩阵 $bold(B)$, 则 $bold(B)$ 的主元都是 1,



#pagebreak()
