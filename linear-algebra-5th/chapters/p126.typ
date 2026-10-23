#import "../theme.typ": *

上元素是 1 (类似于 $bold(L)$). 不同于常规的 $bold(L U)$ 形式, 新的分解式中中间矩阵为 $bold(D)$: (下三角形矩阵 $bold(L)$)(对角矩阵 $bold(D)$)(上三角形矩阵 $bold(U)$).

#dingli[三角分解可以写成 $bold(A) = bold(L U)$ 或 $bold(A) = bold(L D U)$.]

只要看到 $bold(L D U)$, 就要知道 $bold(U)$ 主对角线上的元素全是 1, 因为对原来的 $bold(U)$ 每一行都除以其第一个非零元素——主元. 因此 $bold(L)$ 与 $bold(U)$ 在 $bold(L D U)$ 中处于平等位置:

#eqnum($ mat(delim: "[", 1, 0; 3, 1) mat(delim: "[", 2, 8; 0, 5) quad "可进一步分解成" quad mat(delim: "[", 1, 0; 3, 1) mat(delim: "[", 2, , ; , 5) mat(delim: "[", 1, 4; 0, 1) . $, 3)

主元 2 和 5 在 $bold(D)$ 中, 原矩阵 $bold(U)$ 的两行分别除以 2 和 5, 则新矩阵 $bold(U)$ 的对应行分别是 $[1 quad 4]$ 和 $[0 quad 1]$, 其中主对角线上的元素是 1. 乘数 3 始终在 $bold(L)$ 中.

本节的基本理论到此为止. 接下来将介绍消元法的代码是如何组织的以及计算的复杂度. 如果手头有 MATLAB (或其他任何类似软件), 可以通过数秒来估算计算时间. 若对相关内容不感兴趣, 可以直接跳到第 2.7 节.

#align(center, subsec[一个正方形方程组 = 两个三角形方程组])

矩阵 $bold(L)$ 记录了用高斯消元法时每一行减去对应的主元行时所需的乘数. 什么时候需要这个记录? 在求解 $bold(A) bold(x) = bold(b)$ 时如何利用这个记录?

当考虑方程组右边的常数向量 $bold(b)$ 以求解方程组时就需要 $bold(L)$. $bold(L)$ 和 $bold(U)$ 完全由左边的系数矩阵 $bold(A)$ 决定, 解方程组 $bold(A) bold(x) = bold(b)$ 时对其右边依次左乘 $bold(L)^(-1)$ 和 $bold(U)^(-1)$ 这两个三角形矩阵.

#yaodian[
  #hei[1. 分解]  利用消元法将左边的系数矩阵 $bold(A)$ 分解为 $bold(L U)$\
  #hei[2. 求解]  对 $bold(b)$ 先利用 $bold(L)$ 向下消元, 然后利用 $bold(U)$ 回代求解 $bold(x)$.
]

之前的章节中一般利用增广矩阵 $[bold(A) quad bold(b)]$ 同时处理 $bold(A)$ 和 $bold(b)$, 但是大部分的计算机代码会将两边分开处理. $bold(L)$ 和 $bold(U)$ 中记录消元信息, 在有需求时可用来处理 $bold(b)$. LAPACK 用户手册中提到 “此处并不要求只用一个子程序来求解一个单方程组, 因为分开处理的情形十分普遍, 对于提高计算和存储效率也非常重要.”

如何使用 $bold(b)$ 来求解? 首先, 对右边应用向下消元 (使用存储在 $bold(L)$ 中的乘数), 这个步骤将右边向量 $bold(b)$ 变成了新向量 $bold(c)$, 本质上是求解 $bold(L) bold(c) = bold(b)$. 然后回代求解 $bold(U) bold(x) = bold(c)$. 原方程组 $bold(A) bold(x) = bold(b)$ 被分解为两个三角形方程组:

#dingli[向下消元与回代  先求解 $bold(L) bold(c) = bold(b)$, 然后求解 $bold(U) bold(x) = bold(c)$. (4)]

可用 $bold(L)$ 左乘 $bold(U) bold(x) = bold(c)$ 来检验上述解 $bold(x)$ 是正确的, 因为 $bold(L U) bold(x) = bold(L) bold(c)$ 就是 $bold(A) bold(x) = bold(b)$.

需要强调的是, 这些只是一直以来使用的求解步骤, 没有加入新的内容. 向下消元本质上是求解三角形方程组 $bold(L) bold(c) = bold(b)$, 然后回代求得 $bold(x)$. 可用如下示例来描述现在的做法.



#pagebreak()
