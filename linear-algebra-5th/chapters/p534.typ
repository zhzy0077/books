#import "../theme.typ": *

由此可知, $bold(v) dot bold(w)$ 与 $norm(bold(v)) norm(bold(w))$ 的比值仍然是 $theta$ ($bold(v)$ 和 $bold(w)$ 之间的夹角) 的余弦. 即使在无限维空间中, $abs(cos theta)$ 也不会超过 1.

现在转而考虑函数, 它们也是“向量”. 定义在区间 $[0, 2 pi]$ 上的函数 $f(x)$, $g(x)$, $h(x)$, $dots$ 构成的空间在某种意义上比 $R^n$ 大 (即函数空间维数大于 $n$). $f(x)$ 和 $g(x)$ 的点积是什么? $f(x)$ 的长度是多少?

研究函数情形的关键: 用积分替换求和. 函数 $f(x)$, $g(x)$ 的点积不再是无穷级数之和, 而是 $f(x) g(x)$ 的积分, 即将“点”变为带逗号的括号, 并将“点积”更改为内积:

#dingli[
  定义  $f(x)$ 和 $g(x)$ 的内积, 以及 $f(x)$ 的长度平方分别是

  #eqnum($(f, g) = integral_0^(2 pi) f(x) g(x) dif x, quad norm(f)^2 = integral_0^(2 pi) (f(x))^2 dif x .$, 3)
]

定义函数的区间 $[0, 2 pi]$ 可以换为不同的区间, 如 $[0, 1]$ 或 $(-oo, +oo)$. 这里选择 $2 pi$ 是因为下面的第一个例子考虑的是 $sin x$ 和 $cos x$.

#hei[例 2]  $f(x) = sin x$ 的长度来自其与自身的内积:

#dmath[$ (f, f) = integral_0^(2 pi) (sin x)^2 dif x = pi, quad sin x "的长度是" sqrt(pi). $]

计算上述积分用到微积分知识——这并非线性代数的一部分. 将 $sin^2 x$ 写为 $1/2 - 1/2 cos 2x$, 可以看到该函数在平均值 $1/2$ 上下波动. 将该平均值乘区间长度 $2 pi$ 就得到答案 $pi$.

更重要的是, $sin x$ 和 $cos x$ 在函数空间中正交:

#eqnumL([内积为零], $integral_0^(2 pi) sin x cos x dif x = integral_0^(2 pi) 1/2 sin 2x dif x = -1/4 cos 2x |_0^(2 pi) = 0 .$, 4)

上述内积为零并非偶然现象, 它对科学研究非常重要. 正交性不仅体现在 $sin x$ 和 $cos x$ 这两个函数上, 还体现一个包含正弦函数和余弦函数的无限列中:

#dmath[$ cos 0x ("即" 1), sin x, cos x, sin 2x, cos 2x, sin 3x, cos 3x, dots.c quad ("函数空间的正交基"). $]

该列表中的函数两两正交.

#align(center, hei[傅里叶级数])

函数 $f(x)$ 的傅里叶级数是将其展开为正弦函数和余弦函数之和:

#dingliC[
  #eqnum([$f(x) = a_0 + a_1 cos x + b_1 sin x + a_2 cos 2x + b_2 sin 2x + dots.c .$#footnote[译者注: 这里的等号一般写成 $tilde$, 因为右边级数之和未必收敛到 $f(x)$, 对一些函数 (如后面的方波函数), 是收敛到 $1/2 [f(x + 0) + f(x - 0)]$.]], 5)
]

#pagebreak()