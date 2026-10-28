#import "../theme.typ": *
// 第 342 页

#par(first-line-indent: 0em)[用两种记号写：]

#align(center)[#par(first-line-indent: 0em)[(1)#h(3em)WJ —— 公 理 —— 31]]
#align(center)[#par(first-line-indent: 0em)[(2)#h(3em)WJJ —— 规则 2 —— 311]]
#align(center)[#par(first-line-indent: 0em)[(3)#h(3em)WJJJJ —— 规则 2 —— 31111]]
#align(center)[#par(first-line-indent: 0em)[(4)#h(3em)WUJ —— 规则 3 —— 301]]
#align(center)[#par(first-line-indent: 0em)[(5)#h(3em)WUJU —— 规则 1 —— 3010]]
#align(center)[#par(first-line-indent: 0em)[(6)#h(3em)WUJUUJU —— 规则 2 —— 3010010]]
#align(center)[#par(first-line-indent: 0em)[(7)#h(3em)WUJJU —— 规则 4 —— 30110]]

#par(first-line-indent: 0em)[左边一列是使用我们已熟悉的四条印符规则而得到的。右边一列同样也可以当作是使用了一组类似的印符规则而生成的。不过右边的一列有种二重性。下面我来解释。]

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[#hei[从印符和算术两个角度看问题]]]]

我们可以说第五个串（"3010"）是从第四个来的，方法是在右边放上一个"0"；另一方面，我们同样也可以把这一转换看成是由于算术运算而导致的——确切地说就是乘以 10。当自然数按十进制写出时，乘以 10 和在右边放上一个 0 是没有差别的。我们可以利用这一点写出一条算术规则，与印符规则Ⅰ相对应：

#par(first-line-indent: 0em, hanging-indent: 2em)[算术规则Ⅰa：一个数的十进制展开的右侧如果以 1 结尾，则可乘以 10。]

我们可以不必指称十进制展开中的符号，而用算术方式来描述最右边的数字：

#par(first-line-indent: 0em, hanging-indent: 2em)[算术规则Ⅰb：一个数被 10 除时的余数如果是 1，则可乘以 10。]

我们可以仍是固守纯粹的印符规则格式，比如下面这个：

#par(first-line-indent: 0em, hanging-indent: 2em)[印符规则Ⅰ：从任何一个最右侧符号为"1"的约定理都可以得到一个新的定理，方法是在那个"1"右侧拼上一个"0"。]

#par(first-line-indent: 0em)[它们的效果是一样的。这就是为什么右边一列具有"二重性"：可以]

#pagebreak(weak: true)
