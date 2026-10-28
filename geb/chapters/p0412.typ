#import "../theme.typ": *

// 第 376 页

令的"指针"部分就是存储器中某个字(或某些字)的地址的数字化表示。对于指针是没有限制的, 因此一条指令甚至可以"指向"它自己, 这样当它被执行时, 将造成对自身的某些修改。

在任一给定时刻, 计算机怎样才能知道该执行什么指令呢?这记录在 CPU 里。有一个特殊的指针, 指向要被解释成指令的下一个字(即存储着它的地址)。CPU 把那个字从存储器中提取出来, 通过电子手段把它复制到属于 CPU 自身的一个特殊的字中(CPU 中的字通常不叫"字", 而叫"寄存器")。然后 CPU 就执行这条指令。这条指令可以要求完成任意一种类型的操作。典型的操作包括:

#par(first-line-indent: 2em)[ADD\[加\]: 把指令中所指出的字加到一个寄存器上。]
#pad(left: 6em)[#par(first-line-indent: 0em, hanging-indent: 2em)[（在这种情况下, 所指出的字显然被解释成一个数字。）]]

#par(first-line-indent: 2em)[PRINT\[打印\]: 把指令所指出的字作为字母打印出来。]
#pad(left: 6em)[#par(first-line-indent: 0em, hanging-indent: 2em)[（在这种情况下, 这个字显然不是解释成一个数字, 而是解释成一串字母。）]]

#par(first-line-indent: 2em)[JUMP\[转移\]: 转移到指令中所指出的字。]
#pad(left: 6em)[#par(first-line-indent: 0em, hanging-indent: 2em)[（在这种情况下, 告诉 CPU 把那个特定的字解释成它的下一条指令。）]]

除非指令明确要求其它作法, 否则 CPU 将取出下一个字, 并把它解释成指令。换句话说, CPU 假定自己应当象个邮递员那样, 沿着"大街"走下去, 依次把一个个字解释成指令。但是这种顺序工作方式可以被象 JUMP(转移)这样的指令所打破, 还有一些指令也有这种效果。

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[#hei[机器语言之别于汇编语言]]]]

上面所说的只是"机器语言"的一个粗略框架。在这种语言

#pagebreak(weak: true)
