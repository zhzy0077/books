#import "../theme.typ": *

// 第 349 页

#par(first-line-indent: 0em)[同构时自动出现的副产品。所以无朋至少有两个被动意义——也许还多!]

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[自食恶果:对 TNT 进行哥德尔配数]]]

当然事情不是到此就结束了。我们才刚开始体会到哥德尔同构的潜力。自然而然的路子就是把 TNT 反映其它形式系统的能力转而用在它自己身上,就象乌龟使螃蟹的唱机转而打击其自身,以及使他的高脚杯转而破坏其自身一样。为了做到这一点,我们得对 TNT 象对 WJU 系统一样进行哥德尔配数,然后把其推理规则#marginnote[268]“算术化”。哥德尔配数是很容易的。比如,我们可以建立如下对应:

#table(
  columns: (42pt, 50pt, 58pt, 1fr, 22pt, auto),
  align: (center, center, center, left, center, left + horizon),
  [符 号], [], [密码子], table.cell(colspan: 3)[关于密码子的一些有助记忆的说法],
  text("0"), [……], [666], table.cell(colspan: 3)[洒过农药后的昆虫数目],
  text("S"), [……], [123], table.cell(colspan: 3)[后继关系:1,2,3,……],
  text("="), [……], [111], table.cell(colspan: 3)[视觉上的相似:横过来看],
  text("+"), [……], [112], table.cell(colspan: 3)[1+1=2],
  text("•"), [……], [236], table.cell(colspan: 3)[2×3=6],
  text("("), [……], [362], [以 2 结尾], [], [],
  text(")"), [……], [323], [以 3 结尾], [], [],
  text("\<"), [……], [212], [以 2 结尾], place(horizon, math.stretch($brace.l$, size: 9em)), [这三对形成一个模式],
  text("\>"), [……], [213], [以 3 结尾], [], [],
  text("["), [……], [312], [以 2 结尾], [], [],
  text("]"), [……], [313], [以 3 结尾], [], [],
  text("a"), [……], [262], table.cell(colspan: 3)[与∀(626)相反],
  text("'"), [……], [163], table.cell(colspan: 3)[163 是质数,而质数的首笔是撇],
  text("∧"), [……], [161], table.cell(colspan: 3)[“∧”是序列 1—6—1 的“形象”],
  text("∨"), [……], [616], table.cell(colspan: 3)[“∨”是序列 6—1—6 的“形象”],
  text("→"), [……], [633], table.cell(colspan: 3)[6“蕴涵”3 和 3,某种意义上是这样吧……],
)

#pagebreak(weak: true)
