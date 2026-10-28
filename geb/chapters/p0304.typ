// 第 268 页 (源图 p0304)
#import "../theme.typ": *

楚，"数论"这个术语仅仅只涉及正整数和零（以及这样的整数的集合）的性质。这些数被称为自然数。负数在这个理论中没有位置。所以，当用到"数"这个词时，它仅只意味着自然数。下面这一点对读者来说是很重要的——极其重要的:在你心里始终要区别开我们的形式系统（TNT），和那个比较起来规定得不是那么明确，然而却是令人感到舒适的古老的数学分支，即数论本身。后者我将称之为"N"。

#par(first-line-indent: 0em)[#h(2em)N——即数论——中的一些典型的句子是:]

#par(first-line-indent: 0em)[#h(2em)（1）#h(9em)5 是素数。]
#par(first-line-indent: 0em)[#h(2em)（2）#h(7.5em)2 不是平方数。]
#par(first-line-indent: 0em)[#h(2em)（3）#h(5.5em)1729 是两个立方数的和。]
#par(first-line-indent: 0em)[#h(2em)（4）#h(0.5em)没有两个正立方数的和本身又是一个立方数。]
#par(first-line-indent: 0em)[#h(2em)（5）#h(6em)存在有无穷多个素数。]
#par(first-line-indent: 0em)[#h(2em)（6）#h(9em)5 是偶数。]

现在看起来，似乎对每一个诸如"是素数"或"是立方数"或"正的"这样的概念，我们都需要有一个符号——但是这些概念其实并非最基本的。例如，素数性是与一个数所具有的因子有关的，而这些因子又与乘法有关。立方性同样要通过乘法来定义。那么，就让我们来重新叙述一下这些句子，这回用那些看起来更为初等的概念。

#par(first-line-indent: 0em, hanging-indent: 4em)[#h(2em)（1'）不存在这样的数 a 和 b:它们都大于 1，而且 5 等于 a 乘 b。]
#par(first-line-indent: 0em, hanging-indent: 4em)[#h(2em)（2'）不存在一个数 b，使得 b 乘以 b 等于 2。]
#par(first-line-indent: 0em, hanging-indent: 4em)[#h(2em)（3'）存在数 b 和 c，使得:b 乘以 b 乘以 b，加上 c 乘以 c 乘以 c，等于 1729。]
#par(first-line-indent: 0em, hanging-indent: 4em)[#h(2em)（4'）对任何大于 0 的数 b 和 c，不存在数 a，使得 a 乘以 a 乘以 a 等于 b 乘以 b 乘以 b 加上 c 乘以 c 乘以 c。]
#pagebreak(weak: true)
