#import "../theme.typ": *

一段指向右方，如果这样做了，那么最后一段就决定了酶所拴的位置，如图 89 所示。

#align(center)[
  #table(
    columns: 3,
    align: center,
    [第一段], [最后一段], [所拴的字母],
    [$==>$], [$==>$], [A],
    [$==>$], [$arrow.t.double$], [C],
    [$==>$], [$arrow.b.double$], [G],
    [$==>$], [$arrow.l.double$], [T],
  )
  图 89. 印符酶所拴的位置表。
]

所以，我们现在所讨论的是一个喜欢字母 C 的酶。如果在折起的时候，一个酶自己居然会交叉，那也没什么不好——只要把它看成从自己下方或上方过去就行了。应当注意，在确定酶的三级结构时，全部氨基酸都起了作用。

#align(center)[#text(size: 16.5pt, weight: "bold")[标点、基因与核糖体]]

还有一件事有待澄清：印符遗传密码的 AA 一格为什么是空白？答：二元组 AA 在串里起标点符号的作用，它标志着一个酶的密码的结束。就是说，如果一个串里有一个或几个二元组 AA 的话，这个串就在给两个或更多的酶编码。例如，串

#align(center)[CG GA TA CT AA AC CG A]

就是为两个酶编码，它们是

#align(center)[cop—ina—rpy—off]

和

#align(center)[cut—cop。]

AA 把该串分成两个“基因”。#hei[基因的定义是：一个串中给一个酶编码的那个部分。]要注意，在一个串内有 AA 并不就意味着该串是给两个酶编码。比如，CAAG 给“mvr—del”编码。这里的 AA 从偶数单元开始，因而并不读成二元组！

#pagebreak(weak: true)