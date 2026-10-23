#import "../theme.typ": *

#grid(columns: (auto, 1fr, auto), column-gutter: 12pt,
  align(horizon, hei[下一步]),
  $ bold(C) = bold(c) - (bold(A)^T bold(c))/(bold(A)^T bold(A)) bold(A) - (bold(B)^T bold(c))/(bold(B)^T bold(B)) bold(B) = bold(c) - 6/2 bold(A) + 6/6 bold(B) = mat(1;1;1) . $,
)

验证: $bold(C) = (1, 1, 1)$ 垂直于 $bold(A)$ 与 $bold(B)$. 最后将 $bold(A), bold(B), bold(C)$ 转变为单位向量 (长度为 1, 标准正交). $bold(A), bold(B), bold(C)$ 的长度为 $sqrt(2), sqrt(6), sqrt(3)$. 分别除以这些长度, 得到标准正交基:

#dmath[$ bold(q)_1 = 1/sqrt(2) mat(1;-1;0), quad bold(q)_2 = 1/sqrt(6) mat(1;1;-2), quad bold(q)_3 = 1/sqrt(3) mat(1;1;1) . $]

通常 $bold(A), bold(B), bold(C)$ 包含分数, 且 $bold(q)_1, bold(q)_2, bold(q)_3$ 几乎总是包含平方根.

#hei[分解式 $bold(A) = bold(Q) bold(R)$]

已知三阶方阵 $bold(A)$ 的各列为 $bold(a), bold(b), bold(c)$, 可由此求正交矩阵 $bold(Q)$, 其各列为 $bold(q)_1, bold(q)_2, bold(q)_3$. 这两个矩阵是如何关联的? 由格拉姆-施密特方法, $bold(a), bold(b), bold(c)$ 均为 $bold(q)_i$ 的线性组合 (反之亦然), 所以必然存在第三个矩阵来关联 $bold(A)$ 与 $bold(Q)$. 该矩阵为 $bold(A) = bold(Q) bold(R)$ 中的三角形矩阵 $bold(R)$.

格拉姆-施密特方法的第一步为 $bold(q)_1 = bold(a)/||bold(a)||$ (并不涉及其他向量). 第二步为 (7) 式, 其中 $bold(b)$ 是 $bold(A)$ 与 $bold(B)$ 的线性组合, 且这一步不涉及 $bold(C)$ 与 $bold(q)_3$. “每一步不涉及后续向量”这一点是格拉姆-施密特方法的关键:

#list(
  [向量 $bold(a)$ 和 $bold(A)$ 以及 $bold(q)_1$ 均在同一条直线上;],
  [向量 $bold(a), bold(b)$ 和 $bold(A), bold(B)$ 以及 $bold(q)_1, bold(q)_2$ 均在同一个平面上;],
  [向量 $bold(a), bold(b), bold(c)$ 和 $bold(A), bold(B), bold(C)$ 以及 $bold(q)_1, bold(q)_2, bold(q)_3$ 均在同 (一个三维) 子空间中.],
)

在每一步中, $bold(a)_1, bold(a)_2, dots.c, bold(a)_k$ 总是 $bold(q)_1, bold(q)_2, dots.c, bold(q)_k$ 的线性组合, 并不涉及后续的 $bold(q)_i$. 关联矩阵 $bold(R)$ 是三角形矩阵, 且 $bold(A) = bold(Q) bold(R)$:

#dingliC[
  #grid(columns: (1fr, auto), column-gutter: 12pt,
    align(center)[$ mat(bold(a), bold(b), bold(c)) = mat(bold(q)_1, bold(q)_2, bold(q)_3) mat(bold(q)_1^T bold(a), bold(q)_1^T bold(b), bold(q)_1^T bold(c); , bold(q)_2^T bold(b), bold(q)_2^T bold(c); , , bold(q)_3^T bold(c)) quad "或" quad bold(A) = bold(Q) bold(R). $],
    align(bottom)[$(9)$],
  )
]

$bold(A) = bold(Q) bold(R)$ 是紧凑版的格拉姆-施密特方法. 用 $bold(Q)^T$ 左乘该式就得到 $bold(R) = bold(Q)^T bold(A)$.

#dingli[#hei[格拉姆-施密特方法]　由线性无关向量组 $bold(a)_1, bold(a)_2, dots.c, bold(a)_n$ 构造出标准正交向量组 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$. 由上述列向量组构成的矩阵满足 $bold(A) = bold(Q) bold(R)$. 由于后续的 $bold(q)_j$ 与前面的 $bold(a)_i$ 正交 ($i < j$), 所以 $bold(R) = bold(Q)^T bold(A)$ 是上三角形矩阵.]

以下为上例中的初始向量 $bold(a)_i$ 和最终向量 $bold(q)_j$, $bold(R) = bold(Q)^T bold(A)$ 的 $(i, j)$ 元素为 $bold(Q)^T$ 的第 $i$ 行左乘 $bold(A)$ 的第 $j$ 列, 即点积 $bold(q)_i^T bold(a)_j$, 且 $bold(A) = bold(Q) bold(R)$:



#pagebreak()