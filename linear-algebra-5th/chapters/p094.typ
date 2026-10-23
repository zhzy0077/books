#import "../theme.typ": *

在式 $(bold(A) bold(B)) bold(C) = bold(A) (bold(B) bold(C))$ 中, 括号的位置不影响计算结果 (也就是 $bold(A) bold(B) bold(C)$), 线性代数中称之为矩阵乘法结合律.

设 $bold(A)$ 为 $m times n$ 矩阵, $bold(B)$ 为 $n times p$ 矩阵, 则乘积 $bold(A) bold(B)$ 是 $m times p$ 矩阵.

#align(center, dmath[$ (m times n)(n times p) = (m times p) quad mat(m "行"; n "列") mat(n "行"; p "列") = mat(m "行"; p "列") . $])

用一行左乘一列是一个极端的情形. $1 times n$ 矩阵左乘 $n times 1$ 矩阵的结果是 $1 times 1$ 矩阵, 这个单独的数字就是 “点积”.

在任何情况下, $bold(A) bold(B)$ 都是由点积构成的, $bold(A) bold(B)$ 左上角的 $(1, 1)$ 元素是

#align(center)[$(bold(A)$ 的第 1 行$) dot (bold(B)$ 的第 1 列$)$.]

这是矩阵乘法的第一种常用计算方法, 即计算 $bold(A)$ 的每一行与 $bold(B)$ 的每一列的点积:

#hei[1.] $bold(A) bold(B)$ 第 $i$ 行第 $j$ 列的元素是 $(bold(A)$ 的第 $i$ 行$) dot (bold(B)$ 的第 $j$ 列$)$.

以下选取了 $4 times 5$ 矩阵 $bold(A)$ 的第 2 行 ($i = 2$) 和 $5 times 6$ 矩阵 $bold(B)$ 的第 3 列 ($j = 3$), 它们的点积是 $bold(A) bold(B)$ 第 2 行第 3 列的元素. 矩阵 $bold(A) bold(B)$ 的行数与矩阵 $bold(A)$ 的相同 (4 行), 列数与矩阵 $bold(B)$ 的相同 (6 列), 即为 $4 times 6$ 矩阵.

#align(center, dmath[$ bold(A B) = mat(, , *, , ; a_(i 1), a_(i 2), dots.c, a_(i 5), ; , , *, , ; , , *, , ) mat(*, *, b_(1 j), *, *, *; , , b_(2 j), , , ; , , dots.v, , , ; , , , , , ; , , b_(5 j), , , ) = mat(, , *, , , ; *, *, (bold(A B))_(i j), *, *, *; , , *, , , ; , , *, , , ) . $])

对 $i = 2, j = 3$, $(bold(A B))(2, 3)$ 是

#align(center)[$("第 2 行") dot ("第 3 列") = sum_(k=1)^5 a_(2 k) b_(k 3) .$]

#hei[例 1] 两个方阵能够相乘当且仅当它们有相同的阶数, 如

#align(center, dmath[$ mat(1, 1; 2, -1) mat(2, 2; 3, 4) = mat(5, 6; 1, 0) . $])

第一个点积是 $1 dot 2 + 1 dot 3 = 5$, 类似可得其余三个点积是 $6, 1$ 和 $0$. 计算每个点积需要两个单独的乘法运算——共有八个.



#pagebreak()
