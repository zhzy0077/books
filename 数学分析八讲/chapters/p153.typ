#import "../theme.typ": *

#dmath[$ = 2c integral_0^delta (1 - sin^2 frac(y, 2))^n dif y. $]

#cont[但对已知的积分区域有]

#dmath[$ 0 <= sin frac(y, 2) < 1, quad 0 < cos frac(y, 2) <= 1, $]

#cont[因此]

#dmath[$ I_1 > 2c integral_0^delta (1 - sin frac(y, 2))^n cos frac(y, 2) dif y, $]

#cont[或者令 $sin frac(y, 2) = z, #ifrac($1$, $2$) cos frac(y, 2) dif y = dif z,$]

#dmath[$ I_1 > 4c integral_0^(sin frac(delta, 2)) (1 - z)^n dif z = frac(4 c, n + 1) [1 - (1 - sin frac(delta, 2))^(n + 1)]. $]

#cont[因为对充分大的 $n$，括号内的表达式很显然大于 #ifrac($1$, $2$)，故有]

#eqnum(14)[$ I_1 > frac(2 c, n + 1). $]

另一方面，如果我们以 $M$ 来表示函数 $f(x)$ 在区间 $[-pi, pi]$ 上的最大值，并注意到，在构成 $I_2$ 的那两个积分的积分区间内

#dmath[$ cos^2 frac(x - alpha, 2) <= cos^2 frac(delta, 2), $]

#cont[因而]

#dmath[$ T_n (x) <= cos^(2 n) frac(delta, 2), $]

#cont[则我们得到]

#eqnum(15)[$ |I_2| &<= M cos^(2 n) frac(delta, 2) (alpha - delta + pi + pi - alpha + delta) \
  &< 2 pi M cos^(2 n) frac(delta, 2) = 2 pi M rho^n, $]

#cont[这里设]

#dmath[$ rho = cos^2 frac(delta, 2) < 1. $]

#cont[因为 $I_1 + I_2 = 0$，故 $|I_1| = |I_2|$，由此据 (14) 及 (15) 有]

#dmath[$ 2 pi M rho^n > frac(2 c, n + 1), quad (n + 1) rho^(n + 1) > frac(c rho, pi M), $]

#cont[这就得到了我们要找的矛盾．因为当 $n -> oo$ 时 $n rho^n -> 0$,#footnote[设 $n ln frac(1, rho) = x$，得 $n rho^n = #ifrac($1$, $ln frac(1, rho)$) x e^(-x) -> 0 (x -> oo)$．]因而不可能对任意的 $n$ 都大于正的常数 #ifrac($c rho$, $pi M$)．]

#pagebreak(weak: true)
