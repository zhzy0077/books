#import "../theme.typ": *

为希尔伯特矩阵 $bold(B)^T bold(B)$ 的元素.

若变为从 $x = -1$ 到 $x = 1$ 积分, 立即可以得到所有偶函数和奇函数的正交性: 在区间 $[-1, 1]$ 上,

#dmath[$ integral_(-1)^1 x^2 x^5 dif x = 0, quad integral_(-1)^1 "偶函数" dot "奇函数" dif x = 0. $]

这个变化使得一半基函数与另一半基函数正交. 因此后续将使用对称的积分区间 $[-1, 1]$(或 $[-pi, pi]$). 但我们需要一组比幂函数 $1, x, x^2, dots.c$ 更好的基——最好是一组正交基.

#subsec[函数空间的正交基]

下列是理论推导和数值计算中最重要的三组偶-奇基:

#yaodian[
  $(5)$ 傅里叶基 $quad quad 1, sin x, cos x, sin 2x, cos 2x, dots.c ;$

  $(6)$ 勒让德基 $quad quad 1, x, x^2 - 1/3, x^3 - 3/5 x, dots.c ;$

  $(7)$ 切比雪夫基 $quad quad 1, x, 2 x^2 - 1, 4 x^3 - 3 x, dots.c .$
]

傅里叶基函数 (正弦函数和余弦函数) 都是周期的. 它们的周期是 $2 pi$, 因为

#dmath[$ cos(x + 2 pi) = cos x, quad sin(x + 2 pi) = sin x. $]

因此对于自身具有周期的函数 $f(x)$: $f(x + 2 pi) = f(x)$, 这组基相当好. 这组基还是正交的. 每个正弦、余弦函数都和其余的正弦、余弦函数正交. 当然, 基函数 $cos n x$ (及 $sin n x$) 不会与其自身正交.

最重要的是, 正弦-余弦基在做函数逼近时也是极好的. 若 $f(x)$ 是一个光滑的周期函数, 则用少量正弦、余弦函数 (低频) 就可以很好地逼近 $f(x)$. $f(x)$ 的跳跃和信号中的噪声可以在高频部分看出 (对应较大的 $n$). 实际应用时自然希望信号不被噪声淹没.

傅里叶变换将 $f(x)$ 与其傅里叶级数中的系数 $a_k$ 和 $b_k$ 联系起来:

#dingliC[$ "傅里叶级数" quad quad f(x) tilde.op a_0 + b_1 sin x + a_1 cos x + b_2 sin 2x + a_2 cos 2x + dots.c . $]

可以看出, 函数空间是无穷维的. 通常需要无穷多个基函数才能完美地重现函数 $f(x)$. 求每个系数 (如 $a_3$) 的公式, 类似于将向量 $bold(b)$ 投影到通过 $bold(a)$ 的直线上所得到的 $(bold(b)^T bold(a))/(bold(a)^T bold(a))$. 这里将函数 $f(x)$ 投影到函数空间中通过 $cos 3x$ 的直线上:

#eqnumL([傅里叶系数], $ a_3 = ((f(x), cos 3x))/((cos 3x, cos 3x)) = (integral f(x) cos 3x dif x)/(integral cos 3x cos 3x dif x) . $, 7)

#pagebreak()