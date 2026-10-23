#import "../theme.typ": *

#cont[数 $epsilon$. 在区间 $[a, c - epsilon/(2 mu)]$ 及 $[c + epsilon/(2 mu), b]$ 上函数 $f(x)$ 连续，因此我们可以再找一个正数 $lambda$，使得函数 $f(x)$ 在任何长度小于 $lambda$，而且整个落在 $[a, c - epsilon/(2 mu)]$ 内，或者 $[c + epsilon/(2 mu), b]$ 内的区间上，振幅都小于 $epsilon$. 现在令 $T$ 仍是使得 $l_T < lambda$ 的区间 $[a, b]$ 的任意分划，一般来说，在区间 $Delta_k$ 中可能有一些整个落在上面提到的两类区间之一，而也可能有一些，至少是部分地落入区间 $[c - epsilon/(2 mu), c + epsilon/(2 mu)]$（图 26）. 对于第一类型的区间 $Delta_k$，和 (2) 中的振幅 $omega_k$ 小于 $epsilon$，因此相应于第一类型的区间，和 (2) 中的部分小于 $epsilon(b - a)$. 对第二类型的区间，关于 $f(x)$ 的振幅 $omega_k$，我们只能断定其不大于 $2 mu$. 但因为所有第二类型的区间整个属于区间 $[c - epsilon/(2 mu) - lambda, c + epsilon/(2 mu) + lambda]$，所以其长度的和不超过 $epsilon/mu + 2lambda$，因而和 (2) 中与之相应的部分不大于 $2 mu (epsilon/mu + 2lambda) = 2 epsilon + 4 lambda mu$. 把它同我们上面得到的和 (2) 的第一部分的估计式合并，就得到，当 $l_T < lambda$ 时有]

#dmath[$ sum_(n=1)^n omega_k Delta_k < epsilon (b - a) + 2 epsilon + 4 lambda mu. $]

#cont[因为 $epsilon$ 和 $lambda$ 都可以任意小，所以此即确定了函数 $f(x)$ 在区间 $[a, b]$ 上的可积性.]

#sourceFigure("assets/p113/fig26.png", figureCaption(26))

我们有意如此详细地进行了这个并不复杂的讨论. 这里重要的是要找出证明的基本思想. 和 (2) 之所以变得很小是因为：1）在函数连续的区域上第一个因子 $omega_k$ 是很小的（一致连续性！）；2）包含间断点的区间，使第二个因子的和也很小，由此得知，(2) 的两个部分都很小，从而整个和也很小. 现在容易明白（当然也可严格证明），函数 $f(x)$ 在区间 $[a, b]$ 上即使有任意有限多个间断点也不会改变其可积性，只要它仍是有界的. 相反地，要是间断点占据区间 $[a, b]$ 的部分过大，则函数就有可能不可积. 例如，狄利克雷函数（第三讲）在每一点处间断，它就在任何区间上也不可积. 实际上，在任何区间 $Delta_k$ 上，对该函数而言 $omega_k = 1$，因此对区间 $[a, b]$ 的任何分划，恒有

#dmath[$ sum_(k=1)^n omega_k Delta_k = sum_(k=1)^n Delta_k = b - a. $]

我们所讨论的一切问题在下述命题中得到了圆满的解答.

#pagebreak(weak: true)
