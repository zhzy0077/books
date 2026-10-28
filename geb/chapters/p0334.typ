#import "../theme.typ": *

// 第 334 页 (书页 298)

#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(41) (c＋Sd)＝S(d＋c)]],
  align(right)[传递],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(42) S(d＋c)＝(d＋Sc)]],
  align(right)[把 33 搬入],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(43) (c＋Sd)＝(d＋Sc)]],
  align(right)[传递],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(44) (d＋Sc)＝(Sd＋c)]],
  align(right)[把 35 搬入],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(45) (c＋Sd)＝(Sd＋c)]],
  align(right)[传递],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(46) ∀ c:(c＋Sd)＝(Sd＋c)]],
  align(right)[概括],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(47) \]]],
  align(right)[弹出],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(48) \<∀ c:(c＋d)＝(d＋c)→#linebreak()#h(2em)∀ c:(c＋Sd)＝(Sd＋c)\>]],
  align(right)[幻想规则],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(49) ∀ d:\<∀ c:(c＋d)＝(d＋c)→#linebreak()#h(2em)∀ c:(c＋Sd)＝(Sd＋c)\>]],
  align(right)[概括],
)

#align(center)[#par(first-line-indent: 0em)[〔如果 d 与每个 c 可交换,那么 Sd 也能这样做。〕]]

#align(center)[#par(first-line-indent: 0em)[＊　＊　＊　＊　＊]]

#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(50) (c＋0)＝c]],
  align(right)[特称(第 20 行)],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(51) ∀ a:(0＋a)＝a]],
  align(right)[已有的定理],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(52) (0＋c)＝c]],
  align(right)[特称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(53) c＝(0＋c)]],
  align(right)[对称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(54) (c＋0)＝(0＋c)]],
  align(right)[传递(50,53 行)],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(55) ∀ c:(c＋0)＝(0＋c)]],
  align(right)[概括],
)

#align(center)[#par(first-line-indent: 0em)[〔0 与每一个 c 可交换。〕]]

#align(center)[#par(first-line-indent: 0em)[＊　＊　＊　＊　＊]]

#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(56) ∀ d:∀ c:(c＋d)＝(d＋c)]],
  align(right)[归纳(49,55 行)],
)

#align(center)[#par(first-line-indent: 0em)[〔因此,每一个 d 与每一个 c 可交换。〕]]

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[#hei[TNT 中的紧张与解决]]]]

TNT 证明了加法的可交换性。即便你还没有完全弄清上面这个推导的每个细节,能体会到它有着自己的自然“节拍”,象一首

#pagebreak(weak: true)
