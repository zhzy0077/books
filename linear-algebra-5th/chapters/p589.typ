#import "../theme.typ": *

因为计算均值是对一个奇函数积分, 所以很容易得到均值为零: 将 $x$ 换为 $-x$ 可得 $m = -m$, 所以积分结果一定是 $m = 0$.

另外两个积分值为 1 需要用到习题 12 中的思想来计算. 图 12.2 是正态分布 $N(0, sigma)$ 的密度函数 $p(x)$ (见 (10) 式) 以及对 $p(x)$ 积分所得分布函数 $F(x)$ 的图形. 从 $p(x)$ 的对称性可以看出均值为零. 从 $F(x)$ 可得到一个重要且实用的估计式 (可用于分析民意调查结果):

服从正态分布 $N(0, sigma)$ 的随机变量 $X$ 取值落入 $-sigma$ 和 $sigma$ 之间的概率是 $F(sigma) - F(-sigma) approx 2/3$, 这是因为

#dmath[$ integral_(-sigma)^sigma p(x) dif x = integral_(-infinity)^sigma p(x) dif x - integral_(-infinity)^(-sigma) p(x) dif x = F(sigma) - F(-sigma). $]

同理, 该随机变量 $X$ 取值落入 $-2 sigma$ 和 $2 sigma$ 之间 (“与均值距离小于两个标准差”) 的概率是 $F(2 sigma) - F(-2 sigma) approx 0.95$. 若一个试验结果与均值之间距离大于 $2 sigma$, 几乎可以确定这不是偶然发生的: 该事件发生的可能性是 0.05. 药物测试会要求更严格的确定性, 比如限制发生的概率为 0.001. 寻找希格斯 (Higgs) 玻色子需使用远离纯偶然性的 $5 sigma$ 超严格测试.

#figure(image("../assets/fig-p589-a.png", width: 88%), numbering: none, caption: [图 12.2　标准正态分布具有均值 $m = 0$ 和标准差 $sigma = 1$.])

具有任意均值 $m$ 和标准差 $sigma$ 的正态分布 $N(m, sigma)$ 可通过平移和伸缩变换来与标准正态分布 $N(0, 1)$ 建立联系, 即将 $x$ 平移到 $x - m$, 并将 $x - m$ 伸缩为 $(x - m)/sigma$. 正态分布 $N(m, sigma)$ 的概率密度为

#eqnum($ p(x) = 1/(sigma sqrt(2 pi)) e^(-(x - m)^2 slash (2 sigma^2)) . $, 10)

$p(x)$ 的积分是 $F(x)$——一个随机样本 $X$ 取值不超过 $x$ 的概率, 微分 $p(x) dif x = F(x + dif x) - F(x)$ 是一个随机样本 $X$ 取值落入区间 $(x, x + dif x]$ 的概率. 计算 $e^(-x^2 slash 2)$ 的积分没有简单公式, 因此分布函数 $F(x)$ 的值被仔细计算并制成了表格.

#subsec[$N$ 次抛硬币以及 $N -> infinity$]

例 2 设随机变量 $X$ 取 1 和取 $-1$ 的概率相等, 即 $p_1 = p_(-1) = 1/2$#footnote[译者注: 作者将随机变量的取值写成下标.], 则

#pagebreak()