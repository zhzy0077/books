#import "../theme.typ": *

// 第 294 页

#par(first-line-indent: 0em)[题, 然后再来讨论这件事。总而言之, 我们现在不沿着这个扩充走, 而是继续尝试去修补 TNT 的 ω 不完全性。]

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[最后一条规则]]]

"全规则"的问题是: 它要求知道一个无穷高的金字塔中所有的行都是定理——这对一个有穷的主体来说是要求得太多了。但是让我们假设这个塔的每一行都能够用某种模式化的方法从它的前一行推出来。这样就能用一个有穷的推理去说明在塔里的所有的串都是定理。于是, 技巧仅在于去找出造成多级瀑布的那个模式, 并证明那个模式本身就是一个定理。这就象是去证明每个神怪递送一个信息给它的元, 正如机关里的层层上报那样。留待证明的另一件事情即为, 是怪物最先引发了这个信息多级瀑布——也就是说, 要确定金字塔的第一行是一个定理。这样你就知道了#hei[造物神]将得到这个信息！

在我们谈过的那个特定的金字塔里有一个模式, 可以从下面的推导中的 4—9 行获得。

#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(1) ∀a:∀b:(a＋Sb)＝S(a＋b)]],
  align(right)[公理 3],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(2) ∀b:(0＋Sb)＝S(0＋b)]],
  align(right)[特称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(3) (0＋Sb)＝S(0＋b)]],
  align(right)[特称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(4) \[]],
  align(right)[推入],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(5) (0＋b)＝b]],
  align(right)[前提],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(6) S(0＋b)＝Sb]],
  align(right)[加 S],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(7) (0＋Sb)＝S(0＋b)]],
  align(right)[把第 3 行搬入],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(8) (0＋Sb)＝Sb]],
  align(right)[传递],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(9) \]]],
  align(right)[弹出],
)

#par(first-line-indent: 0em)[前提是(0＋b)＝b, 结果是(0＋Sb)＝Sb。]

#pagebreak(weak: true)
