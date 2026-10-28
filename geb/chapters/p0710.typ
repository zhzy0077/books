#import "../theme.typ": *

#block(inset: (left: 2em))[
  #em[ina]—— 在本单元右侧插入 A

  #em[inc]—— 在本单元右侧插入 C

  #em[ing]—— 在本单元右侧插入 G

  #em[int]—— 在本单元右侧插入 T

  #em[rpy]—— 寻找右边最近的嘧啶

  #em[rpu]—— 寻找右边最近的嘌呤

  #em[lpy]—— 寻找左边最近的嘧啶

  #em[lpu]—— 寻找左边最近的嘌呤
]

每一类指令都有一个用三个字母缩写的名字。我们把这些用三个字母缩写的指令叫作氨基酸。于是，每个酶都由一系列氨基酸制成。我们随便写一个酶：

#align(center)[#em[rpu－inc－cop－mvr－mvl－swi－lpu－int]]

和一个任意的串：

#align(center)[TAGATCCAGTCCATCGA]

#marginnote[509]看看这个酶如何对这个串起作用。碰巧，这个酶只拴在 G 上，我们就把它拴在中间的 G 上，并开始工作，向右寻找一个嘧啶（即 A 或 G）。我们（即酶）跳过 TCC，然后停在 A 上。插入一个 C，于是有

#align(center)[
  TAGATCCAGTCCACTCGA\
  ↑
]

其中的箭头指着酶所拴的单元。进入复制状态。于是在 C 上放一个倒置的#rotate(180deg)[C]。右移，再左移，然后转移到另一个串上。迄今为止我们已有

#align(center)[
  ↓\
  #rotate(180deg)[AC]\
  TAGATCCAGTCCACTCGA
]

把它倒转过来，让酶拴在下面的串上：

#align(center)[
  #rotate(180deg)[TAGATCCAGTCCACTCGA]\
  AG\
  ↑
]

#pagebreak(weak: true)