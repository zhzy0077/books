#import "../theme.typ": *

#align(center, subsec[2.4  矩阵运算的规则])

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
#hei[1.] 设矩阵 $bold(A)$ 有 $n$ 列, 矩阵 $bold(B)$ 有 $n$ 行, 则 #box(stroke: 0.6pt, inset: 3pt)[$bold(A)_(m times n) bold(B)_(n times p) = bold(C)_(m times p)$].

#hei[2.] $bold(A) bold(B) = bold(C)$ 中每个元素都是一个点积: $c_(i j) = (bold(A)$ 的第 $i$ 行$) dot (bold(B)$ 的第 $j$ 列$)$.

#hei[3.] 由运算规则可得 $(bold(A) bold(B)) bold(C) = bold(A) (bold(B) bold(C))$, 且 $(bold(A) bold(B)) bold(x) = bold(A) (bold(B) bold(x))$.

#hei[4.] 计算 $bold(A) bold(B)$ 还有 3 种不同的方式: $bold(A)$ 左乘 $bold(B)$ 的各列, $bold(A)$ 的各行左乘 $bold(B)$, $bold(A)$ 的各列左乘 $bold(B)$ 的各行.

#hei[5.] $bold(A) bold(B) = bold(B) bold(A)$ 一般不成立. 大部分情况下 $bold(A)$ 与 $bold(B)$ 相乘时不满足交换律.

#hei[6.] 矩阵可分块后再相乘: $bold(A) = [bold(A)_1 quad bold(A)_2]$ 左乘 $bold(B) = mat(bold(B)_1; bold(B)_2)$ 等于 $bold(A)_1 bold(B)_1 + bold(A)_2 bold(B)_2$.
]

本节将从一个基本事实开始: 矩阵是由数或 “元素” 排成的矩形阵列, 当 $bold(A)$ 有 $m$ 行 $n$ 列时称其为 “$m times n$” 矩阵, $m times m$ 矩阵也称为 $m$ 阶方阵或 $m$ 阶矩阵. 若两个矩阵同型 (行数、列数对应相等), 则可以相加. 矩阵也可以与任意常数 $c$ 相乘 (称为矩阵的数乘). 以下是 $3 times 2$ 矩阵加法与数乘的运算示例:

#dmath[$ mat(1, 2; 3, 4; 0, 0) + mat(2, 2; 4, 4; 9, 9) = mat(3, 4; 7, 8; 9, 9), quad 2 mat(1, 2; 3, 4; 0, 0) = mat(2, 4; 6, 8; 0, 0) . $]

矩阵加法的运算规则与向量加法的相同——将对应元素分别相加, 一次计算一个元素. 可将列向量看成只有一列的矩阵 (即 $n = 1$). 矩阵 $-bold(A)$ 是 $bold(A)$ 与数 $c = -1$ 相乘的结果 (所有元素取相反数), $bold(A)$ 与 $-bold(A)$ 相加得零矩阵 $bold(O)$, 零矩阵的所有元素都是 0. 以上都是有关矩阵的基本知识.

$m times n$ 矩阵 $bold(A)$ 第 $i$ 行第 $j$ 列元素记为 $a_(i j)$ 或 $A(i, j)$. 例如, 矩阵 $bold(A)$ 第 1 行的 $n$ 个元素是 $a_(11), a_(12), dots.c, a_(1 n)$, 左下角的元素是 $a_(m 1)$, 右下角的元素是 $a_(m n)$. 行标 $i$ 的取值范围是 1 到 $m$, 列标 $j$ 的取值范围是 1 到 $n$. 此时, 矩阵 $bold(A)$ 也写成 $bold(A)_(m times n)$.

矩阵加法非常简单, 但是矩阵乘法则需要特别关注: 什么情况下可用 $bold(A)$ 左乘 $bold(B)$, 如何计算乘积 $bold(A) bold(B)$? 本节将学习计算 $bold(A) bold(B)$ 的 4 种方法. 注意, 当 $bold(A)$ 和 $bold(B)$ 都是 $3 times 2$ 矩阵时, $bold(A) bold(B)$ 没有意义, 因为

#align(center)[$bold(A) bold(B)$ 可乘的前提: 若 $bold(A)$ 有 $n$ 列, 则 $bold(B)$ 必须有 $n$ 行.]

若 $bold(A)$ 是 $3 times 2$ 矩阵, 则 $bold(B)$ 可以是 $2 times 1$ (向量)、$2 times 2$ (方阵) 或 $2 times 20$ 矩阵, 以确保可用 $bold(A)$ 左乘 $bold(B)$ 的每一列. 本节首先将从点积方法开始矩阵乘法的学习, 然后学习列方法: $bold(A)$ 左乘 $bold(B)$ 的每一列. 两种方法都遵守以下法则:

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
#align(center)[#hei[矩阵乘法的基本法则] #box[$ (bold(A) bold(B)) bold(C) = bold(A) (bold(B) bold(C)) . $] #h(3em) (1)]
]



#pagebreak()
