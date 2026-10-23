#import "../theme.typ": *

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  特殊解 $bold(s)$ 满足 $bold(A) bold(s) = bold(0)$, $bold(A) = mat(delim: "[", 1, 2; 3, 6)$ 的零空间是 $bold(s) = mat(delim: "[", -2; 1)$ 所有倍数的全体.
]

从计算 $bold(A) bold(x) = bold(0)$ 的特殊解入手是描述零空间的最佳方式. 因为设定了自由变量为 $x_2 = 1$, 所以该解是特殊的.

#align(center)[$bold(A)$ 的零空间由 $bold(A) bold(x) = bold(0)$ 特殊解的全部线性组合构成.]

#ti[例 2][$x + 2y + 3z = 0$ 对应 $1 times 3$ 矩阵 $bold(A) = mat(delim: "[", 1, 2, 3)$. 这样 $bold(A) bold(x) = bold(0)$ 生成一个平面, 其上的所有向量均垂直于 $(1, 2, 3)$. 该平面为 $bold(A)$ 的零空间. 令两个自由变量 $y$ 与 $z$ 交替取值 0 与 1, 从而得到]

#align(center)[$mat(delim: "[", 1, 2, 3) mat(delim: "[", x; y; z) = 0$ 的两个特殊解 $bold(s)_1 = mat(delim: "[", -2; 1; 0)$ 与 $bold(s)_2 = mat(delim: "[", -3; 0; 1)$.]

这两个向量 $bold(s)_1$ 与 $bold(s)_2$ 位于平面 $x + 2y + 3z = 0$ 上. 该平面上的所有向量均为 $bold(s)_1$ 与 $bold(s)_2$ 的线性组合.

注意 $bold(s)_1$ 与 $bold(s)_2$ 的特殊之处. 它们的后两个分量是 “自由的”, 所以特地令它们分别为 1, 0 与 0, 1. 然后根据方程组 $bold(A) bold(x) = bold(0)$ 确定第一个分量分别为 $-2$ 与 $-3$.

$x + 2y + 3z = 6$ 的解也是在同一个平面上, 但该平面并非子空间. 对于方程组 $bold(A) bold(x) = bold(b)$, 向量 $bold(x) = bold(0)$ 只是在 $bold(b) = bold(0)$ 时方为解. 第 3.3 节将会展示 $bold(A) bold(x) = bold(b)$ 的解 (如果有解) 是如何从零向量通过一个特解#footnote[译者注: 这里的 “特解” 是指线性方程组 $bold(A) bold(x) = bold(b)$ 的一个具体的解. 而本节中的 “特殊解” 是齐次线性方程组 $bold(A) bold(x) = bold(0)$ 的一个解, 它是由自由变量取特殊值 0, 1 而得的.] 平移而得到的.

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  本节的两个关键步骤是

  (1) 将 $bold(A)$ 化为行阶梯形矩阵 $bold(R)$ ;

  (2) 找出 $bold(A) bold(x) = bold(0)$ 的特殊解.

  第 145 页展示了有 3 个主元的 $4 times 5$ 矩阵 $bold(A)$ 与 $bold(R)$. 对应的方程组 $bold(A) bold(x) = bold(0)$ 以及 $bold(R) bold(x) = bold(0)$ 有 $5 - 3 = 2$ 个特殊解 $bold(s)_1$ 与 $bold(s)_2$.
]

#subsec[主元列与自由列]

因为 $bold(A) = mat(delim: "[", 1, 2, 3)$ 的第 1 列包含唯一的主元, 所以 $bold(x)$ 的第一个分量不是自由的. 自由的分量对应的是无主元列. 特殊的选值 (1 或者 0) 仅针对特殊解中的自由变量.

#ti[例 3][求出下列 $bold(A), bold(B), bold(C)$ 的零空间以及 $bold(C) bold(x) = bold(0)$ 的两个特殊解:]

#align(center)[$bold(A) = mat(delim: "[", 1, 2; 3, 8) , quad bold(B) = mat(delim: "[", bold(A); 2 bold(A)) = mat(delim: "[", 1, 2; 3, 8; 2, 4; 6, 16) , quad bold(C) = mat(delim: "[", bold(A), 2 bold(A)) = mat(delim: "[", 1, 2, 2, 4; 3, 8, 6, 16) .$]



#pagebreak()
