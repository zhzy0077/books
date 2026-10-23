#import "../theme.typ": *

#hei[4.] 本节只初步探讨了部分关键概念, 并未开展深入研究.

#v(14pt)

#grid(
  columns: (1fr, auto),
  align: (right + horizon, right + horizon),
  [#line(length: 100%, stroke: 0.8pt)],
  barHead[■ 范例解析],
)

#v(10pt)

#hei[1.3 A]　将前述例子中矩阵 $A$ 的元素 $a_(31)$（第 3 行, 第 1 列）变成 $a_(31) = 1$:

#grid(columns: (auto, 1fr), column-gutter: 1.2em, align: (right+horizon, center+horizon),
  [$A bold(x) = bold(b)$],
  [$ mat(1,0,0; -1,1,0; 1,-1,1) mat(x_1; x_2; x_3) = mat(x_1; -x_1 + x_2; x_1 - x_2 + x_3) = mat(b_1; b_2; b_3) . $],
)

对任意向量 $bold(b)$ 求对应的解 $bold(x)$, 并从 $bold(x) = A^(-1) bold(b)$ 中写出逆矩阵 $A^(-1)$.

#h(1em) 解　自上而下求解（三角形）线性方程组 $A bold(x) = bold(b)$:

#grid(columns: (auto, auto), column-gutter: 3em, align: (left+horizon, center+horizon),
  [首先 $x_1 = b_1$,\
   其次 $x_2 = b_1 + b_2$,\
   再次 $x_3 = b_2 + b_3$,],
  [$ "由此可知" quad bold(x) = A^(-1) bold(b) = mat(1,0,0; 1,1,0; 0,1,1) mat(b_1; b_2; b_3) . $],
)

将上式视为逆矩阵的各列向量分别与 $b_1, b_2, b_3$ 相乘也是可行的, 其中矩阵 $A^(-1)$ 的第 1 列是 $bold(b) = (1,0,0)$ 时的解, 第 2 列是 $bold(b) = (0,1,0)$ 时的解, 第 3 列是 $bold(b) = (0,0,1)$ 的解.

矩阵 $A$ 的三个列向量线性无关, 不在同一个平面内. 当设置正确的组合系数 $x_1, x_2, x_3$ 时, 这三个向量的线性组合能生成任意的三维向量 $bold(b) = (b_1, b_2, b_3)$, 这些组合系数来自解向量 $bold(x) = A^(-1) bold(b)$.

#hei[1.3 B]　本例中 $E$ 是一个消元矩阵. $E$ 关联了一个减法而 $E^(-1)$ 关联了一个加法.

#align(center)[$ bold(b) = E bold(x) quad mat(b_1; b_2) = mat(x_1; x_2 - ell x_1) = mat(1,0; -ell,1) mat(x_1; x_2), quad E = mat(1,0; -ell,1) . $]

第一个方程是 $x_1 = b_1$, 第二个方程是 $x_2 - ell x_1 = b_2$. 左乘消元矩阵 $E$ 使得 $bold(x)$ 的分量相减, 左乘它的逆矩阵 $E^(-1)$ 使得 $bold(b)$ 的分量相加:

#align(center)[$ bold(x) = E^(-1) bold(b) quad mat(x_1; x_2) = mat(b_1; ell b_1 + b_2) = mat(1,0; ell,1) mat(b_1; b_2), quad E^(-1) = mat(1,0; ell,1) . $]

#hei[1.3 C]　将矩阵 $C$ 从循环差分变为中心差分后可得 $x_3 - x_1$:

#grid(columns: (auto, 1fr, auto), column-gutter: 1.2em, align: (right+horizon, center+horizon, right+horizon),
  [$C bold(x) = bold(b)$],
  [$ mat(0,1,0; -1,0,1; 0,-1,0) mat(x_1; x_2; x_3) = mat(x_2 - 0; x_3 - x_1; 0 - x_2) = mat(b_1; b_2; b_3) . $],
  [$(15)$],
)

只当 $b_1 + b_3 = x_2 - x_2 = 0$ 时, $C bold(x) = bold(b)$ 才有解, 这是三维空间中向量 $bold(b)$ 所在的平面, 矩阵 $C$ 的每一列都在这个平面内. 此时矩阵 $C$ 不可逆, 因为该平面包含了其列向量的全体线性组合（即由 $C bold(x)$ 所得全体向量）.



#pagebreak()
