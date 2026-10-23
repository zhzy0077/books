#import "../theme.typ": *

#hei[7.] (4) 式给出了 $S^2$ (样本方差) 的第二种等价形式:

$ S^2 = 1/(N-1) sum_(i=1)^N (x_i - m)^2 = 1/(N-1) [sum_(i=1)^N x_i^2 - N m^2]. $

请验证方差 $sigma^2$ 的等价形式 (利用 $m = sum_(i=1)^N p_i x_i$):

$ sigma^2 = sum_(i=1)^N p_i (x_i - m)^2 = sum_(i=1)^N p_i x_i^2 - m^2. $

#hei[8.] 若来自人群的全部 24 个样本都有相同的年龄 $x = 20$, 请问样本均值 $mu$ 和样本方差 $S^2$ 是什么? 若 $x = 20$ 或 21, 且各有 12 个, 对应的结果是什么?

#hei[9.] 仿照 “$N$ 次抛硬币以及 $N -> infinity$” 中的数值实验: 计算一百万次随机 0-1 采样的平均值 $A_(1 000 000)$. $X = 1/(2 sqrt(N)) (A_N - 1/2)$ 是什么?

#hei[10.] 在 $N$ 次抛硬币试验中, 正面出现 $i$ 次的概率 $p_i$ 是二项式系数 $b_i = C_N^i$ 除以 $2^N$. 各 $b_i$ 相加得 $(1 + 1)^N = 2^N$, 因此各概率 $p_i$ 相加得 1:

$ p_0 + p_1 + dots.c + p_N = (1/2 + 1/2)^N = 1/2^N (b_0 + b_1 + dots.c + b_N), $

其中 $b_i = N!/(i!(N-i)!)$. 当 $N = 4$ 时,

$ b_0 = 24/24, quad b_1 = 24/(1 times 6) = 4, quad b_2 = 24/(2 times 2) = 6, $

$ (p_0, p_1, p_2, p_3, p_4) = 1/16 (1, 4, 6, 4, 1). $

注意, $b_i = b_(N-i)$. 问题: 请验证均值 $m = 0 dot p_0 + 1 dot p_1 + dots.c + N dot p_N$ 等于 $N/2$.

#hei[11.] 对任意函数 $f(x)$, 随机变量 $f(x)$ 的期望值是

$ "E"[f(x)] = sum_(i=1)^N p_i f(x_i) quad "或" quad integral_(-infinity)^(+infinity) p(x) f(x) dif x $

(分别对应离散型分布和连续型分布). 设随机变量 $X$ 的均值是 $"E"[X] = m$, 方差是 $"E"[(X - m)^2] = sigma^2$, 请计算 $"E"[X^2]$.

#hei[12.] 证明标准正态分布的概率密度 $p(x)$ 满足 $integral p(x) dif x = 1$. 一个著名的技巧是将 $integral p(x) dif x$ 与 $integral p(y) dif y$ 相乘, 并计算 $p(x) p(y)$ 在 $(-infinity, +infinity) times (-infinity, +infinity)$ 上

#pagebreak()