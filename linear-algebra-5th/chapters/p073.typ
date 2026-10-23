#import "../theme.typ": *

对第 1 列, 利用第一个方程将第一个主元下方的元素消为 0;

对第 2 列, 利用新得的第二个方程将第二个主元下方的元素消为 0;

对第 3—$n$ 列, 重复消元过程直至求得全部 $n$ 个主元和上三角形矩阵 $bold(U)$.

例如, 考虑 $4 times 4$ 方程组的系数矩阵, 对第 2 列消元后得到

#grid(columns: (1fr, auto), align: horizon,
  align(center)[$ mat(delim: "[", x, x, x, x; 0, x, x, x; 0, 0, x, x; 0, 0, x, x), $],
  [(3)],
)

最终要得到

#dmath[$ mat(delim: "[", x, x, x, x; , x, x, x; , , x, x; , , , x). $]

#hei[注]  上述两个矩阵中各 $x$ 表示的元素不一定相同.

向下消元的结果是一个上三角形矩阵 (上面省略了元素 0). 如果存在全部 $n$ 个主元 (都不为零!), 则系数矩阵非奇异. 问题: 左侧的哪些 $x$ 因为主元已知而在消元过程中不会改变? 下面是本节关于原线性方程组 $bold(A) bold(x) = bold(b)$、上三角形方程组 $bold(U) bold(x) = bold(c)$ 与回代求解 $(x, y, z)$ 的最后一个例子:

#grid(columns: (auto, auto, auto, auto, auto), column-gutter: 1.2em, align: horizon,
  [$ cases(x + y + z = 6, x + 2y + 2z = 9, x + 2y + 3z = 10) $],
  [向下 \ 向下],
  [$ cases(x + y + z = 6, y + z = 3, z = 1,) $],
  [$ mat(delim: "[", x; y; z) = mat(delim: "[", 3; 2; 1) . $],
  [向上 \ 向上],
)

上例中所有乘数都为 1, 所有主元也都是 1; 所有平面相交于解 $(3, 2, 1)$, 系数矩阵 $bold(A)$ 列向量组的线性组合系数为 $3, 2, 1$ 时生成向量 $bold(b) = (6, 9, 10)$; 三角形线性方程组为 $bold(U) bold(x) = bold(c) = (6, 3, 1)$.

#barHead[■ 要点回顾]

#hei[1.] 线性方程组 $(bold(A) bold(x) = bold(b))$ 在消元后变为上三角形 $(bold(U) bold(x) = bold(c))$.

#hei[2.] 从第 $i$ 个方程中减去第 $j$ 个方程的 $ell_(i j)$ 倍后可以使系数矩阵的 $(i, j)$ 元素为 0.

#hei[3.] 乘数 $ell_(i j) = frac("第 " i " 行中要消去的项的系数", "第 " j " 行的主元")$. 主元不能为 0!

#hei[4.] 当主元位置的元素为 0 时, 如果在它下方有非零元则需换行.

#hei[5.] 用回代来求解上三角形方程组 $bold(U) bold(x) = bold(c)$ (自下而上依次求解).

#hei[6.] 当消元法失效 (即使交换两行也无法继续) 时, 线性方程组 $bold(A) bold(x) = bold(b)$ 无解或有无穷多解.



#pagebreak()
