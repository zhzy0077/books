#import "../theme.typ": *

#v(14pt)

#align(right)[#line(length: 100%, stroke: 0.8pt)]
#align(right, barHead[■ 范例解析])

#v(10pt)

#hei[5.3 A]　若 $bold(A)$ 是奇异矩阵, 则等式 $bold(A) bold(C)^T = (det bold(A)) bold(I)$ 会变成 $bold(A) bold(C)^T = $ #hei[零矩阵]. $bold(C)^T$ 每一列都在 $bold(A)$ 的零空间内. 又因这些列包含了 $bold(A)$ 每一行的代数余子式, 故对一个秩为 2 的三阶方阵能用代数余子式快速求出零空间.

对于秩为 2 的奇异矩阵 $bold(A)_i$, 可令 $bold(x)$ 为一行元素的代数余子式来解出 $bold(A) bold(x) = bold(0)$:

#grid(
  columns: (auto, auto),
  align: (left + horizon, center),
  [代数余子式 \ 可得零空间],
  $ bold(A)_1 = mat(delim: "[", 1, 4, 7; 2, 3, 9; 2, 2, 8), quad bold(A)_2 = mat(delim: "[", 1, 1, 2; 1, 1, 1; 1, 1, 1) . $,
)

#h(1em) 解　矩阵 $bold(A)_1$ 第 1 行元素的代数余子式是 (要注意每一个负号):

#dmath[$ mat(delim: "|", 3, 9; 2, 8) = 6, quad - mat(delim: "|", 2, 9; 2, 8) = 2, quad mat(delim: "|", 2, 3; 2, 2) = -2, $]

则 $bold(x) = (6, 2, -2)$ 是 $bold(A) bold(x) = bold(0)$ 的一个解. 第 2 行元素的代数余子式是 $(-18, -6, 6)$, 刚好是 $-3 bold(x)$, 也位于 $bold(A)_1$ 的一维零空间内.

矩阵 $bold(A)_2$ 第 1 行元素的代数余子式全是零, 但零向量 $bold(x) = (0, 0, 0)$ 不是关注的重点. 由第 2 行元素的代数余子式可得 $bold(x) = (1, -1, 0)$ 是 $bold(A) bold(x) = bold(0)$ 的一个解.

可以证明, 对任意 $n$ 阶方阵, 当秩是 $n - 1$ 时, 至少有一个非零的代数余子式; 当秩是 $n - 2$ 时, 所有代数余子式都是零, 此时用代数余子式方法只能求出 $bold(x) = bold(0)$.

#hei[5.3 B]　首先利用克拉默法则中的比值 $(det bold(B)_j)/(det bold(A))$ 求解 $bold(A) bold(x) = bold(b)$, 然后用 $bold(A)^(-1) = (bold(C)^T)/(det bold(A))$ 计算逆矩阵. 本题中 $bold(b) = (0, 0, 1)$ 时方程组的解 $bold(x)$ 是 $bold(A)^(-1)$ 的第 3 列! 请问哪些代数余子式参与了这个列向量 $bold(x) = (x, y, z)$ 的计算?

#dmath[$ bold(A)^(-1) "的第 3 列" quad mat(delim: "[", 2, 6, 2; 1, 4, 2; 5, 9, 0) mat(delim: "[", x; y; z) = mat(delim: "[", 0; 0; 1) . $]

分别以 $bold(A)$ 的列向量为相邻三边以及以 $bold(A)^(-1)$ 的行向量为相邻三边构造两个平行六面体, 请计算这两个平行六面体的体积.

#h(1em) 解　$bold(B)_j$ (用右边的常数项向量 $bold(b)$ 替换了系数矩阵 $bold(A)$ 的第 $j$ 列) 的行列式是

#dmath[$ |bold(B)_1| = mat(delim: "|", 0, 6, 2; 0, 4, 2; 1, 9, 0) = 4, quad |bold(B)_2| = mat(delim: "|", 2, 0, 2; 1, 0, 2; 5, 1, 0) = -2, quad |bold(B)_3| = mat(delim: "|", 2, 6, 0; 1, 4, 0; 5, 9, 1) = 2 . $]

这些恰好是第 3 行元素的代数余子式 $C_31, C_32, C_33$, 因此它们与第 3 行向量的点积是 $det bold(A) = 2$:

#dmath[$ det bold(A) = a_31 C_31 + a_32 C_32 + a_33 C_33 = (5, 9, 0) dot (4, -2, 2) = 2 . $]

#pagebreak()