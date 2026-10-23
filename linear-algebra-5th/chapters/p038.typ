#import "../theme.typ": *

解  两个已知向量的点积为

#dmath[$ bold(v) dot bold(w) = 3 dot 4 + 4 dot 3 = 24, $]

向量的长度分别为

#dmath[$ norm(bold(v)) = sqrt(9 + 16) = 5, quad norm(bold(w)) = sqrt(9 + 16) = 5. $]

向量之和 $bold(v) + bold(w) = (7,7)$ 的长度 $7 sqrt(2) < 10$. 因此

#grid(columns: (auto, 1fr), column-gutter: 16pt, row-gutter: 4pt,
  [#hei[施瓦茨不等式]], [$ |bold(v) dot bold(w)| <= norm(bold(v)) norm(bold(w)) quad "即" quad 24 < 25; $],
  [#hei[三角不等式]], [$ norm(bold(v) + bold(w)) <= norm(bold(v)) + norm(bold(w)) quad "即" quad 7 sqrt(2) < 5 + 5; $],
  [#hei[夹角余弦]], [$cos theta = 24/25$, $theta$ 为向量 $bold(v)=(3,4)$ 与 $bold(w)=(4,3)$ 的夹角.],
)

等式成立的前提为一个向量是另一个向量的倍数, 即 $bold(w) = c bold(v)$, 则向量夹角为 0° 或 180°, 此时 $|cos theta| = 1$ 且 $|bold(v) dot bold(w)|$ 等于 $norm(bold(v)) norm(bold(w))$. 设夹角为 0°, 且 $bold(w) = 2 bold(v)$, 则 $norm(bold(v) + bold(w)) = norm(bold(v)) + norm(bold(w))$ (等号两边都是 $3 norm(bold(v))$). 这是一个退化的三角形, 即三条边 $bold(v), 2 bold(v), 3 bold(v)$ 在一条直线上!

#hei[1.2 B]  已知 $bold(v) = (3,4)$, 请求出与 $bold(v)$ 同向的单位向量 $bold(u)$ 以及与 $bold(u)$ 垂直的单位向量 $bold(U)$, $bold(U)$ 有多少种可能的取法?

解  将 $bold(v)$ 除以自身的长度 $norm(bold(v)) = 5$ 就得到同向的单位向量, 即有

#dmath[$ bold(u) = bold(v)/norm(bold(v)) = (3/5, 4/5). $]

令 $bold(V) = (-4,3)$, 点积 $bold(v) dot bold(V) = 3 dot (-4) + 4 dot 3 = 0$, 故 $bold(V)$ 与 $bold(v)$ 垂直. $bold(V)$ 除以自身的长度 $norm(bold(V))$ 就得到一个与 $bold(u)$ 垂直的单位向量, 即有

#dmath[$ bold(U) = bold(V)/norm(bold(V)) = (-4/5, 3/5), quad bold(u) dot bold(U) = 0. $]

同理, 还有一个与 $bold(u)$ 垂直的向量为 $-bold(U) = (4/5, -3/5)$.

#hei[1.2 C]  求一个向量 $bold(x) = (c,d)$ 使点积 $bold(x) dot bold(r) = 1$ 与 $bold(x) dot bold(s) = 0$ 同时成立, 其中向量 $bold(r) = (2,-1), bold(s) = (-1,2)$.

解  可利用两个点积建立以分量 $c$ 与 $d$ 为未知数的线性方程组来求解 $bold(x) = (c,d)$:

#dmath[
  $ cases(bold(x) dot bold(r) = 1, bold(x) dot bold(s) = 0,) quad "即" quad cases(2c - d = 1, -c + 2d = 0.) quad ("见例 1.1 C") $
]

#hei[注]  考虑 $n$ 维空间中向量 $bold(x) = (x_1, x_2, dots.c, x_n)$, 第 1.1 节是从列向量 $bold(v)_j$ 出发来建立线性方程组 $x_1 bold(v)_1 + x_2 bold(v)_2 + dots.c + x_n bold(v)_n = bold(b)$, 本节则是从行向量 $bold(r)_i$ 出发来求解使 $bold(x) dot bold(r)_i = b_i$ 成立的 $bold(x)$. 在后续学习中将看到上述 $bold(v)_j$ 对应一个“矩阵” $A$ 的列, $bold(r)_i$ 对应“矩阵” $A$ 的行, 本书的主要任务之一则是研究如何求解 $A bold(x) = bold(b)$.



#pagebreak()
