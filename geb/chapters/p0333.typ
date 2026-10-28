#import "../theme.typ": *

// 第 333 页 (书页 297)

#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[∀ d:(d＋SSc)＝(Sd＋Sc)]],
  align(right)[概括],
)

#align(center)[＊　＊　＊　＊　＊]

#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(19) (d＋S0)＝S(d＋0)]],
  align(right)[特称(第 2 行)],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(20) ∀ a:(a＋0)＝a]],
  align(right)[公理 1],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(21) (d＋0)＝d]],
  align(right)[特称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(22) S(d＋0)＝Sd]],
  align(right)[加 S],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(23) (d＋S0)＝Sd]],
  align(right)[传递(19、22 行)],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(24) (Sd＋0)＝Sd]],
  align(right)[特称(第 20 行)],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(25) Sd＝(Sd＋0)]],
  align(right)[对称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(26) (d＋S0)＝(Sd＋0)]],
  align(right)[传递(第 23、25 行)],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(27) ∀ d:(d＋S0)＝(Sd＋0)]],
  align(right)[概括],
)

#align(center)[＊　＊　＊　＊　＊]

#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(28) ∀ c:∀ d:(d＋Sc)＝(Sd＋c)]],
  align(right)[归纳(18、27 行)],
)

#align(center)[〔S 能够在一个加法里面前后滑来滑去。〕]

#align(center)[＊　＊　＊　＊　＊]

#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(29) ∀ b:(c＋Sb)＝S(c＋b)]],
  align(right)[特称(第 1 行)],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(30) (c＋Sd)＝S(c＋d)]],
  align(right)[特称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(31) ∀ b:(d＋Sb)＝S(d＋b)]],
  align(right)[特称(第 1 行)],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(32) (d＋Sc)＝S(d＋c)]],
  align(right)[特称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(33) S(d＋c)＝(d＋Sc)]],
  align(right)[对称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(34) ∀ d:(d＋Sc)＝(Sd＋c)]],
  align(right)[特称(第 28 行)],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(35) (d＋Sc)＝(Sd＋c)]],
  align(right)[特称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(36) \[]],
  align(right)[推入],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(37) ∀ c:(c＋d)＝(d＋c)]],
  align(right)[前提],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(38) (c＋d)＝(d＋c)]],
  align(right)[特称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(39) S(c＋d)＝S(d＋c)]],
  align(right)[加 S],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(40) (c＋Sd)＝S(c＋d)]],
  align(right)[把 30 搬入],
)

#pagebreak(weak: true)
