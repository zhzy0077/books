#import "../theme.typ": *

#block(stroke: 0.6pt, radius: 4pt, inset: 6pt, width: 100%)[
  #hei[1.] 向量 $bold(v) = mat(delim: "[", 1;2)$ 与 $bold(w) = mat(delim: "[", 4;5)$ 的“点积”为

  #align(center)[$ bold(v) dot bold(w) = 1 dot 4 + 2 dot 5 = 4 + 10 = 14. $]

  #hei[2.] 向量 $bold(v) = mat(delim: "[", 1;3;2)$ 与 $bold(w) = mat(delim: "[", 4;-4;4)$ 垂直, 因为 $bold(v) dot bold(w)$ 等于零:

  #align(center)[$ bold(v) dot bold(w) = 1 dot 4 + 3 dot (-4) + 2 dot 4 = 0. $]

  #hei[3.] 向量 $bold(v) = mat(delim: "[", 1;3;2)$ 长度的平方为 $bold(v) dot bold(v) = 1 + 9 + 4 = 14$, 长度 $norm(bold(v)) = sqrt(14)$.

  #hei[4.] 同上, 向量 $bold(u) = bold(v)/norm(bold(v)) = 1/sqrt(14) mat(delim: "[", 1;3;2)$ 的长度 $norm(bold(u)) = 1$. 验算得 $1/14 + 9/14 + 4/14 = 1$.

  #hei[5.] 向量 $bold(v)$ 与 $bold(w)$ 的夹角 $theta$ 的余弦为 $cos theta = (bold(v) dot bold(w))/(norm(bold(v)) norm(bold(w)))$.

  #hei[6.] 向量 $mat(delim: "[", 1;0)$ 与 $mat(delim: "[", 1;1)$ 的夹角 $theta$ 的余弦为 $cos theta = 1/(1 dot sqrt(2))$, 因此夹角 $theta = 45 degree$.

  #hei[7.] 因为角 $theta$ 满足 $|cos theta| <= 1$. 所以对任意向量 $bold(v), bold(w)$ 一定有 $|bold(v) dot bold(w)| <= norm(bold(v)) norm(bold(w))$.
]

#sec[1.2　长度与点积]

第 1.1 节回避了向量之间的乘法, 现在来定义二维向量 $bold(v)$ 与 $bold(w)$ 的“点积”. 这种乘法需要分别计算两个乘积 $v_1 w_1$ 与 $v_2 w_2$, 然后将二者相加所得的数字就是 $bold(v) dot bold(w)$.

本节与几何具有密切联系 (如考虑向量的长度与向量夹角的余弦).

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  向量 $bold(v) = (v_1,v_2)$ 与 $bold(w) = (w_1,w_2)$ 的点积或内积记为 $bold(v) dot bold(w)$, 其定义为一个数:

  #grid(columns: (1fr, auto, 1fr),
    [],
    align(center)[$ bold(v) dot bold(w) = v_1 w_1 + v_2 w_2. $],
    align(right)[$(1)$],
  )
]

例 1  向量 $bold(v) = (4,2)$ 与 $bold(w) = (-1,2)$ 的点积为零:

#grid(columns: (auto, 1fr), column-gutter: 14pt,
  [点积为零的\ 向量相互垂直],
  align(center)[$ mat(delim: "[", 4;2) dot mat(delim: "[", -1;2) = -4 + 4 = 0. $],
)

在数学中 0 始终是一个特殊的数字. 点积为零意味着这两个向量互相垂直, 向量夹角为 $90 degree$. 如图 1.1 所示, 在画出这两个向量时可得到一个矩形 (而不是普通的平行四边形). 关于垂直向量, 最显而易见的一个例子是沿 $x$ 轴正向的向量 $bold(i) = (1,0)$ 和沿 $y$ 轴正向的向量 $bold(j) = (0,1)$, 二者的点积为 $bold(i) dot bold(j) = 0 + 0 = 0$. 向量 $bold(i)$ 与 $bold(j)$ 的夹角为直角.



#pagebreak()
