#import "../theme.typ": *

// 第 296 页

#align(center)[#par(first-line-indent: 0em)[∀b:(0＋b)＝b]]

特称和概括将允许我们把变元从 b 改为 a, 于是∀a:(0＋a)＝a 就不再是 TNT 的一个不可判定串了。

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[一个长推导]]]

现在我想介绍一个 TNT 中较长的推导, 以便你能够看到这种推导是什么样的。这个推导证明了一个虽然简单, 但却是很重要的数论事实。

#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[3em) (#h(3em) (1) ∀a:∀b:(a＋Sb)＝S(a＋b)]],
  align(right)[公理 3],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[3em) (#h(3em) (2) ∀b:(d＋Sb)＝S(d＋b)]],
  align(right)[特称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[5em) (#h(5em) (3) (d＋SSc)＝S(d＋Sc)]],
  align(right)[特称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[3em) (#h(3em) (4) ∀b:(Sd＋Sb)＝S(Sd＋b)]],
  align(right)[特称(第 1 行)],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[5em) (#h(5em) (5) (Sd＋Sc)＝S(Sd＋c)]],
  align(right)[特称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[3em) (#h(3em) (6) S(Sd＋c)＝(Sd＋Sc)]],
  align(right)[对称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[3em) (#h(3em) (7) \[]],
  align(right)[推入],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[5em) (#h(5em) (8) ∀d:(d＋Sc)＝(Sd＋c)]],
  align(right)[前提],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[5em) (#h(5em) (9) (d＋Sc)＝(Sd＋c)]],
  align(right)[特称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[5em) (#h(5em) (10) S(d＋Sc)＝S(Sd＋c)]],
  align(right)[加 S],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[5em) (#h(5em) (11) (d＋SSc)＝S(d＋Sc)]],
  align(right)[把 3 搬入],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[5em) (#h(5em) (12) (d＋SSc)＝S(Sd＋c)]],
  align(right)[传递],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[5em) (#h(5em) (13) S(Sd＋c)＝(Sd＋Sc)]],
  align(right)[把 6 搬入],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[5em) (#h(5em) (14) (d＋SSc)＝(Sd＋Sc)]],
  align(right)[传递],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[5em) (#h(5em) (15) ∀d:(d＋SSc)＝(Sd＋Sc)]],
  align(right)[概括],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[3em) (#h(3em) (16) \]]],
  align(right)[弹出],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[3em) (#h(3em) (17) \<∀d:(d＋Sc)＝(Sd＋c)→#linebreak()#h(5em)∀d:(d＋SSc)＝(Sd＋Sc)\>]],
  align(right)[幻想规则],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(left)[#par(first-line-indent: 0em)[3em) (#h(3em) (18) ∀c:\<∀d:(d＋Sc)＝(Sd＋c)→]],
  align(right)[],
)

#pagebreak(weak: true)
