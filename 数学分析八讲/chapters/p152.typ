#import "../theme.typ": *

// 本页源图为密集推导页: 多个展示积分与正文之间只留约 7pt, 用主题的
// 密集展示式类别统一控制; 积分保持源图显示大小, 不缩成行内小积分.
#tightDisplay[
#cont[最后注意到]

#align(center)[$cos r(x - alpha) = cos r alpha cos r x + sin r alpha sin r x,$]

#cont[很显然我们得到表达式]

#dmath[$ T_n (x) = frac(alpha_0, 2) + sum_(r=0)^n (alpha_r cos r x + beta_r sin r x), $]

#cont[其中 $alpha_r, beta_r$ 是常系数．这也就是说，函数 $T_n (x)$ 对任何 $n$ 都是三角多项式，因此]

#eqnum(12)[$ integral_(-pi)^pi f(x) T_n (x) dif x = 0 quad (n = 1, 2, dots.c). $]

我们从另一方面想一下，对于很大的 $n$，函数 $T_n (x)$ 的性状的基本特点如何．因为函数 #ifrac($1 + cos(x - alpha)$, $2$) 在区间 $[-pi, pi]$ 上很显然介于 0 和 1 之间，同时它仅当 $x = alpha$ 时才等于 1，则当 $n$ 很大时量 $T_n (x)$ 非负，当 $x = alpha$ 时等于 1 且对一切离 $alpha$ 稍有距离的任何位置都小得微不足道．换言之，它的变动和本讲中图 33 所描述的那类图形是同一类型的，只有一点区别，即需将区间 $[-1, 1]$ 代之以区间 $[-pi, pi]$, 最大值的位置 $x = 0$ 代之以点 $x = alpha$.#footnote[把这里的证明与证明魏尔斯特拉斯定理的方法相比较，就能知道，它们用的都是同样的技巧，只不过 $(1 - u^2)^n$ 换成了 $[#ifrac($1 + cos(x - alpha)$, $2$)]^n$．—— 译者注]

由此我们下一步讨论的计划已经明朗．因为当 $n$ 的值很大时函数 $T_n (x)$ 在区间 $[alpha - delta, alpha + delta]$ 之外变得微不足道地小，故积分 (12) 的相应部分也是微不足道地小，因此其符号取决于积分

#eqnum(13)[$ integral_(alpha - delta)^(alpha + delta) f(x) T_n (x) dif x $]

#cont[的符号，而因积分号下的 $T_n (x) > 0$ 以及 $f(x) > c$，则只需证明：积分 (12) 中被我们抛开的这部分按绝对值来讲是比正的积分 (13) 要小得多，因此积分 (12) 就不可能等于零，这也就导致了矛盾．我们现在进行必要的估计．设]

#dmath[$ integral_(alpha - delta)^(alpha + delta) f(x) T_n (x) dif x = I_1, \
  { integral_(-pi)^(alpha - delta) + integral_(alpha + delta)^pi } f(x) T_n (x) dif x = I_2, $]

#cont[因此]

#dmath[$ 0 = integral_(-pi)^pi f(x) T_n (x) dif x = I_1 + I_2. $]

#cont[注意到等式 #ifrac($1 + cos(x - alpha)$, $2$) $= cos^2$ #ifrac($x - alpha$, $2$)，我们得到]

#dmath[$ I_1 gt.eq.slant c integral_(alpha - delta)^(alpha + delta) cos^(2 n) frac(x - alpha, 2) dif x = c integral_(-delta)^delta cos^(2 n) frac(y, 2) dif y $]
]

#pagebreak(weak: true)
