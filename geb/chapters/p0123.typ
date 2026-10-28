#import "../theme.typ": *

// 第 87 页 (源图 p0123)

#let d(n) = "-" * n // n 个短杠 (避免 Typst 把 "--" 转成破折号)

#par(first-line-indent: 0em)[们可以做一个与 pq 系统类似的系统,差别是这次我们表示的是乘法。我们称之为 tq 系统,“t”代表“乘”(英文是 times)。进一步还得说明,我们用 X、Y、Z 分别表示短杠符号串 x、y、z 中的短杠数目。(注意我在此特别用心地区分符号串与它所包含的短杠数目。)现在我们希望符号串 xqytz 是个定理,当且仅当 X 等于 Y 乘以 Z。例如,#d(6)q#d(2)t#d(2)应该是个定理,因为 2 乘以 3 等于 6,但#d(3)q#d(2)t#d(2)不应是个定理。tq 系统可以象 pq 系统一样很容易地刻划——就是说,只用一个公理模式和一条推理规则:]

#par(first-line-indent: 0em, hanging-indent: 2em)[公理模式:xqxt-是一个公理,对任何一个短杠符号串 x 都是如此。]

#par(first-line-indent: 0em, hanging-indent: 2em)[推理规则:设 x、y、z 都是短杠符号串。设 xqytz 是个已有的定理。那么,xyqytz-是个新的定理。]

下面是定理#d(6)q#d(2)t#d(2)的推导:

#par(first-line-indent: (amount: 4em, all: true))[
（1）#d(2)q#d(2)t#d(1)#h(9em)（公理）#linebreak()
（2）#d(4)q#d(2)t#d(2)#h(9em)（用推理规则,(1)作为已有定理）#linebreak()
（3）#d(6)q#d(2)t#d(2)#h(9em)（用推理规则,(2)作为已有定理）
]

若注意每次使用推理规则时最后的那个短杠符号串是怎样增长的,你就可以预言,如果想导出一个中间有十个短杠的定理,就得接连用九次推理规则。

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[把握合数]]]

乘法是个比加法稍难对付的概念,现在已由印符操作“把握住”了,就象艾舍尔的《释放》里的那些鸟。素数性质怎么样呢?这里有个看来聪明的计划:使用 tq 系统,定义一集形如 Cx 的新定理来刻划合数:

#pagebreak(weak: true)
