#import "../theme.typ": *

// 第 281 页

#par(first-line-indent: 2em)[例子:S0=0　(SS0＋SS0)=SSSS0　S(b＋c)=((c・d)・e)]

如果一个原子中含有一个变元 u, 那么 u 是在它里面是自由的。所以在上面最后一个例子里有四个自由变元。

#strong[否定:]

一个前面加了一个弯号的良构公式是良构的。

#par(first-line-indent: 2em)[例子:~S0=0　#h(2em)~∃ b:(b＋b)=S0　#h(2em)~\<0=0→S0=0\>]

#linebreak()#h(2em)~b=S0

一个变元的量化状况(就是说变元是自由的还是量化的)在否定之下并不改变。

#strong[复合:]

如果 x 和 y 是良构公式, 并且没有什么变元在它们中的一个里面是自由的而在另一个里面是量化的, 那么下列都是良构公式:

#align(center)[#par(first-line-indent: 0em)[\<x ∧ y\>, \<x ∨ y\>, \<x→y\>。]]

#par(first-line-indent: 2em)[例子:\<0=0∧~0=0\>　#h(2em)\<b=b∨~∃ c:c=b\>]

#linebreak()#h(2em)\<S0=0→∀ c:~∃ b:(b＋b)=c\>

一个变元的量化状况在这种情况下不改变。

#strong[量化:]

如果 u 是一个变元, x 是一个良构公式, u 在它里面是自由的, 那么下面的串是良构公式:

#align(center)[#par(first-line-indent: 0em)[∃ u:x 和 ∀ u:x]]

#par(first-line-indent: 2em)[例子:∀ b:\<b=b∨~∃ c:c=b\>　#h(2em)∀ c:~∃ b:(b＋b)=c]

#linebreak()#h(2em)~∃ c:Sc=d

#strong[开公式:]含有至少一个自由变元。

#par(first-line-indent: 2em)[例子:~c=c　#h(2em)b=b　#h(2em)\<∀ b:b=b∧~∃ c=c\>]

#strong[闭公式(句子):]不含自由变元。

#par(first-line-indent: 2em)[例子:S0=0　#h(2em)~∀ d:d=0　#h(2em)∃ c:\<∀ b:b=b∧~c=c\>]

这就完成了 TNT 良构公式的形成规则表。

#pagebreak(weak: true)
