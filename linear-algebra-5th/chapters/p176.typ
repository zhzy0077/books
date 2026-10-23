#import "../theme.typ": *

#grid(columns: (auto, 1fr),
  align(top, text(size: 30pt)[\[]),
  align(center, text(size: 15pt)[3.3  $bold(A) bold(x) = bold(b)$ 的全解]),
)

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #hei[1.] $bold(A) bold(x) = bold(b)$ 的全解 $bold(x) = ($特解 $bold(x)_p) + ($零空间中任意元素 $bold(x)_n)$.

  #hei[2.] 利用消元法将 $[bold(A) quad bold(b)]$ 化简为 $[bold(R) quad bold(d)]$, 那么 $bold(A) bold(x) = bold(b)$ 与 $bold(R) bold(x) = bold(d)$ 等价 (即同解).

  #hei[3.] 只有当 $bold(R)$ 的全零行对应 $bold(d)$ 中的零元素时, $bold(A) bold(x) = bold(b)$ 与 $bold(R) bold(x) = bold(d)$ 才是可解的.

  #hei[4.] 当 $bold(R) bold(x) = bold(d)$ 可解时, 令所有自由变量取值为零, 得到一个特解 $bold(x)_p$.

  #hei[5.] 当矩阵 $bold(A)$ 的零空间 $N(bold(A))$ 只含零向量, 即 $bold(A)$ 没有自由列时, $bold(A)$ 是列满秩的, 即 $r = n$.

  #hei[6.] 当 $bold(A)$ 的列空间 $bold(C) (bold(A))$ 为 $R^m$, 即对于任意的 $bold(b) in R^m$, $bold(A) bold(x) = bold(b)$ 总可解时, $bold(A)$ 是行满秩的, 即 $r = m$.

  #hei[7.] 方程组 $bold(A) bold(x) = bold(b)$ 解的情形有以下四种: 当 $r = m = n$ 时, $bold(A)$ 可逆且 $bold(A) bold(x) = bold(b)$ 有唯一解; 当 $r = m < n$ 时, $bold(A) bold(x) = bold(b)$ 有无穷多解; 当 $r = n < m$ 时, $bold(A) bold(x) = bold(b)$ 有唯一解或无解; 当 $r < m, r < n$ 时, $bold(A) bold(x) = bold(b)$ 无解或有无穷多解.
]

上一节中求解 $bold(A) bold(x) = 0$ 的问题被彻底解决了, 即先利用消元法将原方程组化为 $bold(R) bold(x) = 0$, 再对自由变量赋予特殊值 (1 和 0), 接着回代就可以得到主元变量. 期间不必理会右边的 $bold(b)$, 因为它始终为零向量. 最后的解 $bold(x)$ 属于 $bold(A)$ 的零空间.

本节中, $bold(b)$ 不再是零向量. 作用于左边的行变换也一定会作用于右边. $bold(A) bold(x) = bold(b)$ 化简为 $bold(R) bold(x) = bold(d)$, 两者是同解的. 实现该化简过程的一种方式是为矩阵 $bold(A)$ 多加一列 $bold(b)$. 如下所示, 在 $bold(A)$ 的右边 "增补" $(b_1, b_2, b_3) = (1, 6, 7)$, 得到增广矩阵 $[bold(A) quad bold(b)]$:

#dmath[$ mat(delim: "[", 1,3,0,2; 0,0,1,4; 1,3,1,6) mat(delim: "[", x_1; x_2; x_3; x_4) = mat(delim: "[", 1; 6; 7) quad "对应增广矩阵" quad mat(delim: "[", 1,3,0,2,1; 0,0,1,4,6; 1,3,1,6,7) = [bold(A) quad bold(b)] . $]

利用通常的消元法, 将 $bold(A)$ 化为 $bold(R)$ 的同时, 也对 $bold(b)$ 施行了相应的操作.

在这里, 先从第 3 行中减去第 1 行, 再减去第 2 行, 这样得到的 $bold(R)$ 中出现了全零行, 而右边的 $bold(b)$ 也变成了 $bold(d) = (1, 6, 0)$:

#dmath[$ mat(delim: "[", 1,3,0,2; 0,0,1,4; 0,0,0,0) mat(delim: "[", x_1; x_2; x_3; x_4) = mat(delim: "[", 1; 6; 0) quad "对应增广矩阵" quad mat(delim: "[", 1,3,0,2,1; 0,0,1,4,6; 0,0,0,0,0) = [bold(R) quad bold(d)] . $]

上述末行的最后一个零至关重要. 此时第三个方程化成 $0 = 0$, 因此方程组是可解的. 在原矩阵 $bold(A)$ 中, 第 1 行加上第 2 行等于第 3 行. 当方程相容#footnote[译者注: 方程相容是指没有互相矛盾的方程.]时, 这种行之间的组合关系也一定适用于方程组右边向量的各分量. 右边向量 $bold(b)$ 最重要的性质就是分量满足 $1 + 6 = 7$, 由它推出了 $0 = 0$.



#pagebreak()
