#import "../theme.typ": *

当年龄 $X$ 服从区间 $[17, 20]$ 上的均匀分布时, 积分区间可转换为 $[0, 3]$:

#dmath[$ sigma^2 = integral_17^20 1/3 (x - 18.5)^2 dif x = integral_0^3 1/3 (x - 1.5)^2 dif x $]

#dmath[$ = 1/9 (x - 1.5)^3 |_(x=0)^(x=3) = 2/9 dot (1.5)^3 = 3/4. $]

以上例子是均匀分布的一个典型案例. 以下是区间 $[0, a]$ 上均匀分布及概率密度 $p(x)$ 的完整描述.

#dingli[
  区间 $[0, a]$ 上的均匀分布: 密度函数 $p(x) = 1/a$, 分布函数 $F(x) = x/a$,

  #eqnum($ "均值" m = a/2 "为中点值," quad "方差" sigma^2 = integral_0^a 1/a (x - a/2)^2 dif x = a^2/12. $, 8)
]

均值是 $a$ 的倍数, 方差是 $a^2$ 的倍数. 当 $a = 3$ 时, $sigma^2 = 9/12 = 3/4$.

而 0 到 1 之间 ($a = 1$) 的随机数 (均值为 $1/2$) 的方差是 $sigma^2 = 1/12$.

#subsec[正态分布: 钟形曲线]

正态分布也称为高斯分布, 是所有概率密度 $p(x)$ 中最重要的一种类型. 正态分布的超级重要性源于独立重复试验以及试验结果的平均值, 这些试验有各自的分布 (比如抛硬币出现正面和反面), 而多次重复后的平均值近似服从正态分布.

#dingli[
  中心极限定理 (非正式表述) “任意” 概率分布中 $N$ 个样本的平均值在 $N -> infinity$ 时近似服从正态分布.
]

下面介绍 “标准正态分布”. 标准正态分布的概率密度关于 $x = 0$ 对称, 因此均值是 $m = 0$, 且适当调整概率密度系数使方差为标准方差 $sigma^2 = 1$, 记为 $N(0, 1)$.

#eqnumL([#hei[标准正态分布的概率密度]], $ p(x) = 1/sqrt(2 pi) e^(-x^2 slash 2) . $, 9)

$p(x)$ 的图形是如图 12.2 所示的钟形曲线. 标准正态分布的主要特征有

#dmath[$ "总概率为" 1 quad integral_(-infinity)^(+infinity) p(x) dif x = 1/sqrt(2 pi) integral_(-infinity)^(+infinity) e^(-x^2 slash 2) dif x = 1, $]

#dmath[$ "均值" "E"[X] = 0 quad m = 1/sqrt(2 pi) integral_(-infinity)^(+infinity) x e^(-x^2 slash 2) dif x = 0, $]

#dmath[$ "方差" "E"[X^2] = 1 quad sigma^2 = 1/sqrt(2 pi) integral_(-infinity)^(+infinity) (x - 0)^2 e^(-x^2 slash 2) dif x = 1. $]

#pagebreak()