#import "../theme.typ": *

#figure(
  image("../assets/fig-p319-fig62.png", width: 82%),
  caption: [图 6.2　(a) 投影矩阵 $P$ 的特征值为 1 和 0; (b) 反射矩阵 $R$ 的特征值为 $lambda = 1$ 和 $-1$. 用矩阵左乘后, 通常的 $x$ 改变方向, 但特征向量保持方向不变.],
  numbering: none,
)

首先将 $lambda x$ 移到等号左边, 这样方程组 $A x = lambda x$ 就化为 $(A - lambda I) x = 0$, 即矩阵 $A - lambda I$ 左乘特征向量 $x$ 等于零向量. 这说明特征向量的全体为 $A - lambda I$ 的零空间. 如果求得一个特征值 $lambda$, 就可以通过解 $(A - lambda I) x = 0$ 得出一个特征向量.

先求特征值. 如果 $(A - lambda I) x = 0$ 有非零解, 那么 $A - lambda I$ 不可逆, $A - lambda I$ 的行列式必为零. 以下就是特征值 $lambda$ 的性质:

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #grid(columns: (auto, 1fr), column-gutter: 12pt,
    align(horizon)[#hei[特征值]],
    [数 $lambda$ 为矩阵 $A$ 的特征值当且仅当 $A - lambda I$ 是奇异矩阵.],
  )
  #grid(columns: (auto, 1fr, auto), column-gutter: 12pt,
    align(horizon)[#hei[特征值方程]],
    align(center)[$det(A - lambda I) = 0.$],
    align(bottom)[$(3)$],
  )
]

“特征多项式” $det(A - lambda I)$ 只涉及 $lambda$, 而与 $x$ 无关. 当 $A$ 是 $n times n$ 矩阵时, 方程 (3) 的次数为 $n$, 于是 $A$ 有 $n$ 个特征值 (可能有重根!). 每个 $lambda$ 可导出一个特征向量 $x$:

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #align(center)[对每个特征值 $lambda$ 解 $(A - lambda I) x = 0$ 或 $A x = lambda x$, 可求出特征向量 $x$.]
]

#hei[例 4]　已知 $A = mat(delim: "[", 1, 2; 2, 4)$ 是奇异矩阵 (行列式为零), 求出它的特征值 $lambda$ 与特征向量 $x$.

对奇异矩阵 $A$, $lambda = 0$ 是它的一个特征值. 此时方程 $A x = 0 x$ 有无穷多解, 它们是 $lambda = 0$ 对应的特征向量. 但是只有解 $det(A - lambda I) = 0$ 才能求出全部 $lambda$ 和 $x$. 首先计算 $A - lambda I$: $A$ 的对角元素减去 $lambda$ 就得到

#grid(columns: (1fr, auto), column-gutter: 12pt,
  $ A - lambda I = mat(delim: "[", 1 - lambda, 2; 2, 4 - lambda) . $,
  align(bottom)[$(4)$],
)

$2 times 2$ 矩阵 $mat(delim: "[", a, b; c, d)$ 的行列式为 “$a d - b c$”. 对矩阵 $A - lambda I$, 由 $1 - lambda$ 乘 $4 - lambda$, 得到 “$a d$” 部分为 $lambda^2 - 5 lambda + 4$. “$b c$” 部分不含 $lambda$, 它是 2 乘 2.

#grid(columns: (1fr, auto), column-gutter: 12pt,
  $ det mat(delim: "[", 1 - lambda, 2; 2, 4 - lambda) = (1 - lambda)(4 - lambda) - 2 dot 2 = lambda^2 - 5 lambda . $,
  align(bottom)[$(5)$],
)

再令行列式 $lambda^2 - 5 lambda$ 为零. 一个解为 $lambda = 0$ (正如预料, 因为 $A$ 是奇异的). 将 (5) 式因式分解为 $lambda$ 乘 $lambda - 5$, 则另一个根为 $lambda = 5$:

#pagebreak()