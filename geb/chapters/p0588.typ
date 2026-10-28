#import "../theme.typ": *

// 第 552 页 (源图 p0588)；页边 "415"/"416" 为原书页码，用 #marginnote 转录

（警告：哥德巴赫性质是原始递归的，但这一事实并没有使“是否所有的数都具有哥德巴赫性质？”成为一个简单的问题——远非如此！）

== 推荐的练习题 #marginnote[415]

你能写一个类似的过程来测试乌龟性质（或阿基里斯性质）是否存在吗？如果能，就请写出来。如果不能，是仅仅因为你不知道上界，还是因为在 BlooP 中刻画这样的算法时遇到了根本性的障碍？如果对在对话中提出的“妙极性”性质提同样的问题，会得出什么答案？

下面我将列出一些函数和性质，你最好花一些时间来确定你是否相信它们是原始递归的（即可用 BlooP 编程序）。这意味着你必须认真考虑它们所要求的计算中包含哪些操作，以及是否能给出其中涉及的全部循环的项。

FACTORIAL\[N\]=N!（N 的阶乘）

#block(inset: (left: 2em))[（例如：FACTORIAL\[4\]=24）]

REMAINDER\[M\,N\]=用 N 除 M 所得的余数

#block(inset: (left: 2em))[（例如：REMAINDER\[24\,7\]=3）]

PI—DIGIT\[N\]=π 在小数点后的第 N 位数字

#block(inset: (left: 2em))[（例如：PI—DIGIT\[1\]=1，]

#block(inset: (left: 4em))[PI—DIGIT\[2\]=4，]

#block(inset: (left: 4em))[PI—DIGIT\[1000000\]=1）#marginnote[416]]

FIBO\[N\]=斐波那契数列的第 N 项

#block(inset: (left: 2em))[（例如：FIBO\[9\]=34）]

PRIME—BEYOND\[N\]=大于 N 的最小素数

#block(inset: (left: 2em))[（例如：PRIME—BEYOND\[33\]=37）]

PERFECT\[N\]=第 N 个“完全”数（一个数的所有约数之和等于

#pagebreak(weak: true)
