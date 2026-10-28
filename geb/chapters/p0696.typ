#import "../theme.typ": *

== 一个自复制的程序

"抠摁化"概念以及它在制造自指过程中的用处，对话中已经解释了，所以这里用不着再细讲。我们还是来说明一下计算机程序如何能利用完全相同的技巧复制它自己。下面的自复制程序是用一种类似 BlooP 的语言写出的，用于在一句话之后引用它自己（这与抠摁化次序相反，所以我把"抠摁"倒过来写成"摁抠"）：

DEFINE PROCEDURE "ENIUQ" \[TEMPLATE\]: PRINT \[TEMPLATE, LEFT - BRACKET, QUOTE - MARK, TEMPLATE, QUOTE - MARK, RIGHT - BRACKET, PERIOD\].

定义过程"摁抠"\[模板\]：打印\[模板，左括号，单引号，模板，单引号，右括号，句号\]。

ENIUQ

#block(inset: (left: 2em))[
\[ 'DEFINE PROCEDURE "ENIUQ" \[TEMPLATE\]: PRINT \[TEMPLATE, LEFT - BRACKET, QUOTE - MARK, TEMPLATE, QUOTE - MARK, RIGHT - BRACKET, PERIOD\]. ENIUQ' \].
]

摁抠

#block(inset: (left: 2em))[
\[ '定义过程"摁抠"\[模板\]：打印\[模板，左括号，单引号，模板，单引号，右括号，句号\]。摁抠' \]。
]

"ENIUQ"是前三行的程序所定义的一个过程，它的输入称作"TEMPLATE\[模板\]"。这个过程的意思是：调用这个过程时，TEMPLATE 的值是某一串印刷字符，ENIUQ 的结果是执行一项打印操作，其中要把 TEMPLATE 打印两次：第一次只打印它，第二次在外面加上引号和括号，最后还要缀上一个句号。这样，如果 TEMPLATE 的值是符号串 DOUBLE—BUBBLE（意为"两个泡泡"），执行 ENIUQ，就得到

#pagebreak(weak: true)