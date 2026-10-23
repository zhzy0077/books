#import "../theme.typ": *
#set par(spacing: 14pt, leading: 12.8pt)

#hei[到直线上的投影]

现有一条沿着 $bold(a) = (a_1, a_2, dots.c, a_m)$ 方向且过原点的直线, 求该直线上距离点 $bold(b) = (b_1, b_2, dots.c, b_m)$ 最近的点 $bold(p)$ (即 $bold(b)$ 的投影). 投影的关键是正交, 因为由 $bold(b)$ 到 $bold(p)$ 的直线垂直于向量 $bold(a)$, 该直线是图 4.6(a) 中表示误差 $bold(e) = bold(b) - bold(p)$ 的虚线. 下面利用代数方法求出 $bold(p)$.

投影 $bold(p)$ 是 $bold(a)$ 的倍数, 可表示为 $bold(p) = hat(x) bold(a)$, 即 “$x$ hat” 乘 $bold(a)$. 计算出数值 $hat(x)$ 就得到向量 $bold(p)$. 再由 $bold(p)$ 的计算公式, 可以得出投影矩阵 $bold(P)$. 按以下三步操作将求出所有的投影矩阵: 先找出 $hat(x)$ (到子空间上投影时一般为矩阵), 再得到向量 $bold(p)$, 继而求出矩阵 $bold(P)$.

虚线段 $bold(b) - bold(p)$ 是 “误差” $bold(e) = bold(b) - hat(x) bold(a)$, 它垂直于 $bold(a)$, 由此可确定 $hat(x)$. 这是基于结论: 当 $bold(b) - hat(x) bold(a)$ 与 $bold(a)$ 的点积为零时, 两者互相垂直.

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 16pt), width: 100%, above: 18pt, below: 18pt)[
  #grid(
    columns: (1fr, auto, auto),
    column-gutter: 1.5em,
    align: (left + horizon, center + horizon, right + horizon),
    [
      将 $bold(b)$ 投影到 $bold(a)$ 上的误差 $bold(e) = bold(b) - hat(x) bold(a)$, \
      #v(4pt)
      $bold(a) dot (bold(b) - hat(x) bold(a)) = 0$ 或 $bold(a) dot bold(b) - hat(x) bold(a) dot bold(a) = 0$,
    ],
    [
      $hat(x) = (bold(a) dot bold(b))/(bold(a) dot bold(a)) = (bold(a)^T bold(b))/(bold(a)^T bold(a)) .$
    ],
    [(2)],
  )
]

矩阵乘法 $bold(a)^T bold(b)$ 与内积 $bold(a) dot bold(b)$ 的结果是相同的. 使用含转置的前一种形式更好些, 因为它对矩阵也适用. 由公式 $hat(x) = (bold(a)^T bold(b))/(bold(a)^T bold(a))$ 得到投影 $bold(p) = hat(x) bold(a)$.

#figure(image("../assets/fig-p232-fig46.png", width: 90%), numbering: none, caption: [图 4.6　$bold(b)$ 到过 $bold(a)$ 的直线和 $bold(A)$ 的列空间 $S$ 上的投影 $bold(p)$.])

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 16pt), width: 100%, above: 18pt, below: 18pt)[
  $bold(b)$ 到过 $bold(a)$ 的直线上的投影为向量 $bold(p) = hat(x) bold(a) = (bold(a)^T bold(b))/(bold(a)^T bold(a)) bold(a)$. \
  #v(4pt)
  特例 1: 如果 $bold(b) = bold(a)$, 那么 $hat(x) = 1$. $bold(a)$ 在 $bold(a)$ 上的投影是其自身, 即 $bold(P a) = bold(a)$. \
  #v(4pt)
  特例 2: 如果 $bold(b)$ 垂直于 $bold(a)$, 那么 $bold(a)^T bold(b) = 0$. 从而投影 $bold(p) = 0$.
]

#hei[例 1]  在图 4.6 中, 将向量 $bold(b) = mat(1; 1; 1)$ 投影到 $bold(a) = mat(1; 2; 2)$ 上, 求出 $bold(p) = hat(x) bold(a)$.

#hei[解]  数值 $hat(x)$ 为 $bold(a)^T bold(b) = 5$ 与 $bold(a)^T bold(a) = 9$ 的比值, 因此投影是 $bold(p) = 5/9 bold(a)$.

因为 $bold(b)$ 与 $bold(p)$ 之间的误差向量为 $bold(e) = bold(b) - bold(p)$, 所以 $bold(p)$ 与 $bold(e)$ 相加得 $bold(b) = (1, 1, 1)$:

#align(center)[$ bold(p) = 5/9 bold(a) = (5/9, 10/9, 10/9), quad bold(e) = bold(b) - bold(p) = (4/9, -1/9, -1/9) . $]

#pagebreak()