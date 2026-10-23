#import "../theme.typ": *

图 12.1 绘出 $F(x)$ 和它的导函数 $p(x)$ (概率密度) 的图形.

#figure(image("../assets/fig-p587-a.png", width: 88%), numbering: none, caption: [图 12.1　$F(x)$ 是分布函数且它的导函数 $p(x) = (dif F)/(dif x)$ 是概率密度. 对该均匀分布, $p(x)$ 在 $x in [17, 20]$ 时是常数. $p(x)$ 图形下方与 $x$ 轴之间的区域面积是 $F = 1$.])

$p(x) dif x$ 可看成一个样本落入区间 $(x, x + dif x)$ 的概率, 这是 “无穷小事件”: $p(x) dif x$ 就是 $F(x + dif x) - F(x)$. 以下就是相关结论:

#eqnum($ "事件" {a < X <= b} "发生的概率为" integral_a^b p(x) dif x = F(b) - F(a). $, 6)

$F(b)$ 是事件 $\{X <= b\}$ 发生的概率. 减去 $F(a)$ 之后可保持 $x > a$, 因此留下了 $a < X <= b$#footnote[译者注: 翻译 (6) 式和本行时, 按照 $F(x)$ 的定义, 将原文不等号中 $X = a$ 的情形去掉了.].

#subsec[$p(x)$ 的均值与方差]

一个概率分布的均值 $m$ 和方差 $sigma^2$ 是什么呢? 对离散型分布, 将 $p_i x_i$ 累加得到均值 (数学期望); 对连续型分布, 则将 $x p(x)$ 积分:

#dmath[$ "均值" quad m = "E"[X] = integral x p(x) dif x = integral_17^20 x dot 1/3 dif x = 18.5. $]

对这个均匀分布, 均值 $m$ 是 17 到 20 的中点值, 则随机变量 $X$ 不超过中点 $m = 18.5$ 的概率是 $F(m) = 1/2$.

在 MATLAB 中, X=rand(1) 等可能地选择 0 到 1 之间的一个随机数字, 则数学期望是 $m = 1/2$. 随机变量 $X$ 落入区间 $[0, x]$ 的概率是 $F(x) = x$, 随机变量 $X$ 不超过均值 $m$ 的概率始终是 $F(m) = 1/2$.

方差是随机变量 $X$ 与均值距离平方的平均值. 对离散型分布, $sigma^2$ 是所有 $p_i (x_i - m)^2$ 之和; 对连续型分布, 求和变成了积分.

#eqnum($ "方差" quad sigma^2 = "E"[(X - m)^2] = integral p(x) (x - m)^2 dif x. $, 7)

#pagebreak()