#import "../theme.typ": *

// 连续推导步骤使用主题 derivationStep；间距仍待源图视觉审核。

#derivationStep[$ phi (x) y'^* + phi'(x) y^* + f_1 (x) phi (x) y^* + f_2 (x) = 0, $]

#cont[或者]

#derivationStep[$ phi (x) y'^* + f_2 (x) = 0, $]

#cont[因为由方程 (16)，]

#derivationStep[$ phi'(x) + f_1 (x) phi (x) = 0. $]

#cont[由此得]

#derivationStep[$ y'^* = - frac(f_2 (x), phi (x)) = - f_2 (x) e^(integral_(x_0)^x f_1 (u) dif u), $]

#cont[因而有]

#derivationStep[$ y^* = - integral_(x_0)^x f_2 (v) e^(integral_(x_0)^v f_1 (u) dif u) dif v + C, $]

#cont[其中 $C$ 是积分常数. 最后得]

#derivationStep[$ y = phi (x) y^* = - e^(-integral_(x_0)^x f_1 (u) dif u) { integral_(x_0)^x f_2 (v) e^(integral_(x_0)^v f_1 (u) dif u) dif v + C }. $]

#cont[这是方程 (15) 的通解，从中以适当的方式选择常数 $C$ 就可得到其所有特解. 例如，如果我们想要当 $x = x_0$ 时有 $y = y_0$，那么从通解中得到 $y_0 = -C$，于是所求的特解的形状是]

#eqnum(18)[$ y = e^(-integral_(x_0)^x f_1 (u) dif u) { y_0 - integral_(x_0)^x f_2 (v) e^(integral_(x_0)^v f_1 (u) dif u) dif v }. $]

这样我们看到，求解方程 (15)，通过适当选择未知函数的变换化为依次求积分两次. 作为例子，我们继续本讲开始研究的问题的求解.

我们在那里得到的方程是

#derivationStep[$ (dif y)/(dif t) + frac(b, a) y - frac(b c, a) e^(-frac(b, a) t) = 0, $]

很显然，它是 (15) 那种类型的方程. 在这里 $f_1 (t) = #ifrac($b$, $a$)$ 且 $f_2 (t) = -#ifrac($b c$, $a$) e^(-frac(b, a) t)$. 此外有 $t_0 = 0$ 时 $y_0 = 0$，因为在时刻 $t = 0$ 时第二个容器完全不含盐. 我们有 $integral_0^t f_1 (u) dif u = #ifrac($b$, $a$) t$，于是公式 (18) 给出

#eqnum(19)[$ y = e^(-frac(b, a) t) { 0 + integral_0^t frac(b c, a) e^(-frac(b, a) v) e^(frac(b, a) v) dif v } = frac(b c, a) t e^(-frac(b, a) t). $]

此式完全解答了所提出的问题. 研究所得到的函数，我们容易发现：第二个容器中盐的数量一开始是增加的，然后从时刻 $t = #ifrac($a$, $b$)$ 起开始减少且当 $t -> infinity$ 时趋近于零. 在时刻 $t = #ifrac($a$, $b$)$ 时此容器中盐的数量最大，这个数量等于 #ifrac($c$, $e$)#(".") 重要的是，这个最大的数量既与 $a$ 无关，也与 $b$ 无关. 相反地，第二个容器内盐达到最大含量所需的时间与 $a$ 和 $b$ 有关，但却与 $c$ 无关. 研究函数 (19) 就能得到所有这一切，以及这个现象的其他整体特性. 我们看到解微分方程，在此实际上使我们得到关于整个过程

#pagebreak(weak: true)
