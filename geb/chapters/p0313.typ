#import "../theme.typ": *

// 第 277 页

#align(center)[#par(first-line-indent: 0em)[~∃ b:∃ c:((a · a) · a) = (((Sb · Sb) · Sb) + #linebreak()#h(4em)#text[((Sc · Sc) · Sc))]]]

目前这个阶段, 我们拥有一个开公式, 因为其中的 a 是自由的。这个公式表达了一个数 a 可以具有也可以不具有的一个性质——而我们的目的是要断言所有的数都具有这个性质。这很简单——只要在整个东西前面加上一个全称量词:

#align(center)[#par(first-line-indent: 0em)[∀ a:~∃ b:∃ c:((a · a) · a) = (((Sb · Sb) · Sb) + #linebreak()#h(4em)#text[((Sc · Sc) · Sc))]]]

一个同样好的翻译是:

#align(center)[#par(first-line-indent: 0em)[~∃ a:∃ b:∃ c:((a · a) · a) = (((Sb · Sb) · Sb) + #linebreak()#h(4em)#text[((Sc · Sc) · Sc))]]]

在简朴的 TNT 中, 我们可以用 a′ 来代替 b, a″ 代替 c, 于是这个公式将成为:

#align(center)[#par(first-line-indent: 0em)[~∃ a:∃ a′:∃ a″:((a · a) · a) = (((Sb · Sb) · Sb) + #linebreak()#h(4em)#text[((Sc · Sc) · Sc))]]]

那么句子 1: "5 是素数"又怎么样呢? 我们已经把它改写成了这个样子: "不存在数 a 和 b, 它们都大于 1, 使得 5 等于 a 乘以 b"。我们可以将它稍加改变如下: "不存在数 a 和 b, 使得 5 等于 a 加上 2, 再乘以 b 加上 2"。这又是一招——因为 a 和 b 被限定只能取自然数值, 所以这种方法同样也是可行的。现在, "b 加上 2"可以翻译成 (b + SS0), 但是还有一个更为简短的写法——SSb。同样, "c 加上 2"可以写成 SSc。现在, 我们的翻译非常的简洁:

#align(center)[#par(first-line-indent: 0em)[~∃ b:∃ c:SSSSS0 = (SSb · SSc)]]

如果没有前面的弯号, 它就是断言这样的两个自然数存在: 当它们分别增加 2 之后, 其乘积等于 5。带上前面的弯号, 整个陈述就被否定了, 结果就成了断言: 5 是素数。

如果我们想断言 d 加 e 加 1 是素数, 而不说 5, 那么, 最经济的
#pagebreak(weak: true)
