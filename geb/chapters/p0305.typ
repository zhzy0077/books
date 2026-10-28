// 第 269 页 (源图 p0305)
#import "../theme.typ": *

#par(first-line-indent: 0em, hanging-indent: 4em)[#h(2em)（5'）对每个数 a，存在一个大于 a 的数 b，具有这样的性质：不存在大于 1 的数 c 和 d，使得 b 等于 c 乘以 d。]
#par(first-line-indent: 0em, hanging-indent: 4em)[#h(2em)（6'）存在一个数 e，使得 2 乘以 e 等于 6。]

这种分析已经使我们大大接近了得到数论语言的基本成分。很清楚，有少数短语反复地出现：

#par(first-line-indent: 0em)[#h(2em)对任何数 b]
#par(first-line-indent: 0em)[#h(2em)存在一个数 b，使得……]
#par(first-line-indent: 0em)[#h(2em)大于#h(4em)等于#h(4em)乘以#h(4em)加上]
#par(first-line-indent: 0em)[#h(2em)0, 1, 2, ……]

这些短语的绝大部分都将被赋予单个的符号。一个例外是"大于"，它还能再进一步归约。事实上，句子"a 大于 b"可以变成

#par(first-line-indent: 0em)[#h(2em)存在一个不等于 0 的数 c，使得 a 等于 b 加上 c。]

#align(center)[#text(size: 16.5pt, weight: "bold")[数#h(3em)字]]

我们将不是对每一个自然数都赋予一个不同的符号。相反，我们将用一个非常简单、始终如一的方法，为每个自然数给出一个复合的符号——象我们在 pq 系统里做过的那样。下面是我们对自然数的记法：

#par(first-line-indent: 0em)[#h(2em)零：#h(18em)0]
#par(first-line-indent: 0em)[#h(2em)一：#h(17em)S0]
#par(first-line-indent: 0em)[#h(2em)二：#h(16em)SS0]
#par(first-line-indent: 0em)[#h(2em)三：#h(15em)SSS0]

#par(first-line-indent: 0em)[#h(8em)等等。]

符号 S 有一个解释——是它后面的那个东西"的后继"。因此，SS0 的解释按字面上就是"零的后继的后继"。这种形式的串被称为数字。
#pagebreak(weak: true)
