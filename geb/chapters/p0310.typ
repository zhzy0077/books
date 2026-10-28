#import "../theme.typ": *

// 第 274 页

#align(center)[#par(first-line-indent: 0em)[∀ c:(b＋c)＝(c＋b)]]

却是一个开公式，因为 b 是自由的。它表达了未指定的数 b 可以具有，也可以不具有的一个性质——即，与所有的数 c 可交换。

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[#hei[翻译我们的例句]]]]

这样，我们的词汇表就全了。我们将以此来表达所有的数论语句！得有大量的实践才能掌握这些本领：如何用这种记法去表达 N 中复杂的陈述，以及倒过来，如何给出良构公式的意义。为此，我们还回到开始那六个例句，想法给出它们的 TNT 翻译。顺便说说，不要以为下面给出的翻译是唯一的——远不是如此。每一个句子都能由许多——无穷多的——方法来表达。

我们从最后的一个：“6 是偶数”开始。这个例句我们用更初等的概念重述出来就成了“存在一个数 e，使得 2 乘以 e 等于 6”。这很容易：

#align(center)[#par(first-line-indent: 0em)[∃ e:(SS0 · e)＝SSSSSS0]]

注意必须有限定量词。仅仅象下面这样写是绝对不行的：

#align(center)[#par(first-line-indent: 0em)[(SS0 · e)＝SSSSSS0]]

这个串的解释当然既不真也不假，它只是表达了数 e 可以具有的一个性质。

奇怪的是，因为我们知道乘法是可交换的，于是我们可以很容易地就把上式写成：

#align(center)[#par(first-line-indent: 0em)[∃ e:(e · SS0)＝SSSSSS0]]

或者，知道相等是一个对称关系，我们换一下次序去写等式的两边：

#align(center)[#par(first-line-indent: 0em)[∃ e:SSSSSS0＝(SS0 · e)]]

现在，关于“6 是偶数”的这三个翻译是完全不同的串，而且还有一件事也绝不是显然的：它们之中任何一个是否是定理，受到其它任

#pagebreak(weak: true)
