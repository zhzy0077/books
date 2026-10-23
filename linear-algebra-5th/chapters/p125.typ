#import "../theme.typ": *

乘数都是 1. 将 $bold(B)$ 推广为 4 阶方阵时, 仍有类似的结论:

#grid(columns: (auto, 1fr), column-gutter: 2em, align: (right + horizon, center),
  [特殊\模式],
  $ bold(B) = mat(delim: "[", 1, 1, 0, 0; 1, 2, 1, 0; 0, 1, 2, 1; 0, 0, 1, 2) = mat(delim: "[", 1, , , ; 1, 1, , ; 0, 1, 1, ; 0, 0, 1, 1) mat(delim: "[", 1, 1, 0, 0; , 1, 1, 0; , , 1, 1; , , , 1) . $
)

两个例子中的 $bold(L U)$ 分解式展示了一些在实践中非常重要的额外信息. 假设没有换行, 如何预测 $bold(L)$ 和 $bold(U)$ 中的零元?

#align(center)[若 $bold(A)$ 的某一行从 0 开始, 则 $bold(L)$ 对应的行也是如此;]

#align(center)[若 $bold(A)$ 的某一列从 0 开始, 则 $bold(U)$ 对应的列也是如此.]

若 $bold(A)$ 的某一行从 0 开始, 则无需消元, 而 $bold(L)$ 中含 0 也能节省计算开销. 同理, 从 0 开始的列对 $bold(U)$ 而言也有类似结论. 但是需要注意, 当进行向下消元时, 矩阵中部的 0 可能会被其他数字替换. 下面分析为什么乘数 $l_(i j)$ 位于 $bold(L)$ 的对应位置而不会与其他元素混合运算.

#yaodian[
  $bold(A) = bold(L U)$ 的关键原因  被下方行所减的主元行是否是 $bold(A)$ 中原来的行? 不是, 消元过程可能会改变 $bold(A)$ 的行. 那么它们是否是 $bold(U)$ 的行? 是的, $bold(U)$ 中的主元行一旦确定后就保持不变. 当计算 $bold(U)$ 的第 3 行时, 需要减去 $bold(U)$ 的前两行 (而不是 $bold(A)$ 的前两行!) 的倍数:

  #eqnum($ bold(U) "的第" 3 "行" = (bold(A) "的第" 3 "行") - l_(31) (bold(U) "的第" 1 "行") - l_(32) (bold(U) "的第" 2 "行") . $, 1)

  可将上述等式改写成行向量 $[l_(31) quad l_(32) quad 1]$ 左乘矩阵 $bold(U)$:

  #eqnum($ (bold(A) "的第" 3 "行") = l_(31) (bold(U) "的第" 1 "行") + l_(32) (bold(U) "的第" 2 "行") + 1 (bold(U) "的第" 3 "行") . $, 2)

  #hei[这恰好就是 $bold(A) = bold(L U)$ 的第 3 行, 从而 $bold(L)$ 的第 3 行就是 $l_(31), l_(32), 1$. 上述原理与矩阵 $bold(A)$ 的阶数无关, 因此当没有换行时可得 $bold(A) = bold(L U)$.]
]

#hei[通过 $bold(L D U)$ 获得更对称的分解式]  因为 $bold(U)$ 的主对角线上的元素是主元 (通常不为 1), 而 $bold(L)$ 的主对角线上的元素全是 1, 因此 $bold(A) = bold(L U)$ “不对称”. 将 $bold(U)$ 分解为一个由主元构成的对角矩阵 $bold(D)$ 与一个主对角线上元素全是 1 的上三角形矩阵的乘积, 就可以非常方便地改变分解形式:

#grid(columns: (auto, 1fr), column-gutter: 2em, align: (right + horizon, center),
  [将 $bold(U)$ 分解成],
  $ mat(delim: "[", d_1, , , ; , d_2, , ; , , dots.c, ; , , , d_n) mat(delim: "[", 1, u_12/d_1, u_13/d_1, *; , 1, u_23/d_2, *; , , dots.c, dots.v; , , , 1) . $
)

这个新的上三角形矩阵仍然用字母 $bold(U)$ 来表示 (注意不要与原来的 $bold(U)$ 混淆), 它的主对角线



#pagebreak()
