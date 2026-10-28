#import "../theme.typ": *

// 第 344 页 (页边标注原英文版页码 264)

#par(first-line-indent: 0em)[#marginnote[264]例子：从第 6 行到第 7 行。这时，#strong[m]＝2，#strong[n]＝10，#strong[k]＝301。]

可别忘了我们的公理！没有它我们哪里都去不了。所以，我们说：

#block(inset: (left: 2em))[我们有 31。]

现在，右边一列可被视为一个资格充分的算术过程了，它来自一个新的算术系统，不妨称之为 310 系统：

#par(first-line-indent: 0em, hanging-indent: 2em)[（1）　　　31　　　给定的]

#par(first-line-indent: 0em, hanging-indent: 2em)[（2）　　　311　　　规则 2（#strong[m]＝1，#strong[n]＝1）]

#par(first-line-indent: 0em, hanging-indent: 2em)[（3）　　　31111　　　规则 3（#strong[m]＝2，#strong[n]＝11）]

#par(first-line-indent: 0em, hanging-indent: 2em)[（4）　　　301　　　规则 3（#strong[m]＝1，#strong[n]＝1，#strong[k]＝3）]

#par(first-line-indent: 0em, hanging-indent: 2em)[（5）　　　3010　　　规则 1（#strong[m]＝30）]

#par(first-line-indent: 0em, hanging-indent: 2em)[（6）　　　3010010　　　规则 2（#strong[m]＝3，#strong[n]＝10）]

#par(first-line-indent: 0em, hanging-indent: 2em)[（7）　　　30110　　　规则 4（#strong[m]＝2，#strong[n]＝10，#strong[k]＝301）]

请看，加长与缩短规则还在追着我们，这个"310 系统"也被缠上了。这个东西被传送到了数的领域，使得哥德尔数时而大时而小。如果细细观察，你会发现这些规则的设计是基于一个并不深奥的思想：整数的十进制表示中那些数码的左右移动是与乘以或除以 10 的方幂相关联的。这一简单的结论可以推广：

#par(first-line-indent: 0em, hanging-indent: 2em)[中心命题：若有一条印符规则，它在任一十进制表示的数中移动、改变、删除或插入数码，那么这条规则可同样由一条算术规则来替代，后者包括对 10 的方幂的算术运算以及加、减等运算。]

简而言之：

#block(inset: (left: 2em))[用于数字的印符规则实际上等同于用于数的算术规则。]

这一简单的结论是哥德尔方法的核心，其后果是震撼人心的。就是说，一旦对一个形式系统进行了哥德尔配数，立刻就有了一组规则，使我们得到完整的哥德尔同构。结果就是，我们可以把对任一形式系统的研究——事实上即对所有形式系统的研究——转成

#pagebreak(weak: true)
