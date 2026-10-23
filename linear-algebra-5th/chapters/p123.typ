#import "../theme.typ": *

#align(center, subsec[2.6　消元 = 分解: $bold(A) = bold(L) bold(U)$])

#yaodian[
  1. 每个消元矩阵 $bold(E)_(i j)$ 的逆矩阵是 $bold(L)_(i j)$, 此时主对角线之外的元素 $-l_(i j)$ 变为 $+l_(i j)$.
  2. 向下消元 (没有换行) 整个过程的逆是 $bold(L)$:
     $ bold(L) = (bold(L)_(21) bold(L)_(31) dots.c bold(L)_(n 1))(bold(L)_(32) dots.c bold(L)_(n 2))(bold(L)_(43) dots.c bold(L)_(n 3)) dots.c (bold(L)_(n,n-1)) . $
  3. 上述乘积矩阵 $bold(L)$ 仍然是下三角形矩阵. 每个乘数 $l_(i j)$ 位于第 $i$ 行第 $j$ 列.
  4. 利用 $bold(A) = bold(L) bold(U) = $ (下三角形矩阵)(上三角形矩阵) 可从 $bold(U)$ 恢复原矩阵 $bold(A)$.
  5. 对 $bold(A) bold(x) = bold(b)$ 消元可得 $bold(U) bold(x) = bold(c)$, 然后对 $bold(U) bold(x) = bold(c)$ 回代求解.
  6. 求解三角形线性方程组的乘法-减法计算的复杂度是 $n^2/2$, 而用消元法计算 $bold(U)$ 的复杂度是 $n^3/3$.
]

数学给人的印象是过于理论化, 而本节的目标是用最具应用价值的方式来描述高斯消元法, 是比较纯粹的应用性内容. 如果仔细观察线性代数中的关键概念, 就会发现很多概念本质上用到了矩阵分解, 即将原矩阵 $bold(A)$ 分解成两个或三个特殊矩阵的乘积. 第一种分解方法——也是实践中最重要的方法——来源于消元法: 分解式是 $bold(A) = bold(L) bold(U)$, 其中 $bold(L)$ 和 $bold(U)$ 是三角形矩阵.

由消元法可得上三角形矩阵 $bold(U)$, 主元在它的主对角线上, 消元步骤将矩阵 $bold(A)$ 化为 $bold(U)$. 下面演示如何利用一个下三角形矩阵 $bold(L)$ 逆转这些步骤 (将 $bold(U)$ 还原成 $bold(A)$). $bold(L)$ 中主对角线下方的元素恰好是乘数 $l_(i j)$ ——从第 $i$ 行中减去第 $j$ 行时所乘的倍数.

先看一个例子. 设二阶方阵 $bold(A) = mat(delim: "[", 2, 1; 6, 8)$, 要消去的数字是 6. 向下消元步骤是从第 2 行中减去第 1 行的 3 倍, 可用包含乘数 $l_(21) = 3$ 的 $bold(E)_(21)$ 来表示该步骤. 从 $bold(U)$ 还原 $bold(A)$ 的步骤可用 $bold(L) = bold(E)_(21)^(-1)$ (乘数 +3 表示加法) 来表示:

#align(center)[
  从 $bold(A)$ 向下消元成 $bold(U)$ #h(2em) $ bold(E)_(21) bold(A) = mat(delim: "[", 1, 0; -3, 1) mat(delim: "[", 2, 1; 6, 8) = mat(delim: "[", 2, 1; 0, 5) = bold(U) , $
]
#align(center)[
  从 $bold(U)$ 逆向还原成 $bold(A)$ #h(2em) $ bold(E)_(21)^(-1) bold(U) = mat(delim: "[", 1, 0; 3, 1) mat(delim: "[", 2, 1; 0, 5) = mat(delim: "[", 2, 1; 6, 8) = bold(A) . $
]

上述第二个等式就是分解式 $bold(L) bold(U) = bold(A)$, 且用 $bold(L)$ 来代替 $bold(E)_(21)^(-1)$. 对规模较大的方阵消元时需要很多消元矩阵, 而 $bold(L)$ 则包含了所有消元矩阵的逆矩阵.

从 $bold(A)$ 消元为 $bold(U)$ 的每一步都是左乘一个消元矩阵 $bold(E)_(i j)$, 使得位置 $(i, j)$ 的元素消为 0. 为方便表述, 这里只讨论最常见的情形——消元过程中没有换行. 若 $bold(A)$ 是一个三阶方阵, 依次左乘 $bold(E)_(21), bold(E)_(31)$ 和 $bold(E)_(32)$, 使用乘数 $l_(i j)$ 可将主对角线下方位置 $(2,1), (3,1)$ 和 $(3,2)$ 的元素消为 0, 当得到上三角形矩阵 $bold(U)$ 时停止消元.



#pagebreak()
