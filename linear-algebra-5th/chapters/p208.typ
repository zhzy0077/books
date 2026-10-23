#import "../theme.typ": *

$bold(R) bold(x) = 0$ 的全解为 $bold(x) = x_2 bold(s)_2 + x_3 bold(s)_3 + x_5 bold(s)_5$.

#h(2em) #hei[理由]  每个自由变量对应一个特殊解. 考虑到共有 $n$ 个变量和 $r$ 个主元, 因此应有 $n - r$ 个自由变量和 $n - r$ 个特殊解. 由于特殊解的第 2, 3, 5 行可组成单位矩阵, 所以特殊解是线性无关的. 从而 $N(bold(R))$ 的维数为 $n - r$.

#align(center)[
  零空间维数为 $n - r$, 特殊解构成零空间的一组基.
]

#block(stroke: 0.8pt, inset: 6pt, width: 100%)[
  #hei[(4)] $bold(R)^T$ 的零空间 ($bold(R)$ 的左零空间) 维数为 $m - r = 3 - 2 = 1$.
]

#h(2em) #hei[理由]  解方程组 $bold(R)^T bold(y) = 0$ 就是寻找能产生零向量的 $bold(R)^T$ 各列 (即 $bold(R)$ 各行) 的线性组合. 方程组 $bold(R)^T bold(y) = 0$ 或 $bold(y)^T bold(R) = 0^T$ 可改写成

#eqnum($ y_1 mat(delim: "[", 1, 3, 5, 0, 7) + y_2 mat(delim: "[", 0, 0, 0, 1, 2) + y_3 mat(delim: "[", 0, 0, 0, 0, 0) = mat(delim: "[", 0, 0, 0, 0, 0) $, 1)

#h(2em) 左零空间各行的线性组合等于零.

这个解 $y_1, y_2, y_3$ 很容易看出. 系数 $y_1$ 和 $y_2$ 应为 0, 而 $y_3$ 是自由的, 可为任意值. 故 $bold(R)^T$ 的零空间由形如 $bold(y) = (0, 0, y_3)$ 的全体向量组成.

无论如何, $bold(R)$ 总以 $m - r$ 个全零行结尾, 这 $m - r$ 行的任何线性组合总是零向量. 由于主元行是线性无关的, 所以 $bold(R)$ 的主元行仅有一种线性组合等于全零行. 因而左零空间中 $bold(y)$ 对应主元行的分量 $y_1, y_2, ..., y_r$ 均为零.

#align(center)[
  设 $m times n$ 矩阵 $bold(A)$ 的秩为 $r$, 则 $bold(A)$ 左零空间的维数为 $m - r$.
]

为什么称 $N(bold(R)^T)$ 为 “左零空间”? 原因在于 $bold(R)^T bold(y) = 0$ 可转置后变形为 $bold(y)^T bold(R) = 0^T$, 此时为行向量 $bold(y)^T$ 左乘 $bold(R)$. 在 (1) 式中也可以看到系数 $y_i$ 左乘各行. 该子空间最后出现, 有些线性代数教材省略了它, 也就错过了整个课程的美.


#block(stroke: 0.8pt, inset: 6pt, fill: luma(235), width: 100%)[
  #align(center)[
    空间 $R^n$ 中, 行空间与零空间的维数分别为 $r$ 和 $n - r$ (相加为 $n$); \
    空间 $R^m$ 中, 列空间和左零空间维数分别为 $r$ 和 $m - r$ (合计为 $m$).
  ]
]


#hei[矩阵 $bold(A)$ 的四个子空间]

我们仍需解释为什么 $m times n$ 矩阵 $bold(A)$ 的子空间维数与 $bold(R)$ 的相同 (图 3.6). 设 $bold(A)$ 为任意矩阵, 对应最简行阶梯形矩阵 $bold(R) = "rref"(bold(A))$.

#eqnumL([$bold(A)$ 化简为 $bold(R)$], $ bold(A) = mat(delim: "[", 1, 3, 5, 0, 7; 0, 0, 0, 1, 2; 1, 3, 5, 1, 9) $, 2)

注意 $C(bold(A)) != C(bold(R))$!



#pagebreak()
