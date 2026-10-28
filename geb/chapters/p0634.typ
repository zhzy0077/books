#import "../theme.typ": *

// 第 634 页 (书页 598)

#block(inset: (left: 2em))[
  ∀ a～∃ a'：\<TNT－PROOF－PAIR\{a,a'\} ∧ \
  ARITHMOQUINE\{SSS⋯⋯SSS0/a",a'\}\>\
  ————————\
  u 个 S
]

要想理解这个符号串何以不是定理，只需注意一下它与 G 本身是极为相似的——事实上只用一步就能从它推得 G（根据 TNT 的量词互变规则），所以，如果它是定理，G 也是。而 G 不是定理，于是这个公式也就不能是定理。

我们现在需要证明与之相应的那个金字塔中的公式都是定理。写出它们是很容易的：

#marginnote[451]
#block(inset: (left: 2em))[
  ～∃ a'：\<TNT－PROOF－PAIR\{0/a,a'\} ∧ ARITHMOQUINE\{SSS⋯⋯SSS0/a",a'\}\>\
  ————\
  u 个 S
]

#block(inset: (left: 2em))[
  ～∃ a'：\<TNT－PROOF－PAIR\{S0/a,a'\} ∧ ARITHMOQUINE\{SSS⋯⋯SSS0/a",a'\}\>
]

#block(inset: (left: 2em))[
  ～∃ a'：\<TNT－PROOF－PAIR\{SS0/a,a'\} ∧ ARITHMOQUINE\{SSS⋯⋯SSS0/a",a'\}\>
]

#block(inset: (left: 2em))[
  ～∃ a'：\<TNT－PROOF－PAIR\{SSS0/a,a'\} ∧ ARITHMOQUINE\{SSS⋯⋯SSS0/a",a'\}\>
]

#grid(
  columns: (1fr, 1fr),
  align: center,
  [⋮], [⋮],
  [⋮], [⋮],
)

这些符号串说的都是什么？逐个翻译出来就是：

#block(inset: (left: 2em))["0 与 u 的算术抔摁化不形成 TNT 证明对"]

#block(inset: (left: 2em))["1 与 u 的算术抔摁化不形成 TNT 证明对"]

#block(inset: (left: 2em))["2 与 u 的算术抔摁化不形成 TNT 证明对"]

#block(inset: (left: 2em))["3 与 u 的算术抔摁化不形成 TNT 证明对"]

#grid(
  columns: (1fr, 1fr, 1fr),
  align: center,
  [⋮], [⋮], [⋮],
  [⋮], [⋮], [⋮],
)

#pagebreak(weak: true)
