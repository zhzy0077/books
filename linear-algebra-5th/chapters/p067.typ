#import "../theme.typ": *

#hei[32.] 设 $bold(u)$ 和 $bold(v)$ 是一个 $3 times 3$ 矩阵 $bold(A)$ 的前两列, 如何选取第 3 列 $bold(w)$ 可使得 $bold(A)$ 是奇异矩阵? 在奇异的情况下描述 $bold(A) bold(x) = bold(b)$ 典型的列图与行图 ($bold(b)$ 是一个随机向量).

#hei[33.] 利用矩阵 $bold(A)$ 做乘法运算是一个 “线性变换”, 这是指:

若 $bold(w)$ 是 $bold(u)$ 与 $bold(v)$ 的线性组合, 则 $bold(A) bold(w)$ 是 $bold(A) bold(u)$ 和 $bold(A) bold(v)$ 的同一系数的线性组合.

也即, 若 $bold(w) = c bold(u) + d bold(v)$, 则 $bold(A) bold(w) = c bold(A) bold(u) + d bold(A) bold(v)$. 上述性质称为左乘 $bold(A)$ 运算的 “线性性质”, 这是 “线性代数” 名称的由来.

问题: 若 $bold(u) = mat(1; 0), bold(v) = mat(0; 1)$, 则 $bold(A) bold(u)$ 与 $bold(A) bold(v)$ 是 $bold(A)$ 的两个列向量. 令 $bold(w) = c bold(u) + d bold(v)$, 若 $bold(w) = mat(5; 7)$, 如何在 $bold(A) bold(w)$ 与 $bold(A) bold(u), bold(A) bold(v)$ 之间建立联系?

#hei[34.] 设有四个方程 $-x_(i+1) + 2x_i - x_(i-1) = i$ ($i = 1, 2, 3, 4$ 且 $x_0 = x_5 = 0$), 请将这些方程写成矩阵形式 $bold(A) bold(x) = bold(b)$ 并尝试求解 $x_1, x_2, x_3, x_4$.

#hei[35.] $9 times 9$ 数独矩阵 $bold(S)$ 的每一行和每一列都由数字 $1, 2, dots.c, 9$ 排列而成. 将 $bold(S)$ 平均分成 9 个 $3 times 3$ 子块, 每一个子块也由数字 $1, 2, dots.c, 9$ 排列而成. 设 $bold(x) = (1, 1, dots.c, 1)$ 是分量全为 1 的 9 维向量, 请计算 $bold(S) bold(x)$.

一个更有意思的问题是: 交换哪些行能得到另一个数独矩阵? 按上述要求对行分块后, 如何进行分块行变换得到另一个数独矩阵?

第 2.7 节将学习关于行的所有可能的置换 (重新排序). 上述矩阵的前 3 行共有 6 种排列, 均能得到数独矩阵. 同理, 中间 3 行与最后 3 行也各有 6 种排列, 而且将行分成 3 个子块也会有 6 种分块的排列, 请问上述排列是否都能得到数独矩阵?



#pagebreak()
