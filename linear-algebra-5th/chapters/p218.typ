#import "../theme.typ": *

#align(center)[#image("../assets/fig-p218-icon.png", width: 3.2%)]

#xiti[挑 战 题]

#hei[29.] 如果 $bold(A) = bold(u) bold(v)^T$ 是一个秩为 1 的 $2 times 2$ 矩阵. 为了清楚显示四个基本子空间, 请重新画出关于 $bold(A)$ 的图 3.6. 如果矩阵 $bold(B)$ 和 $bold(A)$ 有相同的四个子空间, 那么 $bold(A)$ 与 $bold(B)$ 有什么确定的关系?

#hei[30.] $bold(M)$ 为全体 $3 times 3$ 矩阵构成的空间, 用以下矩阵 $bold(A)$ 左乘 $bold(M)$ 中每个矩阵 $bold(X)$:

#dmath[$ bold(A) = mat(1, 0, -1; -1, 1, 0; 0, -1, 1) , quad "注意": bold(A) mat(1; 1; 1) = mat(0; 0; 0) . $]

(a) 哪些矩阵 $bold(X)$ 使得 $bold(A) bold(X)$ 为零矩阵?

(b) 形如 $bold(A) bold(X)$ 的矩阵的特征是什么?

问题 (a) 是求 $bold(A) bold(X)$ 的 “零空间”, 而 (b) 是找出其 “列空间”. 在 $bold(M)$ 中, 这两个子空间的维数是多少? 为什么这两个维数相加的和是 $(n - r) + r = 9$?

#hei[31.] 设 $m times n$ 矩阵 $bold(A)$ 与 $bold(B)$ 各自的四个子空间对应相等. 如果这两个矩阵是如下的最简行阶梯形矩阵, 证明其中的子块 $bold(F)$ 一定等于 $bold(G)$:

#dmath[$ bold(A) = mat(bold(I), bold(F); bold(O), bold(O)) , quad bold(B) = mat(bold(I), bold(G); bold(O), bold(O)) . $]



#pagebreak()
