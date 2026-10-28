#import "../theme.typ": *

递归的——依然保持不变。

== 再用哥德尔方法

现在回过头来看 TNT+G，我们会发现类似的情形。TNT+G 证明对与其前身一样，是原始递归的，从而可以在 TNT+G 内用一个公式来体现，我们用一种显而易见的方式把它缩写成

#block(inset: (left: 2em))[
  #em[(TNT+G)—PROOF—PAIR\{a, a'\}]
]

此后，只需把每件事都重做一遍。我们制造新版的 G 时仍从一个"服"号串出发，同过去一样：

#block(inset: (left: 2em))[
  ~∃a:∃a':\<(TNT+G)—PROOF—PAIR\{a, a'\} ∧ ARITHMOQUINE\{a", a'\}\>
]

称它的哥德尔数为 u'。于是我们就来扼摁这个"服"号串，得到 G'：

#block(inset: (left: 2em))[
  ~∃a:∃a':\<(TNT+G)—PROOF—PAIR\{a, a'\} ∧ ARITHMOQUINE\{#underline[SSS⋯⋯SSS0]/a", a'\}\>

  #align(center)[u' 个 S]
]

#marginnote[467]#em[其解释为]

#block(inset: (left: 2em))[
  "不存在一个数 a 能与 u' 的算术扼摁化形成(TNT+G)证明对"。
]

说简洁一点，就是

#align(center)["我在形式系统 TNT+G 中不可证"。]

== 多重分叉现象

哎（打哈欠），这以后的细节就是很乏味的了。G' 对于 TNT+G 就象 G 对原来的 TNT 一样。可以看出，无论是 G' 还是~G'，都可以加进 TNT+G，从而导致数论的进一步分裂。而且，你别以为这种事只会对"好伙伴"发生，这种偷偷摸摸的手段也能用于 TNT

#pagebreak(weak: true)