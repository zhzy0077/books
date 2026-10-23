#import "../theme.typ": *



#cont[的收敛性 (直接观察)，由定理 1 可推得积分]

#convergenceIntegralDisplay[$ integral_1^(+infinity) frac(abs(sin x), x^2) dif x $]

#cont[的收敛性，从而由定理 2 可推得积分]

#convergenceIntegralDisplay[$ integral_1^(+infinity) frac(sin x, x^2) dif x $]

#cont[的收敛性 (且同时又是绝对收敛的). 如果在定理 1 中选取不同的正的函数 (预先知道其积分收敛) 作为函数 $phi(x)$，则它可以给出一系列正的被积函数积分的直接的收敛性准则，而借助于定理 2 则可以对带任意符号的被积函数的收敛性建立相应的准则. 毫无疑问，这些准则中有一些你们已经熟悉，我们将不去谈论它们. 我们要研究两个不广为人知的更为精细的准则，因为其中讲到的积分可能不是绝对收敛的 (顺便说一下，由此看出这些准则不可能从定理 1) 中导出).]

#leadLabel[准则 I]设函数 $phi(x)$ 单调且 $limits(lim)_(x -> infinity) phi(x) = 0$，函数 $f(x)$ 使得 $display(integral_a^x) f(u) dif u = F(x)$ 当 $x -> infinity$ 时是有界的. 此时积分

#convergenceIntegralDisplay[#eqnum(13)[$ integral_a^(+infinity) phi(x) f(x) dif x $]]

#cont[收敛.]

实际上，由第二中值定理，当 $a < b_1 < b_2 < +infinity$ 时，区间 $(b_1, b_2)$ 有内点 $beta$，使得

#convergenceIntegralDisplay[#bottomNumberedEquation("A")[$ integral_(b_1)^(b_2) phi(x) f(x) dif x \
  & = phi(b_1 + 0) integral_(b_1)^beta f(x) dif x + phi(b_2 - 0) integral_beta^(b_2) f(x) dif x \
  & = phi(b_1 + 0)[F(beta) - F(b_1)] + phi(b_2 - 0)[F(b_2) - F(beta)]. $]]

因为当 $b_1 -> infinity, b_2 -> infinity$ 时，由定理的条件，$phi(b_1 + 0)$ 和 $phi(b_2 - 0)$ 趋近于零，同时我们所遇到的函数 $F(x)$ 的所有的值都有界，所以上式的右边趋近于零，从而左边此时也趋近于零，由柯西准则，积分 (13) 的收敛性得证.

#leadLabel[例]积分

#convergenceIntegralDisplay[#eqnum(14)[$ integral_1^(+infinity) frac(sin x, x) dif x $]]

#cont[收敛，这可直接从准则 1 推得，只要令 $phi(x) = x^(-1), f(x) = sin x, F(x) = cos 1 - cos x$ 即可. 但是可以很容易地证明积分 (14) 不是绝对收敛.]

#leadLabel[准则 II]如果函数 $phi(x)$ 单调且有界，则从积分 (12) 的收敛性可得积分 (13) 的收敛性.

#pagebreak(weak: true)
