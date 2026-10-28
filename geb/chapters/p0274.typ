#import "../theme.typ": *

// 第 238 页 (页边标注原英文版页码 182)
统的定理。这条规则取来两个定理并且把它们组合成一个。这会使你回想起刚才的对话。

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[#hei[良构串]]]]

还有一些其它的推理规则, 我们都将简要地加以介绍——但是首先, 有一点是很重要的: 我们要定义所有串的一个子集, 即"良构串"的集合。它们是用递归的方式来定义的。我们先从这里开始:

#block(inset: (left: 2em))[#strong[原子]: #strong[P]、#strong[Q]、#strong[R] 都称作原子。新的原子是在老的原子的右上角加撇构成的——比如, #strong[R']、#strong[Q"]、#strong[P""] 等等。这便使我们可以源源不断地提供原子。所有的原子都是良构的。]

然后我们有四条递归的规则:

#ruleBox[形成规则:][如果 x 和 y 都是良构的, 那么以下的四种串也都是良构的:]

#par(first-line-indent: 0em)[
（1）#strong[～x]#linebreak()#h(2em)（2）#strong[\<x ∧ y\>]#linebreak()#h(2em)（3）#strong[\<x ∨ y\>]#linebreak()#h(2em)（4）#strong[\<x → y\>]
]

举例来说, 下列所有的串都是良构的:

#par(first-line-indent: 0em)[
#strong[P]#h(24.5em)原子#linebreak()#h(2em)#strong[～P]#h(22.5em)根据(1)#linebreak()#h(2em)#strong[～～P]#h(21em)根据(1)#linebreak()#h(2em)#strong[Q']#h(23.5em)原子#linebreak()#h(2em)#strong[～Q']#h(21.5em)根据(1)#linebreak()#h(2em)#strong[\<P ∧ ～Q'\>]#h(16.5em)根据(2)#linebreak()#h(2em)#strong[～\<P ∧ ～Q'\>]#h(15em)根据(1)#linebreak()#h(2em)#strong[\<～～P→Q'\>]#h(15.5em)根据(4)#linebreak()#h(2em)#strong[\<～\<P ∧ ～Q'\> ∨ \<～～P→Q'\>\>]#h(5em)根据(3)
]

#pagebreak(weak: true)
