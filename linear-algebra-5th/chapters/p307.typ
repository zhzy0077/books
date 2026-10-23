#import "../theme.typ": *

#hei[性质 1]　与表示 $bold(u) times bold(v)$ 的行列式相比, 表示 $bold(v) times bold(u)$ 的行列式互换了第 2 行和第 3 行, 所以 $bold(v) times bold(u) = -(bold(u) times bold(v))$.

#hei[性质 2]　叉积 $bold(u) times bold(v)$ 垂直于向量 $bold(u)$ 和 $bold(v)$. 可通过项之间的消除, 计算出点积等于零来直接证明:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ bold(u) dot (bold(u) times bold(v)) = u_1 (u_2 v_3 - u_3 v_2) + u_2 (u_3 v_1 - u_1 v_3) + u_3 (u_1 v_2 - u_2 v_1) = 0 . $],
  align(bottom)[$(11)$],
)

另一种证明方法是, 将上述 $bold(u) dot (bold(u) times bold(v))$ 写成行列式, 其三行分别是 $bold(u), bold(u)$ 和 $bold(v)$ (有 2 行相等), 因此行列式等于零.

#hei[性质 3]　任意向量 $bold(u)$ 与自身 (即行列式中有两个相等的行向量) 的叉积是 $bold(u) times bold(u) = bold(0)$.

当 $bold(u)$ 与 $bold(v)$ 平行时, 叉积是零向量; 当 $bold(u)$ 与 $bold(v)$ 垂直时, 点积是零. 这两个运算, 一个涉及 $sin theta$ 而另一个涉及 $cos theta$ ($theta$ 为 $bold(u)$ 与 $bold(v)$ 的夹角):

#block(stroke: 0.6pt, inset: (x: 4pt, y: 7pt), width: 100%, above: 14pt)[
  #grid(columns: (1fr, auto), column-gutter: 12pt,
    align(center)[$ ||bold(u) times bold(v)|| = ||bold(u)|| ||bold(v)|| |sin theta|, quad |bold(u) dot bold(v)| = ||bold(u)|| ||bold(v)|| |cos theta| . $],
    align(bottom)[$(12)$],
  )
]

#hei[例 7]　已知 $bold(u) = (3, 2, 0)$ 和 $bold(v) = (1, 4, 0)$ 在 $x y$ 平面内, 则 $bold(u) times bold(v)$ 位于 $z$ 轴上:

#align(center)[$ bold(u) times bold(v) = mat(delim: "|", bold(i), bold(j), bold(k); 3, 2, 0; 1, 4, 0) = 10 bold(k), quad "叉积是" bold(u) times bold(v) = (0, 0, 10) . $]

$bold(u) times bold(v)$ 长度的数值等于以 $bold(u)$ 和 $bold(v)$ 为邻边的平行四边形的面积. 这是一个重要结论. 本例中的面积是 10.

#hei[例 8]　$bold(u) = (1, 1, 1)$ 和 $bold(v) = (1, 1, 2)$ 的叉积是 $(1, -1, 0)$:

#align(center)[$ mat(delim: "|", bold(i), bold(j), bold(k); 1, 1, 1; 1, 1, 2) = bold(i) mat(delim: "|", 1, 1; 1, 2) - bold(j) mat(delim: "|", 1, 1; 1, 2) + bold(k) mat(delim: "|", 1, 1; 1, 1) = bold(i) - bold(j) . $]

与预期一样, 向量 $(1, -1, 0)$ 垂直于 $(1, 1, 1)$ 和 $(1, 1, 2)$. 以 $bold(u)$ 和 $bold(v)$ 为邻边的平行四边形的面积等于 $sqrt(2)$.

#hei[例 9]　$bold(i) = (1, 0, 0)$ 与 $bold(j) = (0, 1, 0)$ 的叉积遵循右手定则: 当右手四指弯曲且由 $bold(i)$ 指向 $bold(j)$ 时, 大拇指指向叉积 $bold(k) = bold(i) times bold(j)$, 即图 5.6 中 $bold(k)$ 方向向上而不是向下.

#align(center)[$ mat(delim: "|", bold(i), bold(j), bold(k); 1, 0, 0; 0, 1, 0) = bold(k) $]

#align(center)[#figure(image("../assets/fig-p307-1.png", width: 28%), numbering: none, caption: [图 5.6])]

因此 $bold(i) times bold(j) = bold(k)$. 利用右手定则也会得到 $bold(j) times bold(k) = bold(i)$ 和 $bold(k) times bold(i) = bold(j)$. 注意计算中向量循环的顺序. 按相反顺序 (反向循环) 计算叉积时拇指反向, 叉积指向相反方向:

#align(center)[$ bold(k) times bold(j) = -bold(i), quad bold(i) times bold(k) = -bold(j), quad bold(j) times bold(i) = -bold(k) . $]





#pagebreak()
