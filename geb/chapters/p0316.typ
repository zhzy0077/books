#import "../theme.typ": *

// 第 280 页
用"s"、"t"以及"u"去代表其他种类的 TNT 串。不用说, 这五个符号没有一个本身是 TNT 的符号。

数字:

#block(inset: (left: 2em))[
  #par(first-line-indent: 0em)[0 是一个数字。]

  #par(first-line-indent: 0em)[一个前面加上了 S 的数字仍是一个数字。]

  #par(first-line-indent: 0em)[例子: 0 #h(2em) S0 #h(2em) SS0 #h(2em) SSS0 #h(2em) SSSS0 #h(2em) SSSSS0]
]

变元:

#block(inset: (left: 2em))[
  #par(first-line-indent: 0em)[a 是一个变元。如果我们不限于简朴版本, 那么 b, c, d 以及 e 同样也都是。]

  #par(first-line-indent: 0em)[一个加了一撇的变元仍是一个变元。]

  #par(first-line-indent: 0em)[例子: a #h(2em) b' #h(2em) c'' #h(2em) d''' #h(2em) e'''']
]

项:

#block(inset: (left: 2em))[
  #par(first-line-indent: 0em)[所有数字和变元都是项。]

  #par(first-line-indent: 0em)[一个前面加了 S 的项仍是一个项。]

  #par(first-line-indent: 0em)[如果 s 和 t 都是项, 那么(s+t)和(s·t)也同样都是项。]

  #par(first-line-indent: 0em)[例子: 0 #h(2em) b #h(2em) SSa' #h(2em) (S0·(SS0+c)) #h(2em) S(Sa·(Sb·Sc))]

  #par(first-line-indent: 0em)[项可以分成两类:]
]

#block(inset: (left: 4em))[
  #par(first-line-indent: 0em)[(1) 确定项。这些项不包含变元。]

  #par(first-line-indent: 0em)[例子: 0 #h(2em) (S0+S0) #h(2em) SS((SS0·SS0)+(S0·S0))]

  #par(first-line-indent: 0em)[(2) 非确定项。这些项包含有变元。]

  #par(first-line-indent: 0em)[例子: b #h(2em) Sa #h(2em) (b+S0) #h(2em) (((S0+S0)+S0)+e)]
]

以上的规则是告诉我们如何制作良构公式的部件, 下面的规则是告诉我们如何去制作完整的良构公式。

原子:

#block(inset: (left: 2em))[
  #par(first-line-indent: 0em)[如果 s 和 t 是项, 那么 s=t 是一个原子。]
]

#pagebreak(weak: true)
