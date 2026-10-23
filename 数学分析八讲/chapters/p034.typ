#import "../theme.typ": *

// 上极限/下极限符号: 横线只覆于 lim 字面, 下标 x -> a 排在 lim 下方.
#let uplim = math.op($overline(lim)$, limits: true)
#let lolim = math.op($underline(lim)$, limits: true)

#dmath[$ uplim_(x -> a) f(x) quad "及" quad lolim_(x -> a) f(x), $]

#cont[或者]

#dmath[$ limits(lim)_(x -> a) sup f(x) quad "及" quad limits(lim)_(x -> a) inf f(x). $]

显然, 总有

#dmath[$ limits(lim)_(x -> a) sup f(x) gt.eq.slant limits(lim)_(x -> a) inf f(x). $]

此外, 这两个数可以取任何值, 同时其中的每一个或者二者都可以是符号 $+oo$ 或 $-oo$. 当 $x -> a$ 时, 如果当 $x -> a$ 时其上极限和下极限都是数, 则量 $y$ 称为有界的; 如果两者中哪怕有一个取符号 $+oo$ 或者 $-oo$, 则称其为无界的. 很显然, 当 $x -> a$ 时量 $y$ 的有界性意味着存在数 $alpha$ 和 $beta$ 以及数 $a$ 的邻域 $U$, 使得对任何 $x in U$, 都有

#dmath[$ alpha < f(x) < beta. $]

要使 $limits(lim)_(x -> a) y$ 存在 (数或者符号), 当且仅当有关系:

#dmath[$ uplim_(x -> a) y = lolim_(x -> a) y, $]

#cont[因为上、下极限重合等价于部分极限的唯一性.]

介于 $limits(lim)_(x -> a) y$ 以及 $limits(uplim)_(x -> a) y$ 之间的数, 可以是也可以不是量 $y$ 当 $x -> a$ 时的部分极限. 我们前面已经见过了两个这样的极端例子: 1) 介于这两个数中的任何一个数都不是部分极限; 2) 反之, 介于其中的每一个数都是部分极限. 一般说来它们之间有一些数是部分极限, 而另一些则不是.

有时上极限和下极限是以其他形式来定义的. 这些其他的定义方法不仅对于拓广和具体化这些概念本身有益, 而且对其应用也有益. 数(或符号)$b$ 称作当 $x -> a$ 时量 $y = f(x)$ 的上极限, 如果对于任意的数 $alpha$ 和 $beta$(或者符号)($alpha < b < beta$), 都可以找到数 $a$(或符号)的这样小#footnote[如果 $a$ 是一个符号, 例如 $a = +oo$, 则 “这样小” 的邻域 $U$ 应理解为可以找到一个数 (可能是很大的) $M$, 使得其中有 $x > M(x != a)$. —— 译者注]的一个邻域 $U$, 它包含使得 $alpha lt.eq.slant y lt.eq.slant beta$ 的数 $x(x != a)$, 但不包含使得 $y > beta$ 的数 $x(x != a)$.

要想证明新定义等价于前面的定义, 首先注意到, 若数或符号 $b$ 依照新定义是量 $y$ 的上极限, 则 $b$ 很显然是这个量的部分极限. 若还存在着部分极限 $b' > b$, 则我们可以找到数 $alpha, beta, alpha', beta'$ 使得

#dmath[$ alpha < b < beta < alpha' < b' < beta'. $]

同时, 因为 $b'$ 是部分极限, 则数 $a$(或符号)的任何邻域 $U$ 应当包含使得 $alpha' < y < beta'$ 的数 $x$, 由此得 $y > beta$. 但很显然这与 $b$ 依照新定义是上极限这一事实相矛盾.

反之, 我们现在设 $b$ 是量 $y$ 当 $x -> a$ 时的最大部分极限, 若 $alpha < b < beta$, 则数(或符号)$a$ 的任何邻域 $U$ 就包含使得 $alpha < y < beta$ 的数 $x$(依照部分极限的定义). 要

#pagebreak(weak: true)
