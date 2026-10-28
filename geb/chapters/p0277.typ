#import "../theme.typ": *

// 第 241 页 (页边标注原英文版页码 185)
当你看到一个右方括号,你就知道你正在"弹"出来,并且上一行正是结果。把在幻想中产生的推导的那些行凹进去写,是会有所帮助的(但这并不是必须的)。

这里有一个关于幻想规则的例示,其中串 #strong[P] 作为前提。(当然,#strong[P] 碰巧不是一个定理,但是这并不要紧。我们只是在寻问:"假如它是,会怎么样?")。我们制造如下的幻想:

#par(first-line-indent: 0em)[
#h(2em)\[#h(14em)推入幻想#linebreak()#h(4em)#strong[P]#h(12em)前提#linebreak()#h(4em)#strong[～～P]#h(8em)结果(根据双弯号规则)#linebreak()#h(2em)\]#h(14em)弹出幻想
]

这个幻想说明:

#align(center)[#par(first-line-indent: 0em)[假如 #strong[P] 是一个定理,那么#strong[～～P] 也就是一个定理。]]

我们现在把这个中文(这是元语言)句子"压挤"成形式化的记号(这是对象语言):#strong[\<P→～～P\>]。这个东西——我们的第一条命题演算的定理——会向你显示"→"这个符号的预期解释。

这里是另一个运用幻想规则的推导:

#par(first-line-indent: 0em)[
#h(2em)\[#h(24em)推入#linebreak()#h(4em)#strong[\<P ∧ Q\>]#h(18em)前提#linebreak()#h(4em)#strong[P]#h(21em)分隔#linebreak()#h(4em)#strong[Q]#h(21em)分隔#linebreak()#h(4em)#strong[\<Q ∧ P\>]#h(18em)联结#linebreak()#h(2em)\]#h(24em)弹出#linebreak()#h(2em)#strong[\<\<P ∧ Q\>→\<Q ∧ P\>\>]#h(12em)幻想规则
]

有一点很重要:必须理解只有最后一行才是一条真正的定理——剩下的都是在幻想之中的。

#pagebreak(weak: true)
