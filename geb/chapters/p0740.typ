#import "../theme.typ": *

#align(center)[
  #grid(
    columns: (1fr, auto, 1fr),
    gutter: 1em,
    [自复制], [$<=>$], [自指],
    [使自复制得以发生的充分强的细胞系统], [$<=>$], [使自指得以发生的充分强的算术形式系统]
  )
]

#v(2pt)
#grid(
  columns: (46%, 51%),
  gutter: 3%,
  [
    #image("../assets/p0740/fig.png", width: 100%)
    #v(3pt)
    #text(size: 7.5pt)[图 100. 哥德尔编码。按照这个哥德尔配数方案，每个 TNT 符号有一个或几个密码子。小椭圆圈表明这个表怎样包含着第九章中的哥德尔配数表。]
  ],
  [
    请注意 A 和 T 组成的基对（算术化#em[[Arithmetization]]和翻译#em[[Translation]]），以及 G 和 C 的基对（哥德尔#em[[Gödel]]和克里克#em[[Crick]]）。数理逻辑居嘌呤一方，分子生物学居嘧啶一方。

    为了使这个映射从美学角度看更为完善，我情愿让哥德尔配数法向遗传密码绝对看齐。事实上，只要按下面对应，遗传密码表也就变成了哥德尔编码表：

    #align(center)[
      （奇）1 $arrow.l.r.double$ A（嘌呤）\
      （偶）2 $arrow.l.r.double$ C（嘧啶）\
      （奇）3 $arrow.l.r.double$ G（嘌呤）\
      （偶）6 $arrow.l.r.double$ U（嘧啶）
    ]

    每种氨基酸（共二十种）恰好对应一个 TNT 符号（共二十个）。这样，我当初编造"简朴 TNT"的动机也就终于明朗了——要它恰好有二十个符号！哥德尔编码如图 100 所示。试将它与遗传密码（图 94）比较一下。

    看到本世纪所获得的知识中，两个极其深奥而
  ]
)

#pagebreak(weak: true)
