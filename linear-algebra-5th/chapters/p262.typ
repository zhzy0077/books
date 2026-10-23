#import "../theme.typ": *

在图 4.14 中, $bold(A)$ 与 $bold(B)$ 是正交的. 用 $bold(A)^T$ 左乘 (7) 式可验证

#dmath[$ bold(A)^T bold(B) = bold(A)^T bold(b) - bold(A)^T bold(b) = 0. $]

从最小二乘法的角度来看, 向量 $bold(B)$ 就是垂直于 $bold(A)$ 的误差向量 $bold(e)$. 注意, (7) 式中的 $bold(B)$ 非零 (如若不然, $bold(a)$ 和 $bold(b)$ 将是线性相关的). 至此已确定向量 $bold(A)$ 与 $bold(B)$.

第三个向量源自 $bold(c)$. 它并非 $bold(A)$ 与 $bold(B)$ 的线性组合 (因为 $bold(c)$ 不是 $bold(a)$ 与 $bold(b)$ 的线性组合). 通常 $bold(c)$ 并不垂直于 $bold(A)$ 和 $bold(B)$, 因此需要减去其在这两个方向上的分量, 从而得到一个垂直方向上的 $bold(C)$:

#grid(columns: (auto, 1fr, auto), column-gutter: 12pt,
  align(horizon, hei[格拉姆-施密特方法下一步]),
  $ bold(C) = bold(c) - (bold(A)^T bold(c))/(bold(A)^T bold(A)) bold(A) - (bold(B)^T bold(c))/(bold(B)^T bold(B)) bold(B). $,
  align(bottom)[$(8)$],
)

#figure(
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 18pt,
    align: bottom,
    [
      #align(center, image("../assets/fig-p262-a.png", width: 92%))
      #align(center)[(a) $bold(b)$ 在 $bold(a)$ 上投影]
    ],
    [
      #align(center, image("../assets/fig-p262-b.png", width: 78%))
      #align(center)[(b) $bold(C)$ 在 $bold(A B)$ 平面上投影]
    ],
    [
      #align(center, image("../assets/fig-p262-c.png", width: 82%))
      #align(center)[(c) 化为单位向量]
    ],
  ),
  caption: [图 4.14  先将 $bold(b)$ 投影到过 $bold(a)$ 的直线上, 再由 $bold(b) - bold(p)$ 得与 $bold(a)$ 正交的 $bold(B)$. 然后将 $bold(c)$ 投影到 $bold(A B)$ 平面上, 由 $bold(c) - bold(p)$ 得 $bold(C)$. 最后分别除以长度 $||bold(A)||, ||bold(B)||, ||bold(C)||$.],
  numbering: none,
)

这就是格拉姆-施密特方法的唯一思想, 即每个新向量减去其在已定方向上的投影. 该方法的每一步都在反复贯彻这一思想.#footnote[作者知道格拉姆提出了这一方法, 但并不清楚施密特的贡献.] 例如, 如果还有第四个向量 $bold(d)$, 则减去其在 $bold(A), bold(B), bold(C)$ 上的投影, 即得 $bold(D)$. 最后, 两两正交的向量 $bold(A), bold(B), bold(C), bold(D)$ 分别除以各自长度, 或者每得到一个正交向量就马上除以其长度, 最终结果 $bold(q)_1, bold(q)_2, bold(q)_3, bold(q)_4$ 就是标准正交的.

#hei[格拉姆-施密特方法的例子]　已知向量

#dmath[$ bold(a) = mat(1;-1;0), quad bold(b) = mat(2;0;-2), quad bold(c) = mat(3;-3;3) $]

线性无关且不正交, 于是由 $bold(A) = bold(a)$ 推出 $bold(A)^T bold(A) = 2$ 以及 $bold(A)^T bold(b) = 2$. $bold(b)$ 减去其沿 $bold(A)$ 方向的投影 $bold(p)$:

#grid(columns: (auto, 1fr, auto), column-gutter: 12pt,
  align(horizon, hei[第一步]),
  $ bold(B) = bold(b) - (bold(A)^T bold(b))/(bold(A)^T bold(A)) bold(A) = bold(b) - 2/2 bold(A) = mat(1;1;-2) . $,
)

验证: $bold(A)^T bold(B) = 0$, 如前所料. 接下来将 $bold(c)$ 减去它在 $bold(A)$ 和 $bold(B)$ 上的投影, 得到 $bold(C)$:

#pagebreak()