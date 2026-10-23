#import "../theme.typ": *

$S = V$ 中向量集 (可能不构成子空间),
$S S = S$ 中向量的全部线性组合 (肯定是子空间).

#dingliC[
  $S S =$ 所有 $c_1 bold(v)_1 + c_2 bold(v)_2 + dots.c + c_N bold(v)_N$ \
  $=$ 空间的 $V$, 是由 $S$ “生成 (或张成)” 的子空间.
]

当 $S$ 为 $bold(A)$ 的列向量集合时, $S S$ 为列空间 $bold(C) (bold(A))$. 当 $S$ 中仅有一个非零元素 $bold(v)$ 时, 子空间 $S S$ 为过 $bold(v)$ 的 “直线”. $S S$ 总是包含 $S$ 的最小子空间. 这是生成子空间的一个基本方法, 后文将继续讨论这种方法.

再次强调: 列向量 “生成” 列空间.

#align(center)[子空间 $S S$ 由 $S$ “生成”, 它囊括了 $S$ 中向量的全部线性组合.]

#hei[例 5]　描述如下矩阵的列空间 (它们均为 $R^2$ 的子空间):

#dmath[$bold(I) = mat(delim: "[", 1, 0; 0, 1), quad bold(A) = mat(delim: "[", 1, 2; 2, 4), quad bold(B) = mat(delim: "[", 1, 2, 3; 0, 0, 4).$]

#hei[解]　$bold(I)$ 的列空间是全空间 $R^2$, 其中每个向量为 $bold(I)$ 各列的一个线性组合. 用向量空间的语言描述, $bold(C) (bold(I))$ 为 $R^2$.

$bold(A)$ 的列空间仅为一条直线, 因为第 2 列 $(2,4)$ 是第 1 列 $(1,2)$ 的倍数. 这两个向量确实不同, 但向量空间才是关注的焦点. 列空间 $bold(C) (bold(A))$ 包括 $(1,2)$ 和 $(2,4)$ 以及其他所有沿着这条直线的向量 $(c, 2c)$. 只有当 $bold(b)$ 落在该直线上时, 方程组 $bold(A) bold(x) = bold(b)$ 才是可解的.

对于矩阵 $bold(B)$ (它有三列), 列空间 $bold(C) (bold(B))$ 是全空间 $R^2$. 每个 $bold(b) in R^2$ 均可被 $bold(B) bold(x)$ 取到. 例如, 向量 $bold(b) = (5,4)$ 是第 2 列加上第 3 列, 故 $bold(x)$ 可取 $(0,1,1)$. 同一向量 $(5,4)$ 又是第 1 列的两倍加上第 3 列, 故另一个可能的 $bold(x)$ 为 $(2,0,1)$. 该矩阵与 $bold(I)$ 有相同的列空间——任何 $bold(b)$ 均可保证 $bold(B) bold(x) = bold(b)$ 有解. 但现在 $bold(x)$ 多了一个分量, 因此有更多的解——有更多列向量的线性组合能表示 $bold(b)$.

为了描述 $bold(A) bold(x) = bold(0)$ 的全部解, 下一节将引入向量空间 $bold(N) (bold(A))$. 为了描述 $bold(A) bold(x)$ 所有能取到的 $bold(b)$, 本节引入的是列空间 $bold(C) (bold(A))$.

#barHead[■ 要点回顾]

#enum(numbering: "1.", tight: false,
  [$R^n$ 是具有 $n$ 个实分量的列向量的全体.],
  [$bold(M)$ (全体 $2 times 2$ 矩阵) 与 $bold(F)$ (全体实函数) 以及 $bold(Z)$ (只含零向量) 均为向量空间.],
  [包含 $bold(v)$ 和 $bold(w)$ 的子空间必然包含其全部线性组合 $c bold(v) + d bold(w)$.],
  [$bold(A)$ 各列向量的线性组合生成列空间 $bold(C) (bold(A))$, 即列空间是由各列向量 “生成” 的.],
  [当 $bold(b)$ 恰在 $bold(A)$ 的列空间内时, $bold(A) bold(x) = bold(b)$ 有解. \ 当 $bold(b)$ 恰在 $bold(A)$ 的列空间内时, $bold(A) bold(x) = bold(b)$ 有解. $bold(C) (bold(A)) =$ 列向量的全部线性组合 $=$ 所有向量 $bold(A) bold(x)$.],
)



#pagebreak()
