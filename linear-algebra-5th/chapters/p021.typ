#import "../theme.typ": *

#v(4pt)
#set par(leading: 11pt, spacing: 14pt)

1.1　向量 $bold(v), bold(w)$ 的和 $bold(v)+bold(w)$ 与线性组合 $c bold(v)+d bold(w)$；

1.2　两个向量 $bold(v), bold(w)$ 的点积 $bold(v)·bold(w)$ 与向量 $bold(v)$ 的长度 $norm(bold(v)) = sqrt(bold(v)·bold(v))$；

1.3　矩阵 $A$，线性方程组 $A bold(x)=bold(b)$ 与解 $bold(x)=A^(-1)bold(b)$．

#v(20pt)
#secBracket[1.1  向量与线性组合]

#v(10pt)
#block(
  stroke: 0.8pt, radius: 4pt, inset: (x: 10pt, top: 18pt, bottom: 20pt), width: 100%, above: 16pt, below: 24pt,
)[
  #set par(first-line-indent: 0em, leading: 13pt)
  #set text(size: 15.2pt)

  #hei[1.] $3 bold(v) + 5 bold(w)$ 是向量 $bold(v)$ 和 $bold(w)$ 的一个线性组合.
  #v(16pt)

  #hei[2.] 当 $bold(v) = vec(delim: "[", 1, 1), bold(w) = vec(delim: "[", 2, 3)$ 时, 上述线性组合为
  #v(10pt)
  $ 3 vec(delim: "[", 1, 1) + 5 vec(delim: "[", 2, 3) = vec(delim: "[", 3+10, 3+15) = vec(delim: "[", 13, 18) . $
  #v(14pt)

  #hei[3.] 在 $x y$ 平面中, 向量 $vec(delim: "[", 2, 3) = vec(delim: "[", 2, 0) + vec(delim: "[", 0, 3)$ 表示从原点出发向右平移 2 个单位长度,\ 再向上平移 3 个单位长度.
  #v(16pt)

  #hei[4.] 线性组合 $c vec(delim: "[", 1, 1) + d vec(delim: "[", 2, 3)$ 生成整个 $x y$ 平面, 即可生成任意的 $vec(delim: "[", x, y)$.
  #v(16pt)

  #hei[5.] 线性组合 $c vec(delim: "[", 1, 1, 1) + d vec(delim: "[", 2, 3, 4)$ 生成 $x y z$ 空间中的一个平面, 这个平面也可以由向量 $vec(delim: "[", 1, 1, 1), vec(delim: "[", 3, 4, 5)$ 的线性组合生成.
  #v(16pt)

  #hei[6.] 但是线性方程组 $cases(c + 2d = 1, c + 3d = 0, c + 4d = 0)$ 无解,\ 因为方程组右边的向量 $vec(delim: "[", 1, 0, 0)$ 不在上述生成平面上.
]

#v(10pt)
#set par(leading: 12pt, spacing: 16pt)

将两个单独的数字 $v_1$ 和 $v_2$ 配对就得到一个二维向量 $bold(v)$：

#block(above: 24pt, below: 24pt)[
  #grid(
    columns: (auto, auto, 1fr),
    column-gutter: 2.5em,
    align: (left+horizon, center+horizon, left+horizon),
    [列向量 $bold(v)$],
    [$bold(v) = vec(delim: "[", v_1, v_2)$],
    [ $v_1$ 是 $bold(v)$ 的第一个分量 \ $v_2$ 是 $bold(v)$ 的第二个分量 ],
  )
]

通常将向量 $bold(v)$ 写成一列，而不是一行．可用单独的一个字母 $bold(v)$（向量符号写成加粗斜体）来代表这一对数字 $v_1$ 和 $v_2$（数字符号写成不加粗的斜体）．

正所谓“物以类聚，人以群分”，对向量加法而言也是如此．向量加法并不是将数字 $v_1$ 与 $v_2$ 相加，而是将向量 $bold(v)$ 和 $bold(w)$ 对应的分量分别相加：

#block(above: 24pt, below: 24pt)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 2.5em,
    align: (left+horizon, center+horizon),
    [向量\ 加法],
    [$bold(v) = vec(delim: "[", v_1, v_2)$ 和 $bold(w) = vec(delim: "[", w_1, w_2)$ 相加得 $bold(v)+bold(w) = vec(delim: "[", v_1+w_1, v_2+w_2) .$],
  )
]

#pagebreak()
