#import "../theme.typ": *

#cont[们的情形正是这样，因为区间 $[alpha, beta]$ 正是整个包含于 $(0, 1)$ 内的任意区间)，而且应该也在整个区间 $[a, b]$ 上成立．]

为达到第一个目的，我们设

#dmath[$ (x - a)/(b - a) = y, quad x = a + (b - a)y quad (a lt.eq.slant x lt.eq.slant b), \
  f(x) = f[a + (b - a)y] = phi(y). $]

当 $x$ 取遍区间 $[a, b]$ 时，$y$ 取遍区间 $[0, 1]$，且若函数 $f(x)$ 在区间 $[a, b]$ 上连续，则函数 $phi(y)$ 在区间 $[0, 1]$ 上连续．令 $a < a' < b' < b$．设

#dmath[$ (a' - a)/(b - a) = alpha, quad (b' - a)/(b - a) = beta, quad 0 < alpha < beta < 1. $]

由于我们刚刚证明了，对任意的 $epsilon > 0$ 都可以找到多项式 $P_n (y)$，使得

#dmath[$ abs(phi(y) - P_n (y)) < epsilon quad (alpha lt.eq.slant y lt.eq.slant beta); $]

#cont[或者改写成]

#dmath[$ abs(f(x) - P_n ((x - a)/(b - a))) < epsilon quad (a' lt.eq.slant x lt.eq.slant b'); $]

#cont[但很显然]

#dmath[$ Pi_n (x) = P_n ((x - a)/(b - a)) $]

#cont[是关于 $x$ 的多项式而且与 $P_n (x)$ 次数相同．这也就是说，在任意区间 $[a, b]$ 上连续的函数 $f(x)$，可以在整个落在区间 $(a, b)$ 内的任何区间 $[a', b']$ 上，以任意的精确度一致地通过多项式来逼近．]

最后，为取消这第二个限制，我们再次设函数 $f(x)$ 在区间 $[a, b]$ 上连续，并且令

#dmath[$ F(x) = cases(
  f(a) quad (a - 1 lt.eq.slant x lt.eq.slant a) #sym.comma,
  f(x) quad (a lt.eq.slant x lt.eq.slant b) #sym.comma,
  f(b) quad (b lt.eq.slant x lt.eq.slant b + 1) .
) $]

#cont[很显然，函数 $F(x)$ 在区间 $[a - 1, b + 1]$ 上有定义且连续．区间 $[a, b]$ 整个地包含于上面的区间内．根据刚刚证明的结论，它应该可以在区间 $[a, b]$ 上以任意的精确度用多项式来一致地逼近．但因为在此区间上 $F(x) equiv f(x)$，则上述事实对函数 $f(x)$ 也正确．这样魏尔斯特拉斯定理最终得到证明．]

该定理也可以这样表述：任何连续函数都是一致收敛的多项式级数的和．因为例如用 $P_n (x)$ 表示与 $f(x)$ 的差在整个区间 $[a, b]$ 上都小于 #ifrac($1$, $n$) 的多项式 ($P_n (x)$ 的存在是刚刚证明了的)，则级数

#dmath[$ P_1 (x) + [P_2 (x) - P_1 (x)] + dots.c + [P_n (x) - P_(n-1) (x)] + dots.c , $]

#cont[(其各项都是多项式) 很显然在区间 $[a, b]$ 上一致收敛于函数 $f(x)$．]

#pagebreak(weak: true)

// UNCERTAIN: 第二个独立公式 $f(x) = f[a + (b - a)y]$ 中等号右侧 f 前有一细小墨点，判为印刷污点，未录入。
// 残余: "最后……并且令" 与 "令" 的断行位置与源页略有差异(源页 "令" 独占末行)，属自动换行，未加手工干预。
