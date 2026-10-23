#import "../theme.typ": *

由于绕原点旋转整圈后点的位置不变, 所以任何辐角的取值可以任意加上 $2 pi$ 或 $4 pi$ 以及 $-2 pi$ 等! 这解释了为什么辐角 $theta$ 有无穷多种选择. 一般我们选择介于 0 与 $2 pi$ 之间的辐角 (辐角主值). 而对于共轭复数 $overline(z)$ 相关的计算, $-theta$ 是非常有用的. 此外, $1 = e^0 = e^(2 pi i)$.

#subsec[幂与乘积: 极形式]

使用极形式计算 $(1 + i)^2$ 和 $(1 + i)^8$ 最为迅捷. 底数 $1 + i$ 的极形式中, $r = sqrt(2)$, $theta = pi/4$ (或 45°). $1 + i$ 的绝对值平方后, 得到 $r^2 = 2$, 而辐角加倍后得到 $2 theta = pi/2$ (或 90°), 这样就得到了 $(1 + i)^2$. 对于 $1 + i$ 的八次幂, 需要计算 $r^8$ 和 $8 theta$:

#dmath[$ (1 + i)^8 quad quad r^8 = 2 dot 2 dot 2 dot 2 = 16, quad 8 theta = 8 dot pi/4 = 2 pi. $]

这意味着 $(1 + i)^8$ 的绝对值为 16, 辐角为 $2 pi$. 因此 $(1 + i)^8 = 16$.

用极形式做复数的幂运算毫不费力, 做乘法运算也是如此.

#dingliC[#eqnum($ z = r(cos theta + i sin theta) "的" n "次幂为" z^n = r^n (cos n theta + i sin n theta) . $, 3)]

此情形下, $z$ 乘的是自身. 而当 $z$ 乘 $z'$ 时, 对应模长相乘以及辐角相加:

#eqnum($ r(cos theta + i sin theta) dot r'(cos theta' + i sin theta') = r r'(cos(theta + theta') + i sin(theta + theta')) . $, 4)

理解上述结论的一种方法是利用三角学. 为什么计算 $z^2$ 时辐角需要加倍成 $2 theta$? 直接展开,

#dmath[$ (cos theta + i sin theta)(cos theta + i sin theta) = cos^2 theta + i^2 sin^2 theta + 2 i sin theta cos theta. $]

根据二倍角公式可知, 上式实部 $cos^2 theta - sin^2 theta$ 为 $cos 2 theta$, 虚部 $2 sin theta cos theta$ 为 $sin 2 theta$. 由此, $z$ 的辐角 $theta$ 变为了 $z^2$ 的辐角 $2 theta$.

理解 $z^n$ 的计算规则 (即 (3) 式) 还有另一种方法. 它利用了本节中最令人惊叹的公式. 考虑 $cos theta + i sin theta$ 和 $e^(i theta)$ 的幂级数展开, $cos theta$ 可展开为 $theta$ 的偶数次幂的和, 其中前两项和为 $1 - 1/2 theta^2$; $sin theta$ 可展开为 $theta$ 的奇数次幂的和, 其中前两项和为 $theta - 1/6 theta^3$. 结合上述两个级数, 就得到一个关于 $e^(i theta)$ 与 $cos theta + i sin theta$ 的优美结论: 对

#dmath[$ e^(i theta) = 1 + i theta + 1/2 i^2 theta^2 + 1/6 i^3 theta^3 + dots.c, $]

由于 $i^2$ 等于 $-1$, 故上式右边第一、三项之和化为 $1 - 1/2 theta^2$. 依此类推, 复数 $e^(i theta)$ 等于 $cos theta + i sin theta$, 即有

#dingliC[#eqnumL([#hei[欧拉公式]], $ e^(i theta) = cos theta + i sin theta, "进而推出" z = r cos theta + i r sin theta = r e^(i theta) . $, 5)]

当 $theta$ 取特殊值 $2 pi$ 时, $cos 2 pi + i sin 2 pi$ 为 1, 那么无穷级数

#pagebreak()