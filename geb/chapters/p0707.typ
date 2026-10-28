#import "../theme.typ": *

// 第 671 页

第一步是删除这个 A，于是我们是在 CA 的左边——然后这个酶就拴在 C 上了。第二步把酶向右滑，到 A 上。而第三步就把 T 加在末端，形成 CAT 这样一个串，这样这个酶就完成了它的全部职责:把 ACA 变成了 CAT。

如果酶已经拴在 ACA 中右边的 A 上，会怎么样呢?它就要删除这个 A，并移出该串的端点。只要发生这种情形，酶就停止工作（这是个一般原则）。于是，全部的效果就是砍掉一个符号。

我们再来再看几个例子。这又是一种酶:

#grid(
  columns: (auto, 1fr),
  align: (center + horizon, left),
  text(size: 60pt)[{],
  [
    #par(first-line-indent: 0em)[（1）寻找本单元右边最近的嘧啶。]
    #par(first-line-indent: 0em)[（2）进入复制状态。]
    #par(first-line-indent: 0em)[（3）寻找本单元右边最近的嘌呤。]
    #par(first-line-indent: 0em)[（4）从此处切断该串（从当时所在单元的右边切）。]
  ]
)

这里有两个术语“嘧啶”和“嘌呤”。它们很简单:A 和 G 叫嘌呤，C 和 T 叫嘧啶。所以找出一个嘧啶就是找出最近的 C 或 T。

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[复制状态和双串]]]

还有一个新术语叫复制状态。任何一个串都能“复制”成另一个串，但方式很有趣。不是把 A 复制成 A，你得把它复制成 T，反过来也一样。C 也不复制成 C，你得把它复制成 G，反过来也一样。请注意，嘌呤总是复制成嘧啶，而嘧啶拷贝成嘌呤。这叫做补基对。这种互补关系可表示如下:

#align(center)[互补]

#grid(
  columns: (auto, auto, auto, auto),
  align: (center + horizon, center + horizon, center + horizon, center + horizon),
  column-gutter: 0.8em,
  [嘌呤],
  text(size: 34pt)[{],
  [
    A ⇔ T\
    G ⇔ C
  ],
  [嘧啶]
)

顺便说一下，从英文看，这就像是阿基里斯\[Achilles\]与乌龟#marginnote[507]\[Tortoise\]配对，螃蟹\[Crab\]与其基因\[Genes\]配对。

“复制”一个串时，并不是实际复制它，而是产生出它的补串，

#pagebreak(weak: true)
