#import "../theme.typ": *

// 第 275 页

何一个是否是定理的制约。（但是，-p q　是定理这个事实，几乎一点也不依赖下面这一事实：其"等价的"串-p--q--得是个定理。因为，作为人，这种等价性是在我们的心里，所以我们几乎是自动地去想到解释，而不考虑公式的结构方面的性质。）

我们可以很快解决句子 2："2 不是一个平方数"，它的翻译几乎立刻就可以写出来：

#align(center)[#par(first-line-indent: 0em)[#sym.tilde ∃ b:(b · b)＝SS0]]

然而，我们又一次发现了歧义。如果我们选用下面这种写法将如何呢？

#align(center)[#par(first-line-indent: 0em)[∀ b:#sym.tilde (b · b)＝SS0]]

第一种写法是说，"不存在一个数 b，具有这样的性质，b 的平方是 2"，而第二种写法是说，"对任何数 b，b 的平方不是 2。"再一次地，在我们看来，它们在概念上是等价的——但是对 TNT 来说，它们是不同的串。

我们接着来看句子 3："1729 是两个立方数的和"。这次的翻译要含有两个存在量词，一个跟在另一个后面，如下所示：

#align(center)[$∃ b:∃ c: underbrace("SSSSSS" dots.h "SSSSS0", "共 1729 个") = (((b dot b) dot b) + ((c dot c) dot c))$]

还有许多其它可采用的写法。颠倒量词的次序；交换等式的两边；换变元为 d 和 e；颠倒相加的次序；以不同方式相乘；等等，等等。不过，比较起来我更喜欢下面这两种翻译：

#align(center)[#par(first-line-indent: 0em)[
∃ b: ∃ c: (((SSSSSSSSSS0 · SSSSSSSSSS0) · #linebreak()SSSSSSSSSS0)＋ #linebreak() ((SSSSSSSSS0 · SSSSSSSSS0) · #linebreak()SSSSSSSSS0)) #linebreak()＝(((b · b) · b)＋((c · c) · c))
]]

#pagebreak(weak: true)
