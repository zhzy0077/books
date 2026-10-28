#import "../theme.typ": *

// 第 278 页

方法是用串(d + Se)来替换代表 5 的那个数字:

#align(center)[#par(first-line-indent: 0em)[~∃ b:∃ c:(d + Se) = (SSb · SSc)]]

又一次, 得到一个开公式, 它的解释是一个既不真也不假的句子, 它只是一个关于两个未指定的数 d 和 e 的断言。注意, 用串(d + Se)来表示的数必然是大于 d 的, 因为已经为 d 加上了一个虽然是未指定的但一定是正的数值。因此, 如果我们在变元 e 上进行存在性的量化, 我们将得到一个公式来断言:

#align(center)[#par(first-line-indent: 0em)[存在一个数, 它大于 d, 并且它是素数。]]

#align(center)[#par(first-line-indent: 0em)[∃ e:~∃ b:∃ c:(d + Se) = (SSb · SSc)]]

好, 我们现在剩下要做的全部事情就是要断言: 不管 d 是什么, 这个性质实际上总是有的。做这件事的方法是在变元 d 上进行全称性的量化:

#align(center)[#par(first-line-indent: 0em)[∀ d:∃ e:~∃ b:∃ c:(d + Se) = (SSb · SSc)]]

这正是句子 5 的翻译!

#align(center)[#hei[翻 译 习 题]]

这样, 我们就完成了六个典型数论句子的翻译练习。但是, 这并不一定就使你成了一个使用 TNT 记号的专家。还有一些技巧需要掌握。下面的六个良构公式可以检验你对 TNT 记法的理解。它们的意思是什么? 哪些是真的(当然, 是在解释之下), 哪些是假的? (提示: 对付这个练习的方法是逐步向左移。首先, 翻译原子; 其次, 想出加上一个单个的量词或一个弯号会对翻译起什么作用; 然后向左移, 加上另一个量词或弯号; 然后再向左移, 再做同样的事情。)

#align(center)[#par(first-line-indent: 0em)[~∀ c:∃ b:(SS0 · b) = c]]

#align(center)[#par(first-line-indent: 0em)[∀ c:~∃ b:(SS0 · b) = c]]

#align(center)[#par(first-line-indent: 0em)[∀ c:∃ b:~(SS0 · b) = c]]

#pagebreak(weak: true)
