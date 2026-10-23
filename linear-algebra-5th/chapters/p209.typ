#import "../theme.typ": *

#figure(image("../assets/fig-p209-fig36.png", width: 78%), numbering: none, caption: [图 3.6　$m times n$ 矩阵 $bold(R)$ 和 $bold(A)$ 的四个基本子空间的维数.])

#hei[(1)] #hei[$bold(A)$ 与 $bold(R)$ 有相同的行空间, 两个行空间有相同的维数 $r$ 以及相同的基.]

#hei[理由]  $bold(A)$ 的每一行均为 $bold(R)$ 各行的线性组合. $bold(R)$ 的每一行也均为 $bold(A)$ 各行的线性组合. 消元法改变了行, 但没有改变行空间.

由于 $bold(A)$ 与 $bold(R)$ 有相同的行空间, 所以可以选择 $bold(R)$ 的前 $r$ 行作为一组基, 或者选择原矩阵 $bold(A)$ 的 $r$ 个合适的行. 因为 $bold(A)$ 的前 $r$ 行可能线性相关, 所以基向量未必总是这前 $r$ 行. $bold(A)$ 中这适当的 $r$ 行最终化为 $bold(R)$ 中的主元行.

#hei[(2)] #hei[$bold(A)$ 的列空间的维数为 $r$, 列秩等于行秩.]

#hei[矩阵秩定理:] 线性无关列的列数 = 线性无关行的行数.

#hei[错误的理由]  “$bold(A)$ 与 $bold(R)$ 有相同的列空间.”

这是错误的. $bold(R)$ 各列一般以零分量结尾, $bold(A)$ 各列则不然. 因而 $C(bold(A))$ 不是 $C(bold(R))$.

#hei[正确的理由]  $bold(A)$ 各列与 $bold(R)$ 各列的相同 (系数) 的线性组合同样为零向量或不为零向量. 因此

#align(center)[
  $bold(A)$ 中列线性相关 $⇔$ $bold(R)$ 中列线性相关.
]

换言之: 当且仅当 $bold(R) bold(x) = 0$ 时, $bold(A) bold(x) = 0$. 两个矩阵的列空间不同, 但其维数相同——都等于 $r$.

#hei[结论]  $bold(A)$ 的 $r$ 个主元列构成它的列空间 $C(bold(A))$ 的一组基.

#hei[(3)] #hei[$bold(A)$ 与 $bold(R)$ 有相同的零空间, 两个零空间有相同的维数 $n - r$ 和相同的基.]

#hei[理由]  众所周知, 消元法不改变方程组的解, 特殊解是零空间的一组基. 因为有 $n - r$ 个自由变量, 所以零空间的维数为 $n - r$. 这就是计数定理: $r + (n - r) = n$.

#dingliC[
  (列空间的维数) + (零空间的维数) $= R^n$ 的维数.
]

#hei[(4)] #hei[$bold(A)$ 的左零空间 (即 $bold(A)^T$ 的零空间) 的维数为 $m - r$.]

#hei[理由]  $bold(A)^T$ 实质上如同矩阵 $bold(A)$. 一旦知道了 $bold(A)$ 的子空间维数, $bold(A)^T$ 的子空间维数也就知道了. $bold(A)^T$ 列空间维数已证为 $r$. 由于 $bold(A)^T$ 是 $n times m$ 的, 因此现在的 “全空间” 是 $R^m$. 对 $bold(A)$ 而言, 计数定理是 $r + (n - r) = n$. 对 $bold(A)^T$ 而言, 计数定理就是 $r + (m - r) = m$.

以上讨论归结为一个重要定理:



#pagebreak()
