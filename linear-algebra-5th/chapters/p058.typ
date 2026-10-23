#import "../theme.typ": *

行图中的三个平面也相交于这个解对应的点 $(0, 0, 2)$.

#grid(columns: (auto, 1fr),
  align(horizon)[#align(center)[$(x, y, z) = (0, 0, 2)$ 时 \ 得正确的线性组合]],
  align(center)[$ 0 mat(delim: "[", 1; 2; 6) + 0 mat(delim: "[", 2; 5; -3) + 2 mat(delim: "[", 3; 2; 1) = mat(delim: "[", 6; 4; 2). $],
)

#subsec[线性方程组的矩阵形式]

行图中有 3 个行向量, 列图中有 3 个列向量 (除此之外还有方程右侧的列向量), 二者均包含 9 个数字. 这 9 个数字可构成一个 $3 times 3$ 矩阵 $bold(A)$:

#align(center)[$bold(A) bold(x) = bold(b)$ 的“系数矩阵”是 $bold(A) = mat(delim: "[", 1, 2, 3; 2, 5, 2; 6, -3, 1).$]

大写字母 $bold(A)$ 代表全部 9 个系数 (此处写成方形数表), 字母 $bold(b)$ 表示以常数项 $6, 4, 2$ 为分量的列向量. 未知量 $bold(x)$ 也是一个列向量, 它的分量是 $x, y, z$. (通常用粗体字母来表示向量, 用 $x$ 表示未知向量.) 方程组从行的视角来解读可表示成 (3) 式, 从列的视角来解读可表示成 (4) 式, 从矩阵的视角来解读则为如下所示的 (5) 式:

#eqnumL([矩阵方程 $bold(A) bold(x) = bold(b)$], $ mat(delim: "[", 1, 2, 3; 2, 5, 2; 6, -3, 1) mat(delim: "[", x; y; z) = mat(delim: "[", 6; 4; 2). $, 5)

基本问题: “$bold(A)$ 左乘 $bold(x)$”是什么意思? 可以逐行相乘或逐列相乘, 不论怎样, $bold(A) bold(x) = bold(b)$ 都应正确地表示这三个方程, 且两种方式都要做 9 次乘法运算.

#hei[逐行相乘]  $bold(A) bold(x)$ 来自点积, $bold(A)$ 的每一个行向量左乘列向量 $bold(x)$:

#eqnum($ bold(A) bold(x) = mat(delim: "[", (第 1 行) · bold(x); (第 2 行) · bold(x); (第 3 行) · bold(x)). $, 6)

#hei[逐列相乘]  $bold(A) bold(x)$ 是列向量的线性组合:

#eqnum($ bold(A) bold(x) = x (第 1 列) + y (第 2 列) + z (第 3 列). $, 7)

当代入解 $bold(x) = (0, 0, 2)$ 时, 乘积 $bold(A) bold(x)$ 生成 $bold(b)$:

#align(center)[$ mat(delim: "[", 1, 2, 3; 2, 5, 2; 6, -3, 1) mat(delim: "[", 0; 0; 2) = 2 (第 3 列) = mat(delim: "[", 6; 4; 2). $]



#pagebreak()
