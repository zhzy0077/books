#import "../theme.typ": *

#xiti[习题集 4.1]

习题 1—12 是关于图 4.2 和图 4.3 的四个子空间的.

#ti[1.][构造任意秩 1 的 $2 times 3$ 矩阵, 再构造该矩阵对应的图 4.2, 并给出每个子空间中的一个向量 (零空间中给出两个向量). 这些向量中哪些是相互正交的?]

#ti[2.][考虑一个秩为 $r = 2$ 的 $3 times 2$ 矩阵, 画出它对应的图 4.3. 哪个子空间是只含零向量的空间 $bold(Z)$? 将 $bold(R)^2$ 中任意向量 $bold(x)$ 进行正交分解, 那么它的零空间部分 $bold(x)_n = #underline[#h(3em)]$.]

#ti[3.][构造分别满足下述各性质的矩阵, 如果无法构造出来, 请给出理由:

#sub[(a) 列空间包含 $mat(delim: "[", 1; 2; -3)$ 和 $mat(delim: "[", 2; -3; 5)$, 且零空间包含 $mat(delim: "[", 1; 1; 1)$;]

#sub[(b) 行空间包含 $mat(delim: "[", 1; 2; -3)$ 和 $mat(delim: "[", 2; -3; 5)$, 且零空间包含 $mat(delim: "[", 1; 1; 1)$;]

#sub[(c) $bold(A) bold(x) = mat(delim: "[", 1; 1; 1)$ 有解且 $bold(A)^T mat(delim: "[", 1; 0; 0) = mat(delim: "[", 0; 0; 0)$;]

#sub[(d) $bold(A)$ 的每一行都正交于每一列, 但它不是零矩阵;]

#sub[(e) 各列向量相加等于全零列, 各行向量相加等于全 1 行.]]

#ti[4.][如果 $bold(A) bold(B) = bold(O)$, 那么 $bold(B)$ 的列在 $bold(A)$ 的 #underline[#h(3em)] 中, 而 $bold(A)$ 的行在 $bold(B)$ 的 #underline[#h(3em)] 中. 当 $bold(A) bold(B) = bold(O)$ 时, 为什么 $bold(A)$ 与 $bold(B)$ 不能是秩为 2 的 $3 times 3$ 矩阵?]

#ti[5.][(a) 如果 $bold(A) bold(x) = bold(b)$ 有解且 $bold(A)^T bold(y) = 0$, 那么是 $bold(y)^T bold(x) = 0$ 成立, 还是 $bold(y)^T bold(b) = 0$ 成立?

#sub[(b) 如果 $bold(A)^T bold(y) = (1,1,1)$ 有解, 且 $bold(A) bold(x) = 0$ 成立, 那么 #underline[#h(3em)].]]

#ti[6.][如下线性方程组 $bold(A) bold(x) = bold(b)$ 无解 (因为会推出矛盾方程 $0 = 1$):

#dmath[$ cases(
  x + 2y + 2z = 5,
  2x + 2y + 3z = 5,
  3x + 4y + 5z = 9,
) $]

求出 $y_1, y_2, y_3$, 使得它们分别乘上述 3 个方程后再相加得到 $0 = 1$. 以 $y_1, y_2, y_3$ 为分量构成的向量 $bold(y)$ 属于 $bold(A)$ 的哪个子空间? 向量 $bold(y)$ 与向量 $bold(b)$ 的点积 $bold(y)^T bold(b)$ 为 1, 故方程组 $bold(A) bold(x) = bold(b)$ 无解.]

#ti[7.][每个无解的 $m times n$ 线性方程组都类似于习题 6 中的线性方程组. $m$ 个方程分别乘待定系数 $y_1, y_2, dots.c, y_m$, 而后相加得到 $0 = 1$. 这称为弗雷德霍姆 (Fredholm) 择一定理, 即以下两个方程组恰有一个有解:]

#dmath[$ bold(A) bold(x) = bold(b), quad bold(A)^T bold(y) = 0, quad "其中" bold(y)^T bold(b) = 1. $]

#pagebreak()