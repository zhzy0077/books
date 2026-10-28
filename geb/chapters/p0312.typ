#import "../theme.typ": *

// 第 276 页

#align(center)[#par(first-line-indent: 0em)[
和#linebreak()∃ b: ∃ c: (((SSSSSSSSSSSS0 · SSSSSSSSSSSS0) · #linebreak()SSSSSSSSSSSS0)＋ #linebreak() ((S0 · S0) · S0)) #linebreak()＝(((b · b) · b)＋((c · c) · c))
]]

你看出来是为什么了吗？

#align(center)[#hei[这一行中的窍门]]

现在我们来对付与此相关的句子 4："没有两个正立方数的和本身又是一个立方数"。假设我们只是要表述"7 不是两个正立方数的和"。做这件事最简单的方法是，把断定 7 是两个正立方数的和的公式加以否定。这很象前面那个含 1729 的句子，只是我们在此必须加进去这样的条件：那两个立方数是正的。对付这个问题的窍门是在变元的前面加符号 S，如下所示：

#align(center)[#par(first-line-indent: 0em)[∃ b:∃ c:SSSSSSS0＝(((Sb · Sb) · Sb)＋((Sc · Sc) · Sc))]]

你看，我们不是用 b 和 c 做立方，而是用它们的后继，那一定是正的，因为不论 b 还是 c，能取的最小值就是零。于是，右边就表示两个正立方数的和。附带说一下，要注意当把短语"存在有数 b 和 c 使得……"翻译出来时，并不包含代表"和"的符号"∧"。这个符号只是用来连接整个的良构串，而不是用于结合两个量词的。

现在我们已经翻译了"7 是两个正立方数的和"，我们希望否定它。这只要在整个东西前边加一个弯号。（注意：虽然想要的短语是说"不存在数 b 和 c 使得……"但你不要把每个量词都否定）于是我们得到：

#align(center)[#par(first-line-indent: 0em)[~∃ b:∃ c:SSSSSSS0＝(((Sb · Sb) · Sb)＋((Sc · Sc) · Sc))]]

可是我们原本要断言的性质不是对 7 而言的，而是对所有的立方数。因此，让我们把公式中的数字 SSSSSSS0 换成串((a · a) · a)，它是"a 的立方"的翻译：

#pagebreak(weak: true)
