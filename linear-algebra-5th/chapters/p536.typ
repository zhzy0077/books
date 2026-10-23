#import "../theme.typ": *

余弦系数都为零. 可以发现它的傅里叶级数只包含正弦函数:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ "方波函数" quad f(x) = 4/pi [ sin x/1 + sin 3x/3 + sin 5x/5 + dots ]. $],
  align(bottom)[$(8)$],
)

这个函数的长度是 $sqrt(2 pi)$, 因为在每一点处, $(f(x))^2$ 为 $(-1)^2 = (+1)^2 = 1$:

$ norm(f)^2 = integral_0^(2 pi) (f(x))^2 dif x = integral_0^(2 pi) 1 dif x = 2 pi. $

在点 $x = 0$ 处各正弦函数为零, 上述傅里叶级数也为零. 这是从 $-1$ 和 $+1$ 的平均数. 当 $x = pi/2$ 时, 对应的傅里叶级数也很有趣. 此时方波等于 1, (8) 式中的正弦函数在 $+1$ 和 $-1$ 之间交替取值:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ "计算" pi "的公式" quad 1 = 4/pi (1 - 1/3 + 1/5 - 1/7 + dots). $],
  align(bottom)[$(9)$],
)

上式两边乘 $pi$ 就得到了关于这个著名数值的一个神奇的公式

$ pi = 4 (1 - 1/3 + 1/5 - 1/7 + dots). $

#align(center, hei(size: 12pt)[傅里叶系数])

如何求得傅里叶级数中与余弦函数和正弦函数相乘的系数 $a_k$ 和 $b_k$? 对于给定的函数 $f(x)$, $a_k$ 和 $b_k$ 是它的傅里叶系数:

$ "傅里叶级数" quad f(x) = a_0 + a_1 cos x + b_1 sin x + a_2 cos 2x + b_2 sin 2x + dots. $

求 $a_1$ 的方法为: 上式两边都乘 $cos x$, 再从 0 到 $2 pi$ 积分. 关键是利用正交性! 右边除 $cos^2 x$ 外其余项的积分都为零:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ "对于系数" a_1 quad integral_0^(2 pi) f(x) cos x dif x = integral_0^(2 pi) a_1 cos^2 x dif x = pi a_1. $],
  align(bottom)[$(10)$],
)

上式两边除以 $pi$ 就可以得到 $a_1$. 为了求其他 $a_k$, 将傅里叶级数两边都乘 $cos k x$, 再从 0 到 $2 pi$ 积分. 利用正交性, 右边仅剩下 $a_k cos^2 k x$ 的积分. 该积分为 $pi a_k$, 则式子两边除以 $pi$ 即可得到

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ bold(a)_k = 1/pi integral_0^(2 pi) f(x) cos k x dif x, quad "类似地," quad bold(b)_k = 1/pi integral_0^(2 pi) f(x) sin k x dif x. $],
  align(bottom)[$(11)$],
)

用上述方法求 $a_0$ 时, 略有不同. 这一次乘 $cos 0x = 1$, 而 1 在 $[0, 2 pi]$ 上的积分是 $2 pi$:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ "常数项" quad a_0 = 1/(2 pi) integral_0^(2 pi) f(x) dot 1 dif x quad "为" f(x) "的平均值." $],
  align(bottom)[$(12)$],
)

(8) 式中方波函数的傅里叶系数就是利用这些公式求出的. 其中, $f(x) cos k x$ 的积分为零. 对于奇数 $k$, $f(x) sin k x$ 的积分是 $4/k$.



#pagebreak()