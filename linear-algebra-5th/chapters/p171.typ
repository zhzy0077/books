#import "../theme.typ": *

#hei[28.] 解释为什么 $A$ 与 $-A$ 总是有相同的最简行阶梯形矩阵 $bold(R)$.

#hei[29.] 若 $A$ 为 $4 times 4$ 可逆矩阵, 描述 $4 times 8$ 矩阵 $B = mat(delim: "[", A, A)$ 的零空间.

#hei[30.] 如果矩阵 $C = mat(delim: "[", A; B)$, 那么零空间 $N(C)$ 与 $N(A)$ 和 $N(B)$ 有什么联系?

#hei[31.] 求出以下矩阵的最简行阶梯形矩阵 $bold(R)$ 以及秩:

#h(1em) (a) $3 times 4$ 矩阵 $A$, 其中所有元素均为 4;

#h(1em) (b) $3 times 4$ 矩阵 $A$, 其中每个元素 $a_(i j) = i + j - 1$;

#h(1em) (c) $3 times 4$ 矩阵 $A$, 其中每个元素 $a_(i j) = (-1)^j$.

#hei[32.] 基尔霍夫 (Kirchhoff) 电流定律 $A^T bold(y) = 0$ 描述的是每个顶点处电流流入量等于流出量. 对于图 3.3 中的顶点 1, 此即 $y_3 = y_1 + y_4$. 根据基尔霍夫电流定律, 写出四个顶点处的四个方程 (图中箭头表明各电流的正向), 其系数矩阵为 $A^T$. 将 $A^T$ 化简为最简行阶梯形矩阵 $bold(R)$, 并求出 $A^T$ ($4 times 6$ 矩阵) 零空间中的三个特殊解.


#grid(columns: (1fr, 1fr), column-gutter: 20pt, align: horizon,
  [#align(right)[$A = mat(delim: "[", -1, 1, 0, 0; 0, -1, 1, 0; 1, 0, -1, 0; -1, 0, 0, 1; 0, -1, 0, 1; 0, 0, -1, 1) .$]],
  [#align(center)[#figure(image("../assets/fig-p171-fig33.png", width: 80%), numbering: none, caption: [图 3.3　第 32 题图.])]],
)


#hei[33.] 以下哪些叙述给出了矩阵 $A$ 的秩的正确定义?

#h(1em) (a) 最简行阶梯形矩阵 $bold(R)$ 中非零行的数目;

#h(1em) (b) 列数减去行数;

#h(1em) (c) 列数减去自由列的数目;

#h(1em) (d) 最简行阶梯形矩阵 $bold(R)$ 中元素 1 的数目.

#hei[34.] 求出以下每个 (分块) 矩阵的最简行阶梯形矩阵 $bold(R)$:

#align(center)[$A = mat(delim: "[", 0, 0, 0; 0, 0, 3; 2, 4, 6) , quad B = mat(delim: "[", A, A) , quad C = mat(delim: "[", A, A; A, O) .$]

#hei[35.] 假设全部的主元变量不是一开始就出现, 而是最后才出现. 描述最简行阶梯形矩阵 $bold(R)$ 中全部四个子块 (子块 $B$ 应为 $r times r$ 的):

#align(center)[$bold(R) = mat(delim: "[", A, B; C, D) .$]

#h(1em) 包含特殊解的零空间矩阵 $bold(N)$ 是什么?



#pagebreak()
