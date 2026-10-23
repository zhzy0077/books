#import "../theme.typ": *

$ e^(2 pi i) = 1 + 2 pi i + 1/2 (2 pi i)^2 + dots.c = 1. $

现在计算 $e^(i theta)$ 乘 $e^(i theta')$. 基于 “同底幂相乘, 指数相加”, 可得辐角也相加 (图 9.2(a)):

#dmath[$ e^2 dot e^3 = e^5, quad quad e^(i theta) dot e^(i theta) = e^(2 i theta), quad quad quad e^(i theta) dot e^(i theta') = e^(i(theta + theta')). $]

幂 $(r e^(i theta))^n$ 等于 $r^n e^(i n theta)$. 当 $r = 1$ 时, $r^n = 1$, 此时这些幂仍在单位圆上. 那么可以找到 $n$ 个不同复数, 它们的 $n$ 次幂均为 1:

#yaodian[令 $w = e^(2 pi i slash n)$, 则 $1, w, w^2, dots.c, w^(n - 1)$ 的 $n$ 次幂均为 1.]

它们就是 “1 的 $n$ 次方根”, 也是方程 $z^n = 1$ 的解. 如图 9.2(b) 所示, 整个圆周被 $n$ 等分, 这些 $n$ 次方根等距地分布于单位圆周上. 它们的辐角乘 $n$, 得到 $n$ 次幂, 即 $w^n = e^(2 pi i) = 1$, $(w^2)^n = e^(4 pi i) = 1, dots.c$, 所以每个 $n$ 次方根的 $n$ 次幂相当于沿着单位圆旋转到 1.

上述 1 的 $n$ 个 $n$ 次方根对于信号处理至关重要. 离散傅里叶变换将用到 $w = e^(2 pi i slash n)$ 及其幂. 第 9.3 节将展示如何利用快速傅里叶变换将一个向量 (信号) 分解为 $n$ 个频率.

#figure(
  image("../assets/fig-p474-a.png", width: 82%),
  caption: [图 9.2  (a) $e^(i theta)$ 乘 $e^(i theta')$ 为 $e^(i(theta + theta'))$; (b) $e^(2 pi i slash n)$ 的 $n$ 次幂为 $e^(2 pi i) = 1$ (取 $n = 6$).],
  numbering: none,
)

#align(center, barHead[■ 要点回顾])

#hei[1.] $a + i b$ 与 $c + i d$ 相加如同 $(a, b)$ 与 $(c, d)$ 相加, 做乘法时注意 $i^2 = -1$.

#hei[2.] $z = a + b i = r e^(i theta)$ 的共轭为 $overline(z) = z^* = a - b i = r e^(-i theta)$.

#hei[3.] $z$ 乘 $overline(z)$ 就是 $r e^(i theta)$ 乘 $r e^(-i theta)$, 结果为 $r^2 = abs(z)^2 = a^2 + b^2$ (实数).

#hei[4.] 用极形式 $z = r e^(i theta)$ 处理复数的幂和乘积十分便捷, 只要模长相乘以及辐角相加即可.

#pagebreak()