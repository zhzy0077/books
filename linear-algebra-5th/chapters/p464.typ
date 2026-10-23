#import "../theme.typ": *

对角元素相同为矩阵 $bold(C)$ 的一个重要性质. 它对应于微分方程中的常系数. 这正是傅里叶矩阵完美发挥作用的原因!

$ "方程" quad quad (dif^2 u)/(dif t^2) = -u quad "的通解为" quad u = c_0 cos t + c_1 sin t, $

$ "方程" quad quad (dif^2 u)/(dif t^2) = t u quad "的解不能由初等函数表示." $

这些方程是线性的. 第一个方程是简谐振动方程: 在牛顿第二定律 $f = m a$ 中, 取质量为 $m = 1$, 加速度为 $a = (dif^2 u)/(dif t^2)$, 外力为 $f = -u$. 常系数使得这个微分方程可以实际求解.

第二个方程 $u'' = t u$ 中含变量系数 $t$. 这是物理学和光学中的艾里 (Airy) 方程 (它是为了解释彩虹而得出的). 当 $t$ 的值越过零时, 解完全变了, 而表示这些解需要无穷级数. 这超出了本书的范围.

常系数线性微分方程具有形如 $e^(lambda t)$ 的简单解. 将 $e^(lambda t)$ 代入微分方程可求得 $lambda$. 数值 $lambda$ 就像一个特征值. 对于 $u = cos t$ 和 $u = sin t$, 这个数是 $lambda = i$. 伟大的欧拉公式 $e^(i t) = cos t + i sin t$ 中引入了复数, 矩阵 $bold(P)$ 和 $bold(C)$ 的特征值也是如此.

#subsec[函数空间的基]

对于以 $x$ 为自变量的函数构成的函数空间, 首先容易想到以幂函数 $1, x, x^2, x^3, dots.c$ 为基. 不幸的是, 这是一个非常糟糕的基. 这些函数 $x^n$ 几乎不线性无关: $x^10$ 差不多是基向量 $1, x, dots.c, x^9$ 的线性组合. 实际上几乎不太可能利用这么差的 "病态" 基来计算.

若考虑的是向量而不是函数, 并以向量为各列构造矩阵 $bold(B)$, 则可通过观察 $bold(B)^T bold(B)$ 来判断基的好坏. 矩阵 $bold(B)^T bold(B)$ 包含了基向量 ($bold(B)$ 的各列) 的所有内积. 当 $bold(B)^T bold(B) = bold(I)$ 时, 基是正交的. 这是可能取到的最佳情形. 但是, 用这种方法, 基 $1, x, x^2, dots.c$ 将生成难以使用的希尔伯特矩阵: $bold(B)^T bold(B)$ 最大特征值和最小特征值的比值 (即条件数) 非常大. 一个大的条件数意味着基的选择并不好.

注 现在矩阵 $bold(B)$ 的各列是函数而不是向量, 但仍可使用 $bold(B)^T bold(B)$ 来检验线性无关性. 因此需要定义两个函数的点积 (内积是一个更合适的名字)——这些是 $bold(B)^T bold(B)$ 中的值.

向量 $bold(x), bold(y)$ 的点积恰为 $bold(x)^T bold(y) = x_1 y_1 + x_2 y_2 + dots.c + x_n y_n$. 函数 $f, g$ 的点积将对应积分而非加法, 但主要思想是完全平行的:

$ "内积" quad quad (f, g) = integral f(x) g(x) dif x, $

$ "复内积" quad quad (f, g) = integral overline(f(x)) g(x) dif x, quad overline(f) "为复共轭," $

$ "加权内积" quad quad (f, g)_w = integral w(x) overline(f(x)) g(x) dif x, quad w "为权函数." $

设从 $x = 0$ 到 $x = 1$ 积分, 则 $x^i$ 与 $x^j$ 的内积

$ integral_0^1 x^i x^j dif x = (x^(i+j+1))/(i+j+1) |_(x=0)^(x=1) = 1/(i+j+1) $



#pagebreak()