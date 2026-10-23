#import "../theme.typ": *
#set math.equation(numbering: none)

将等号左侧的 9 个系数按照顺序排列得矩阵 $bold(A)$, 将 $bold(A)$ 写在向量 $bold(x)$ 的左侧表示用矩阵 $bold(A)$ 左乘向量 $bold(x)$, 由“$bold(A)$ 左乘 $bold(x)$”的规则恰好可以得到三个方程.

$bold(A)$ 左乘 $bold(x)$ 的回顾. 矩阵左乘向量的结果是一个向量. 当方程个数等于未知数个数时, 系数矩阵是一个方阵, 上例中系数矩阵是 $3 times 3$ 矩阵, 即三阶方阵. 更一般的 $n$ 阶方阵是 $n times n$ 矩阵, 对应的向量 $bold(x)$ 在 $n$ 维空间中.


#align(center)[未知数向量是 $bold(x) = mat(x_1; x_2; x_3)$, 　解向量是 $bold(x) = mat(-1; 2; 2)$.]


要点: $bold(A) bold(x) = bold(b)$ 既可以表示方程组的行形式也可以表示其列形式.


#eqnumL([列形式], $ bold(A) bold(x) = (-1) mat(2; 4; -2) + 2 mat(4; 9; -3) + 2 mat(-2; -3; 7) = mat(2; 8; 10) = bold(b). $, 2)

$bold(A) bold(x)$ 是 $bold(A)$ 中列向量的线性组合. 可使用矩阵乘法的行形式来计算 $bold(A) bold(x)$ 的分量, 此时 $bold(A) bold(x)$ 的分量是 $bold(A)$ 的行与 $bold(x)$ 的点积. 点积的求和公式可使用记号 “$sum$”.

上例中 $bold(A) bold(x)$ 的第一个分量是

#dmath[$ (-1) times 2 + 2 times 4 + 2 times (-2). $]

对一般的 $n$ 阶方阵 $bold(A)$, $bold(A) bold(x)$ 的第 $i$ 个分量是

#dmath[$ ("第 " i " 行") dot bold(x) = a_(i 1) x_1 + a_(i 2) x_2 + dots.c + a_(i n) x_n. $]

#dmath[$ "上式右端也可写成" sum_(j = 1)^n a_(i j) x_j. $]

$sum$ 是求和符号#footnote[爱因斯坦 (Einstein) 省略了 $sum$ 来得到求和公式更简短的形式: 用 $a_(i j) x_j$ 中重复的 $j$ 来表示关于 $j$ 求和, 他有时也将求和公式写成 $a_i^j x_j$. 本书作者并非爱因斯坦, 故求和时仍使用符号 $sum$.]. 上式表示 $j = 1, 2, dots.c, n$, 对 $a_(i 1) x_1, a_(i 2) x_2, dots.c, a_(i n) x_n$ 求和, 以计算出点积 (第 $i$ 行) $dot bold(x)$.

这里再复习一次矩阵的表示方法: 矩阵 $bold(A)$ 的第 1 行第 1 列 (左上角) 的元素记为 $a_(11)$, 第 1 行第 3 列的元素记为 $a_(13)$, 第 3 行第 1 列的元素记为 $a_(31)$. (行标在前, 列标在后.) 矩阵中的“元素”对应于向量中的“分量”. 一般规则是: $a_(i j) = A(i, j)$ 位于矩阵 $bold(A)$ 的第 $i$ 行第 $j$ 列. $m times n$ 矩阵 $bold(A)$ 记为 $[a_(i j)]$ 或 $[a_(i j)]_(m times n)$.

#hei[例 1]  设矩阵 $bold(A)$ 的元素 $a_(i j) = 2i + j$, 则有 $a_(11) = 3$, 同理 $a_(12) = 4$, $a_(21) = 5$. 下面分别用数字和字母来表示元素并逐行计算 $bold(A) bold(x)$:

#dmath[$ mat(3, 4; 5, 6) mat(2; 1) = mat(3 dot 2 + 4 dot 1; 5 dot 2 + 6 dot 1), $]

#dmath[$ mat(a_(11), a_(12); a_(21), a_(22)) mat(x_1; x_2) = mat(a_(11) x_1 + a_(12) x_2; a_(21) x_1 + a_(22) x_2). $]

#align(center)[#hei[一行左乘一列得到一个点积.]]



#pagebreak()
