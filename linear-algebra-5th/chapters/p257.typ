#import "../theme.typ": *

#align(center, subsec[4.4　标准正交基与格拉姆-施密特方法])

#yaodian[
  #hei[1.] 如果矩阵 $bold(Q)$ 的各列 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$ 满足
  #align(center)[$ bold(q)_i^T bold(q)_j = cases(0 &quad i != j, 1 &quad i = j), $]
  那么列向量 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$ 是标准正交的. 此时 $bold(Q)^T bold(Q) = bold(I)$.

  #hei[2.] 接上, 如果矩阵 $bold(Q)$ 还是方阵, 那么 $bold(Q) bold(Q)^T = bold(I)$ 且 $bold(Q)^T = bold(Q)^(-1)$, 并称 $bold(Q)$ 为 "正交矩阵".

  #hei[3.] 接上, $bold(Q) bold(x) = bold(b)$ 的最小二乘解为 $hat(bold(x)) = bold(Q)^T bold(b)$, $bold(b)$ 在 $bold(Q)$ 的列空间上的投影为 $p = bold(Q) bold(Q)^T bold(b) = bold(P) bold(b)$.

  #hei[4.] 格拉姆-施密特方法将线性无关向量组 $bold(a)_1, bold(a)_2, dots.c, bold(a)_n$ 转化为标准正交向量组 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$. 该方法从 $bold(q)_1 = bold(a)_1 / norm(bold(a)_1)$ 开始计算.

  #hei[5.] 接上, $bold(q)_i$ 为 $(bold(a)_i - "投影" bold(p)_i)/norm(bold(a)_i - bold(p)_i)$, 其中投影
  #align(center)[$ bold(p)_i = (bold(a)_i^T bold(q)_1) bold(q)_1 + (bold(a)_i^T bold(q)_2) bold(q)_2 + dots.c + (bold(a)_i^T bold(q)_(i-1)) bold(q)_(i-1). $]

  #hei[6.] 接上, 每个 $bold(a)_i$ 均为 $bold(q)_1, bold(q)_2, dots.c, bold(q)_i$ 的线性组合. 那么 $bold(A) = bold(Q) bold(R)$, 其中 $bold(Q)$ 是正交矩阵, $bold(R)$ 为三角形矩阵.
]

本节的学习目标有两个: "为什么" 与 "怎么办". 头一个目标是理解为什么正交性有好处. 对于各列相互正交的矩阵 $bold(A)$, 由于正交表示向量点积为零, 所以 $bold(A)^T bold(A)$ 是对角矩阵. 这让求解最小二乘解 $hat(bold(x))$ 以及 $p = bold(A) hat(bold(x))$ 变得相当容易. 第二个目标是构造正交向量组. 读者将看到利用格拉姆-施密特方法, 如何选择初始基向量组的线性组合来生成正交向量组. 初始向量组是 $bold(A)$ 的各列, 可能并不正交. 标准正交基向量组将是新矩阵 $bold(Q)$ 的各列.

由第 3 章可知, 一组基是由生成空间的线性无关向量组成的. 基向量之间能以任意角度相交 (除了 $0 degree$ 和 $180 degree$). 但每当我们想起坐标轴, 它们总是互相垂直的. 在人们的印象中, 坐标轴通常都是正交的. 这样的关系简化了图形, 也大大简化了计算.

若向量 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$ 满足两两点积 $bold(q)_i dot bold(q)_j$ 均为零, 则称它们是正交的. 更确切地, 每当 $i != j$ 时, 就有 $bold(q)_i^T bold(q)_j = 0$. 进一步, 只需将每个向量除以其长度, 所得向量组为正交单位向量组. 组中向量的长度均为 1 (称为标准的或规范的), 于是这组基称为标准正交的.

#gainian[定义][如果向量组 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$ 满足
  #align(center)[$ bold(q)_i^T bold(q)_j = cases(0 &quad i != j " (正交向量)", 1 &quad i = j " (单位向量: " norm(bold(q)_i) = 1 ")") $]
]

#pagebreak()