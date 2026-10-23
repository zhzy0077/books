#import "../theme.typ": *

#let toc1(num, title, pg) = {
  grid(
    columns: (auto, 1fr, auto),
    column-gutter: 0.5em,
    align(bottom)[#hei[第 #num 章] #h(0.5em) #hei[#title]],
    align(bottom)[#box(width: 1fr, repeat[ . ])],
    align(bottom)[#pg],
  )
}

#let toc2(num, title, pg) = {
  block(inset: (left: 2.6em))[
    #grid(
      columns: (auto, 1fr, auto),
      column-gutter: 0.5em,
      align(bottom)[#num #h(0.5em) #title],
      align(bottom)[#box(width: 1fr, repeat[ . ])],
      align(bottom)[#pg],
    )
  ]
}

#toc1(12, [概率统计中的线性代数], [565])
#toc2([12.1], [均值、方差与概率], [565])
#toc2([12.2], [协方差矩阵与联合概率], [578])
#toc2([12.3], [多维高斯分布与加权最小二乘法], [588])

#v(14pt)
#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 0.5em,
  align(bottom)[#hei[附录 1] #h(0.5em) #hei[矩阵分解]],
  align(bottom)[#box(width: 1fr, repeat[ . ])],
  align(bottom)[597],
)

#v(14pt)
#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 0.5em,
  align(bottom)[#hei[附录 2] #h(0.5em) #hei[线性代数概览]],
  align(bottom)[#box(width: 1fr, repeat[ . ])],
  align(bottom)[599],
)

#v(14pt)
#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 0.5em,
  align(bottom)[#hei[索引]],
  align(bottom)[#box(width: 1fr, repeat[ . ])],
  align(bottom)[601],
)

#pagebreak()