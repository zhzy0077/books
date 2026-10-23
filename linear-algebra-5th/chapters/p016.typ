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

#block(fill: black, inset: 0pt, width: 40pt, height: 14pt)
#h(0.6em)
#hei(size: 20pt)[目  录]

#v(18pt)
#toc1(1, [向量引论], [1])
#toc2([1.1], [向量与线性组合], [2])
#toc2([1.2], [长度与点积], [12])
#toc2([1.3], [矩阵], [24])

#v(6pt)
#toc1(2, [线性方程组的求解], [34])
#toc2([2.1], [向量与线性方程组], [34])
#toc2([2.2], [高斯消元法], [49])
#toc2([2.3], [利用矩阵进行消元], [61])
#toc2([2.4], [矩阵运算的规则], [74])
#toc2([2.5], [逆矩阵], [88])
#toc2([2.6], [消元 = 分解: $A = L U$], [104])
#toc2([2.7], [转置与置换], [116])

#v(6pt)
#toc1(3, [向量空间与子空间], [131])
#toc2([3.1], [向量空间], [131])
#toc2([3.2], [$A$ 的零空间: 求解 $A bold(x) = 0$ 与 $R bold(x) = 0$], [142])
#toc2([3.3], [$A bold(x) = bold(b)$ 的全解], [157])
#toc2([3.4], [线性无关、基与维数], [171])
#toc2([3.5], [四个子空间的维数], [187])

#v(6pt)
#toc1(4, [正交性], [200])
#toc2([4.1], [四个子空间的正交性], [200])
#toc2([4.2], [投影], [211])
#toc2([4.3], [最小二乘估计], [224])
#toc2([4.4], [标准正交基与格拉姆-施密特方法], [238])

#v(6pt)
#toc1(5, [行列式], [253])
#toc2([5.1], [行列式的性质], [253])
#toc2([5.2], [排列与代数余子式], [266])
#toc2([5.3], [克拉默法则、逆矩阵与体积], [281])



#pagebreak()