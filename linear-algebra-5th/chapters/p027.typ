#import "../theme.typ": *

每个方程生成一条直线, 两条直线的交点对应方程的解 $c = 2/3$, $d = 1/3$. 也可将这两个一般方程写成一个矩阵方程, 就是即将学习的

#grid(columns: (auto, 1fr), column-gutter: 14pt,
  [$2 times 2$ 矩阵],
  align(center)[$ mat(delim: "[", 2,-1;-1,2) mat(delim: "[", c;d) = mat(delim: "[", 1;0). $],
)

#xiti[习题集 1.1]

习题 1—9 是关于向量加法和线性组合的.

#hei[1.] 描述下列各组向量全体线性组合的几何意义 (直线、平面或 $R^3$ 空间):

#align(center)[
  (a) $mat(delim: "[", 1;2;3), mat(delim: "[", 3;6;9)$; #h(2em) (b) $mat(delim: "[", 1;0;0), mat(delim: "[", 0;2;3)$; #h(2em) (c) $mat(delim: "[", 2;0;0), mat(delim: "[", 0;2;2), mat(delim: "[", 2;2;2)$.
]

#hei[2.] 请在 $x y$ 平面上画出 $bold(v) = mat(delim: "[", 4;1), bold(w) = mat(delim: "[", -2;2), bold(v) + bold(w)$ 与 $bold(v) - bold(w)$.

#hei[3.] 若 $bold(v) + bold(w) = mat(delim: "[", 5;1)$ 且 $bold(v) - bold(w) = mat(delim: "[", 1;5)$, 请计算并画出向量 $bold(v)$ 与 $bold(w)$.

#hei[4.] 已知 $bold(v) = mat(delim: "[", 2;1), bold(w) = mat(delim: "[", 1;2)$, 请计算 $3bold(v) + bold(w)$ 与 $c bold(v) + d bold(w)$ 的分量.

#hei[5.] 对向量

#align(center)[$ bold(u) = mat(delim: "[", 1;2;3), quad bold(v) = mat(delim: "[", -3;1;-2), quad bold(w) = mat(delim: "[", 2;-3;-1), $]

请计算 $bold(u) + bold(v) + bold(w)$ 与 $2bold(u) + 2bold(v) + bold(w)$. 如何判断 $bold(u), bold(v), bold(w)$ 是否位于同一平面? 三者位于同一平面是因为 $bold(w) = c bold(u) + d bold(v)$, 求解 $c$ 与 $d$.

#hei[6.] 向量 $bold(v) = (1,-2,1)$ 与 $bold(w) = (0,1,-1)$ 的任意线性组合的分量之和为 \_\_\_\_. 求解满足 $c bold(v) + d bold(w) = (3,3,-6)$ 的 $c$ 与 $d$, 并说明 $(3,3,6)$ 为什么不可能为 $bold(v)$ 与 $bold(w)$ 的线性组合.

#hei[7.] 在 $x y$ 平面上标注如下 9 个线性组合对应的点:

#align(center)[$ c mat(delim: "[", 2;1) + d mat(delim: "[", 0;1), quad "其中" c = 0,1,2; d = 0,1,2. $]

#hei[8.] 图 1.1 中平行四边形的一条对角线是 $bold(v) + bold(w)$, 那么另一条对角线是什么? 这两条对角线的和向量是什么? 请画出这个和向量.



#pagebreak()
