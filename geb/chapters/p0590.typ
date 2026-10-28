#import "../theme.typ": *

// 第 554 页 (源图 p0590)；页底 "554" 为原书页码，由 theme 页脚自动生成

  （例如：WJU－PROOF－PAIR?\[3131131111301,301\]＝YES，

      WJU－PROOF－PAIR?\[311130,30\]＝NO）

WJU－THEOREM?\[N\]＝YES 若 N 对应的 WJU 系统中的串是一个定理，否则为 NO。

  （例如：WJU－THEOREM?\[311\]＝YES，

      WJU－THEOREM?\[30\]＝NO，

      WJU－THEOREM?\[701\]＝NO）

TNT－THEOREM?\[N\]＝YES 若 N 对应的 TNT 串是个定理。

  （例如：TNT－THEOREM?\[666111666\]＝YES，

      TNT－THEOREM?\[123666111666\]＝NO，

      TNT－THEOREM?\[7014\]＝NO）

#marginnote[417]FALSE?\[N\]＝YES 若 N 对应的 TNT 串是数论中的一个假命题，否则为 NO。

  （例如：FALSE?\[666111666\]＝NO，

      FALSE?\[223666111666\]＝YES，

      FALSE?\[7014\]＝NO）

后面七个题目与我们将要进行的元数学探索关系密切，因此很值得你认真分析。

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[可表示性和可体现性]]]

在继续讨论一些关于 BlooP 及其“亲戚”FlooP 的问题之前，让我们先回顾一下当初引进 BlooP 的原因，并把它和 TNT 联系起来。我在前面说过，一旦全部原始递归的概念对一个形式系统来说都是#hei[可体现]的，那么这个系统就达到了使用哥德尔方法所需的“临界质量”。这到底意味着什么呢?首先，我们必须区别这样两个概念：可表示性和可体现性。“表示”一个谓词只不过是一个从自然

#pagebreak(weak: true)