#import "../theme.typ": *

#hei[4.]  试构造满足以下性质的矩阵; 如果无法构造, 请给出理由:

#h(2em) (a) 列空间包含 $mat(1; 1; 0), mat(0; 0; 1)$, 且行空间包含 $mat(1; 2), mat(2; 5)$;

#h(2em) (b) 列空间的一组基为 $mat(1; 1; 3)$, 且零空间的一组基为 $mat(3; 1; 1)$;

#h(2em) (c) 零空间的维数 $= 1 +$ 左零空间维数;

#h(2em) (d) 零空间包含 $mat(1; 3)$, 而列空间包含 $mat(3; 1)$;

#h(2em) (e) 行空间 $=$ 列空间, 但零空间 $!=$ 左零空间.

#hei[5.]  设 $V$ 是由 $(1, 1, 1)$ 和 $(2, 1, 0)$ 生成的子空间. 求一个矩阵 $bold(A)$, 使得 $V$ 是 $bold(A)$ 的行空间. 求一个矩阵 $bold(B)$, 使得 $V$ 是 $bold(B)$ 的零空间. 然后计算 $bold(A) bold(B)$.

#hei[6.]  不用消元法, 求出以下矩阵四个子空间的维数与基:

#align(center)[$ bold(A) = mat(0, 3, 3, 3; 0, 0, 0, 0; 0, 1, 0, 1) , quad bold(B) = mat(1; 4; 5) . $]

#hei[7.]  设 $3 times 3$ 矩阵 $bold(A)$ 可逆. 先写出 $bold(A)$ 的四个子空间的基, 再写出 $3 times 6$ 矩阵 $[bold(A) quad bold(A)]$(记为 $bold(B)$) 的四个子空间的基. (注意, 空间 $bold(Z)$ 的基为空集.)

#hei[8.]  以下矩阵 $bold(A), bold(B)$ 和 $bold(C)$ 的四个子空间的维数分别是多少? 其中 $bold(I)$ 为 $3 times 3$ 单位矩阵, 而 $bold(O)$ 为 $3 times 2$ 零矩阵:

#align(center)[$ bold(A) = [bold(I) quad bold(O)] , quad bold(B) = mat(bold(I), bold(I); bold(O)^T, bold(O)^T) , quad bold(C) = bold(O) . $]

#hei[9.]  对于以下各组不同规模的矩阵, 它们哪些子空间是相同的?

#h(2em) (a) $[bold(A)], mat(bold(A); bold(A))$; #h(2em) (b) $mat(bold(A); bold(A)), [bold(A) quad bold(A)]$.

#h(2em) 证明上述三个矩阵的秩相同.

#hei[10.]  如果一个 $3 times 3$ 矩阵的元素可在 0 与 1 两值之间随机选取, 那么该矩阵的四个子空间的维数分别最可能是多少? 如果是一个 $3 times 5$ 的随机矩阵呢?

#hei[11.]  (重要) 已知 $m times n$ 矩阵 $bold(A)$ 的秩为 $r$, 且存在常数项 $bold(b)$ 使得 $bold(A) bold(x) = bold(b)$ 无解.

#h(2em) (a) 判断 $m, n$ 和 $r$ 的大小关系;

#h(2em) (b) 如何确定 $bold(A)^T bold(y) = 0$ 有非零解?

#hei[12.]  构造一个矩阵, 使得行空间和列空间的一组基均为 $(1, 0, 1)$ 和 $(1, 2, 0)$. 为什么这组向量不可能是行空间和零空间共有的一组基呢?



#pagebreak()
