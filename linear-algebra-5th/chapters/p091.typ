#import "../theme.typ": *

#ti[23.][消元矩阵 $bold(E) = mat(delim: "[", 1, 0; -2, 1)$ 的作用是从矩阵 $bold(A)$ 的第 2 行中减去第 1 行的 2 倍, 结果是 $bold(E) bold(A)$. 请分析 $bold(E) (bold(E) bold(A))$ 的作用效果. 如果将乘法顺序颠倒为 $bold(A) bold(E)$, 则是从矩阵 $bold(A)$ 的 #underline[#h(2em)] 减去 #underline[#h(2em)] 的 2 倍. (可举例分析.)]

习题 24—27 研究包含列向量 $bold(b)$ 的增广矩阵 $[bold(A) quad bold(b)]$.

#ti[24.][对线性方程组

#dmath[$ bold(A) bold(x) = mat(delim: "[", 2, 3; 4, 1) mat(delim: "[", x_1; x_2) = mat(delim: "[", 1; 17) $]

的 $2 times 3$ 增广矩阵 $[bold(A) quad bold(b)]$ 应用消元法, 以得出三角形线性方程组 $bold(U) bold(x) = bold(c)$ 并求出解 $bold(x)$.]

#ti[25.][对线性方程组

#dmath[$ bold(A) bold(x) = mat(delim: "[", 1, 2, 3; 2, 3, 4; 3, 5, 7) mat(delim: "[", x; y; z) = mat(delim: "[", 1; 2; 6) $]

的 $3 times 4$ 增广矩阵 $[bold(A) quad bold(b)]$ 应用消元法. 首先请说明这个线性方程组为什么无解, 然后试修改最后一个数字 6 使得线性方程组存在一个解.]

#ti[26.][线性方程组 $bold(A) bold(x) = bold(b)$ 和 $bold(A) bold(x)^* = bold(b)^*$ 分别为

#dmath[$ mat(delim: "[", 1, 4; 2, 7) mat(delim: "[", x; y) = mat(delim: "[", 1; 0) , quad mat(delim: "[", 1, 4; 2, 7) mat(delim: "[", u; v) = mat(delim: "[", 0; 1) , $]

它们有相同的系数矩阵 $bold(A)$. 试构建一个双重增广矩阵来同时求解这两个方程组 (提示: 使用 $2 times 4$ 矩阵来同时求解).]

#ti[27.][在增广矩阵

#dmath[$ [bold(A) quad bold(b)] = mat(delim: "[", 1, 2, 3, a; 0, 4, 5, b; 0, 0, d, c) $]

中选择合适的数字 $a, b, c, d$ 使得线性方程组 $bold(A) bold(x) = bold(b)$ (a) 无解; (b) 有无穷多解. 请分析 $a, b, c$ 和 $d$ 中哪些数字对解的存在性没有影响.]

#ti[28.][若 $bold(A) bold(B) = bold(I)$ 且 $bold(B) bold(C) = bold(I)$, 请利用乘法结合律证明 $bold(A) = bold(C)$.]

#align(center)[#image("../assets/fig-p091-icon.png", width: 3.2%)]

#xiti[挑 战 题]

#ti[29.][请求出一个三角形矩阵 $bold(E)$, 使其可将如下 “帕斯卡 (Pascal) 矩阵” 化简为较小规模的帕斯卡矩阵:

#grid(columns: (auto, auto), column-gutter: 2em, align: (center+horizon, center+horizon),
  [对第 1 列消元],
  [$ bold(E) mat(delim: "[", 1, 0, 0, 0; 1, 1, 0, 0; 1, 2, 1, 0; 1, 3, 3, 1) = mat(delim: "[", 1, 0, 0, 0; 0, 1, 0, 0; 0, 1, 1, 0; 0, 1, 2, 1) . $],
)]



#pagebreak()
