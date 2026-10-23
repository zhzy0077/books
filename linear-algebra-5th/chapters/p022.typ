#import "../theme.typ": *
#set par(spacing: 15.5pt, leading: 13.5pt)

类似地, 可定义向量减法: $bold(v) - bold(w)$ 的分量为 $v_1 - w_1$ 和 $v_2 - w_2$.

另一种基本运算是标量乘法 (也称为数乘). 可以将任意数字 $c$ (如 2 或 $-1$ 等)与向量相乘, 例如, 计算 $2bold(v)$ 只需将 $bold(v)$ 的每个分量都乘 2:

#block(above: 16pt, below: 16pt)[
  #grid(columns: (auto, 1fr), column-gutter: 14pt,
    [#hei[标量\ 乘法]],
    align(center)[$ 2bold(v) = mat(delim: "[", 2v_1; 2v_2) = bold(v) + bold(v), quad -bold(v) = mat(delim: "[", -v_1; -v_2). $],
  )
]

$c bold(v)$ 的分量是 $c v_1$ 和 $c v_2$. 数字 $c$ 也称为“标量”.

注意, 向量 $-bold(v)$ 与 $bold(v)$ 的和是零向量, 并用粗体 $bold(0)$ 而不是数字 0 表示! 二维向量 $bold(0)$ 的分量是 0 和 0. 这里再次强调, 一个向量与其分量是有差别的. 线性代数就是建立在 $bold(v) + bold(w)$, $c bold(v)$ 与 $d bold(w)$——向量加法与标量乘法运算的基础上的.

#subsec[线性组合]

将向量加法与标量乘法相结合就得到 $bold(v)$ 与 $bold(w)$ 的“线性组合”: 先用 $c$ 乘 $bold(v)$, $d$ 乘 $bold(w)$, 再将二者相加得 $c bold(v) + d bold(w)$.

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 15pt), width: 100%, above: 18pt, below: 20pt)[
  #align(center)[$c bold(v)$ 与 $d bold(w)$ 的和是线性组合 $c bold(v) + d bold(w)$.]
]

四种特殊的线性组合分别为和向量、差向量、零向量以及标量乘积 $c bold(v)$:

#align(center)[
  #set par(first-line-indent: 0em)
  $1bold(v) + 1bold(w)$ 表示向量 $bold(v)$ 与 $bold(w)$ 的和, 如图 1.1(a) 所示; \
  #v(8pt)
  $1bold(v) - 1bold(w)$ 表示向量 $bold(v)$ 与 $bold(w)$ 的差, 如图 1.1(b) 所示; \
  #v(8pt)
  $0bold(v) + 0bold(w)$ 表示零向量; \
  #v(8pt)
  $c bold(v) + 0bold(w)$ 表示与 $bold(v)$ 共线的向量.
]

零向量始终可以写成两个向量的线性组合 (此时组合系数全为 0). 每当提及向量生成的“空间”时, 其中一定包含零向量. 考察向量的线性组合及其性质, 就是线性代数的主要任务.

图 1.1 展示了如何将向量可视化. 对代数而言, 只关注向量的单个分量, 而绘制向量对应的图形时需要考虑所有分量. 图中向量 $bold(v)$ 是用一个箭头表示的, 箭头的起点是原点, 终点是点 $(4,2)$. 这个终点又是向量的另外一种表示方法——这样我们就有了表示二维向量 $bold(v)$ 的三种方法:

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 15pt), width: 100%, above: 18pt, below: 20pt)[
  #align(center)[#hei[二维向量 $bold(v)$ 的表示方法]　　两个数字, 从原点 $(0,0)$ 出发的箭头, 平面中的点.]
]

在加法运算中是将各分量对应相加, 使用可视化的箭头来表示 $bold(v) + bold(w)$ 则为

#block(above: 18pt, below: 18pt)[
  #align(center)[#hei[向量加法 (首尾顺次相连)]　　$bold(v)$ 的终点是 $bold(w)$ 的起点.]
]

执行加法运算时可以先沿 $bold(v)$ 再沿 $bold(w)$ 移动, 或者沿 $bold(v) + bold(w)$ (对角线捷径)移动, 还可以先沿 $bold(w)$ 再沿 $bold(v)$ 移动. 以上只是沿平行四边形 (在本例中是一个矩形) 移动的不同方式而已. 换言之, $bold(w) + bold(v)$ 与 $bold(v) + bold(w)$ 具有相同的结果.



#pagebreak()
