#import "../theme.typ": *

#denseSpreadDmath[$ P_n (x) = frac(1, I_n) integral_0^1 f(v) {1 - (v - x)^2}^n dif v $]

#cont[作为 $x$ 的函数来研究，$P_n (x)$ 很显然是 $2n$ 次多项式 (因为被积函数是这样的多项式). 用 $v = x + u$ 来作积分变量变换，我们得到]

#denseSpreadDmath[$ P_n (x) = frac(1, I_n) integral_(-x)^(1-x) f(u + x)(1 - u^2)^n dif u. $]

#cont[设 $0 < alpha < beta < 1$ 且 $alpha <= x <= beta$. 此时]

#denseSpreadDmath[$ -x <= -alpha < 0 < 1 - beta <= 1 - x. $]

#cont[因此如果 $n$ 充分大，使得 $n^(negScriptFrac(1, 3))$ 不大于数 $alpha$ 与 $1 - beta$ 中较小的一个，即 $n^(negScriptFrac(1, 3)) <=$ $min{alpha, 1 - beta}$，则有]

#denseSpreadDmath[$ -x < -n^(negScriptFrac(1, 3)) < n^(negScriptFrac(1, 3)) < 1 - x quad (alpha <= x <= beta). $]

#cont[由此，可以把 $P_n (x)$ 的积分写成]

#denseSpreadDmath[$ integral_(-x)^(1-x) = integral_(-x)^(-n^(negScriptFrac(1, 3))) + integral_(-n^(negScriptFrac(1, 3)))^(n^(negScriptFrac(1, 3))) + integral_(n^(negScriptFrac(1, 3)))^(1-x). $]

#cont[但若以 $M$ 来表示函数 $abs(f(x))$ 在区间 $[0, 1]$ 上的最大值，很显然我们有]

#denseSpreadDmath[$ &frac(1, I_n) abs({ integral_(-x)^(-n^(negScriptFrac(1, 3))) + integral_(n^(negScriptFrac(1, 3)))^(1-x) } f(u + x)(1 - u^2)^n dif u) \
  &<= frac(M, I_n) { integral_(-1)^(-n^(negScriptFrac(1, 3))) + integral_(n^(negScriptFrac(1, 3)))^1 } (1 - u^2)^n dif u = frac(M L_n, I_n) -> 0, $]

#cont[这是令 $n -> oo$ 时由上面证明的引理得到的. 这里由于 $wideFrac(M L_n, I_n)$ 与 $x$ 无关，故该式的左边当 $n -> oo$ 时在全区间 $[alpha, beta]$ 上关于 $x$ 一致地趋势近于零. 设]

#denseSpreadDmath[$ frac(1, I_n) { integral_(-x)^(-n^(negScriptFrac(1, 3))) + integral_(n^(negScriptFrac(1, 3)))^(1-x) } f(u + x)(1 - u^2)^n dif u = R_n (x), $]

#cont[这样一来就有]

#denseSpreadDmath[$ P_n (x) = frac(1, I_n) integral_(-n^(negScriptFrac(1, 3)))^(n^(negScriptFrac(1, 3))) f(u + x)(1 - u^2)^n dif u + R_n (x), $]

#cont[而且当 $n -> oo$ 时在区间 $[alpha, beta]$ 上一致地有 $R_n (x) -> 0$.]

你们大概已经猜想到，我们想找的近似表达函数 $f(x)$ 的多项式，正是 $P_n (x)$. 如果是这样，则你应当看清楚了证明的下一步的方案：由于当 $n$ 充分大时量 $R_n (x)$ 是一致的无穷小，只需证明上面关于 $P_n (x)$ 的等式的右边的第一项在整个区间 $[alpha, beta]$ 上趋近于 $f(x)$ 即可，而这几乎是很显然的，因为积分号下的 $f(u + x)$ 与 $f(x)$ 之差

#pagebreak(weak: true)
