#import "../theme.typ": *

// 第 343 页 (页边标注原英文版页码 263)

#par(first-line-indent: 0em)[视为一系列的印符操作，改变着符号排列模式；#marginnote[263] 也可以视为一系列算术运算，改变着数的量级。但有充足有力的理由使我们对算术的版本更感兴趣。跨出一个纯印符系统，再走入另一个同构的印符系统，这没有多大意思；而离开印符领域然后步入一个与之同构的数论的某个部分则会激发出未开发的潜力。这就像一个人前半生一直通晓乐谱，但只是用眼睛看而已——然后，忽然有一天，有人告诉了他声音与乐谱之间的映射。那将是怎样一个崭新而又丰富的世界！在这里，就好象一个人前半生一直都熟知符号串的样子，但只是那些串的形状而已，从不知意义何在——然后，忽然有一天，有人告诉了他事物与串之间的映射。这是怎样的一种启迪！哥德尔配数的发现被人们比作笛卡尔关于平面曲线与二元方程之间同构的那个发现：一旦你见到了，真是令人难以置信地简单——而一个崭新宽广的世界就这么展开了。]

不过，在我们跳到结论之前，你或许会愿意看看这个同构的较高层次的全貌是什么样。这也是个很好的练习。其思想在于使给出的各个算术规则与 #strong[WJU] 系统的每个印符规则在效果上没有差别。

下面是实现的方案之一。规则中的 #strong[m] 和 #strong[k] 是任意的自然数，#strong[n] 是小于 10#super[m] 的任何自然数。

#par(first-line-indent: 0em, hanging-indent: 2em)[规则1：若有了 10#strong[m]＋1，则还可以有 10×(10#strong[m]＋1)。]

#par(first-line-indent: 0em)[例子：从第 4 行到第 5 行。这时，#strong[m]＝30。]

#par(first-line-indent: 0em, hanging-indent: 2em)[规则 2：若有了 3×10#super[m]＋#strong[n]，则还可以有 10#super[m]×(3×10#super[m]＋#strong[n])＋#strong[n]。]

#par(first-line-indent: 0em)[例子：从第 1 行到第 2 行，这时 #strong[m] 与 #strong[n] 都是 1。]

#par(first-line-indent: 0em, hanging-indent: 2em)[规则 3：若有了 #strong[k]×10#super[m＋3]＋111×10#super[m]＋#strong[n]，则还可以有 #strong[k]×10#super[m＋1]＋#strong[n]。]

#par(first-line-indent: 0em)[例子：从第 3 行到第 4 行，这时 #strong[m] 与 #strong[n] 都是 1，而 #strong[k] 是 3。]

#par(first-line-indent: 0em, hanging-indent: 2em)[规则 4：若有了 #strong[k]×10(#strong[m]＋2)＋#strong[n]，则还可以有 #strong[k]×10(#strong[m])＋#strong[n]。]

#pagebreak(weak: true)
