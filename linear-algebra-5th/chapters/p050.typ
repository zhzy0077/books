#import "../theme.typ": *

这里引入了 0，则由矩阵 $C$ 可得“中心差分”，$C x$ 中第 $i$ 行分量是 $x_(i+1)$（中心右侧）减去 $x_(i-1)$（中心左侧）．如下是一个 $4 times 4$ 的例子：

#eqnumL([中心差分], $ 
  C bold(x) = mat(0, 1, 0, 0; -1, 0, 1, 0; 0, -1, 0, 1; 0, 0, -1, 0)
  mat(x_1; x_2; x_3; x_4)
  = mat(x_2 - 0; x_3 - x_1; x_4 - x_2; 0 - x_3)
  = mat(b_1; b_2; b_3; b_4) = bold(b)
$, 16)

令人惊讶的是, 现在这个矩阵 $C$ 可逆! 由第一行和最后一行可解出 $x_2$ 与 $x_3$, 然后利用中间两行可解出 $x_1$ 与 $x_4$, 据此可写出逆矩阵 $C^(-1)$. 但 $5 times 5$ 的情况下矩阵 $C$ 又变为奇异矩阵 (不可逆)……

#align(center)[#image("../assets/fig-p050-icon.png", width: 3.2%)]

#xiti[习题集 1.3]

#ti[1.][设矩阵 $bold(S)$ 的列向量分别为]

#dmath[$
  bold(s)_1 = mat(1; 1; 1), quad bold(s)_2 = mat(0; 1; 1), quad bold(s)_3 = mat(0; 0; 1) .
$]

首先计算线性组合 $3bold(s)_1 + 4bold(s)_2 + 5bold(s)_3 = bold(b)$, 然后将 $bold(b)$ 写成形如 $bold(S) bold(x)$ 的矩阵-向量乘法形式, 其中系数 3, 4, 5 是 $bold(x)$ 的分量, 最后计算三个点积: $(bold(S) "的行") dot bold(x)$.

#ti[2.][求解如下所示的两个线性方程组 $bold(S) bold(y) = bold(b)$, 其中矩阵 $bold(S)$ 同习题 1:]

#dmath[$
  mat(1, 0, 0; 1, 1, 0; 1, 1, 1) mat(y_1; y_2; y_3) = mat(1; 1; 1) ; quad
  mat(1, 0, 0; 1, 1, 0; 1, 1, 1) mat(y_1; y_2; y_3) = mat(1; 4; 9) .
$]

$bold(S)$ 是一个累加矩阵. 利用上述解可知前 5 个正奇数 1, 3, 5, 7, 9 累加之和为 #underline(h(2.5em)).

#ti[3.][利用 $c_1, c_2, c_3$ 来求解关于 $y_1, y_2, y_3$ 的方程组]

#dmath[$
  bold(S) bold(y) = bold(c) quad mat(1, 0, 0; 1, 1, 0; 1, 1, 1) mat(y_1; y_2; y_3) = mat(c_1; c_2; c_3) .
$]

将所求结果 $bold(y)$ 写成矩阵 $bold(A) = bold(S)^(-1) bold(c)$ 的形式, 并判断 $bold(S)$ 的列向量组是线性无关还是线性相关.

#ti[4.][已知 $x_1 = 1$, 求一个结果是零向量的线性组合 $x_1 bold(w)_1 + x_2 bold(w)_2 + x_3 bold(w)_3$, 其中]

#dmath[$
  bold(w)_1 = mat(1; 2; 3), quad bold(w)_2 = mat(4; 5; 6), quad bold(w)_3 = mat(7; 8; 9) .
$]



#pagebreak()
