#import "../theme.typ": *

若 $bold(A)$ 和 $bold(B)$ 都是 $n$ 阶方阵, 则 $bold(A) bold(B)$ 也是 $n$ 阶方阵, 其中包含 $n^2$ 个点积, 为 $bold(A)$ 的各行左乘 $bold(B)$ 的各列. 每个点积需要 $n$ 个单独的乘法运算, 因此计算 $bold(A) bold(B)$ 需要 $n^3$ 个单独的乘法运算. 例如, $n = 100$ 时需要一百万次乘法, $n = 2$ 时需要八次乘法.

直到最近, 数学家都认为计算二阶方阵 $bold(A)$ 和 $bold(B)$ 的乘积 $bold(A) bold(B)$ 通常需要 $2^3 = 8$ 次乘法. 也有人找到了只做 7 次乘法 (和额外的加法) 的算法. 对于大型的 $n times n$ 矩阵, 也可将其分割为每个子块是 $2 times 2$ 矩阵的分块矩阵, 这个方法可减少大型矩阵乘法的运算次数. 当前可将乘法次数由 $n^3$ 减少到 $n^(2.376)$, 能否进一步减少到 $n^2$ 呢? 可惜这些算法在编程时并不实用, 因此当前科学计算仍然采用常规的计算 $n^3$ 次的方法.

#hei[例 2] 设 $bold(A)$ 是一个行向量 ($1 times 3$ 矩阵), $bold(B)$ 是一个列向量 ($3 times 1$ 矩阵), 则 $bold(A) bold(B)$ 是一个 $1 times 1$ 矩阵 (只有一个元素, 为点积). 另一方面, $bold(B) bold(A)$ (用一个列向量左乘一个行向量) 是一个 3 阶方阵, 这个乘法运算也是有效的!

#eqL[用列左乘行][$ (n times 1)(1 times n) = (n times n) quad mat(delim: "[", 0; 1; 2) [1 quad 2 quad 3] = mat(delim: "[", 0, 0, 0; 1, 2, 3; 2, 4, 6) . $]

用一行左乘一列称为 “内积”——这是点积的另一个名称; 用一列左乘一行称为 “外积”. 这些是矩阵乘法的极端情况.

#subsec[第二种与第三种方法: 左乘各列和各行左乘]

整体来看, 用 $bold(A)$ 左乘 $bold(B)$ 的每一列就得到了 $bold(A) bold(B)$ 对应位置的列, 因此 $bold(A) bold(B)$ 的每一列都是 $bold(A)$ 的列向量的线性组合. 这就是矩阵乘法的列图:

#hei[2.] $bold(A)$ 左乘 $bold(B)$ 的每一列, 如

#dmath[$ bold(A) [b_1 quad b_2 quad dots.c quad b_p] = [bold(A) b_1 quad bold(A) b_2 quad dots.c quad bold(A) b_p] . $]

矩阵乘法的行图恰好相反, 是 $bold(A)$ 的每一行左乘整个矩阵 $bold(B)$, 得到 $bold(A) bold(B)$ 对应位置的行, 即 $bold(A) bold(B)$ 的每一行是 $bold(B)$ 的行向量的线性组合:

#hei[3.] $bold(A)$ 的每一行左乘 $bold(B)$, 如

#dmath[$ [bold(A) "的第" i "行"] mat(delim: "[", 1, 2, 3; 4, 5, 6; 7, 8, 9) = [bold(A B) "的第" i "行"] . $]

在消元法中已见过 “各行左乘”($bold(E)$ 左乘 $bold(A)$), 很快就会在研究 $bold(A) bold(A)^(-1) = bold(I)$ 时遇到 “左乘各列”. “行-列图” 本质上仍为计算行与列的点积, 而计算点积是手工计算矩阵乘法的常用方法, 其中含 $m n p$ 次单独的乘法运算, $m (n-1) p$ 次单独的加法运算.

#eqnum([
  计算 $bold(A) bold(B)$ 可简记为 $(m times n)(n times p) = (m times p)$, \
  含 $m p$ 个点积, 每个点积有 $n$ 个运算步骤.
], 2)



#pagebreak()
