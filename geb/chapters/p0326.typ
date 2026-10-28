#import "../theme.typ": *

// 第 290 页

#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(2) Sa＝Sa]],
  align(right)[特称],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(3) ∃b:b＝Sa]],
  align(right)[存在],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(4) ∀a:∃b:b＝Sa]],
  align(right)[概括],
)
#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[#par(first-line-indent: 0em)[(5) ∃b:b＝Sb]],
  align(right)[特称(错了!)],
)

因此, 现在我们看到, 为什么那些限制是必要的。

这里有一个简单的谜题: 把皮亚诺的第四条公设翻译成为 TNT 记法(如果你还不曾这样做的话), 然后把这个串当作一个定理而推导出来。

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[少了什么东西]]]

现在, 如果你用迄今所介绍过的 TNT 规则和公理四处试一会儿的话, 你将发现, 你可以产生出如下的定理金字塔(这是一个串的集合, 所有这些串都是从同一个模子里翻铸出来的, 相互之间仅有的不同是填在里边的数字分别为 0、S0、SS0 等等):

#align(center)[#par(first-line-indent: 0em)[
  (0＋0)＝0 \
  (0＋S0)＝S0 \
  (0＋SS0)＝SS0 \
  (0＋SSS0)＝SSS0 \
  (0＋SSSS0)＝SSSS0 \
  等等。
]]

事实上, 这个塔中的每个定理都能从恰在它之上的那个定理中推出来, 只需一两步。因此它是一种定理的"多级瀑布", 每一级触发下一级。(这些定理很容易让人想起 pq 系统中的定理, 在那里, 左端和右端的短杠组是同时增长的。)

这里有一个我们能很容易地写下来的串, 它概括地说出了它们作为整体时的被动意义。这个全称量化了的概述串是:

#align(center)[#par(first-line-indent: 0em)[∀a:(0＋a)＝a]]

#pagebreak(weak: true)
