#import "../theme.typ": *

因为这个证明是以下面的思想为基础的，要掌握这个思想，最简单的是用它的几何解释，所以在着手证明之前，看一看求解已给方程 (3) 这个问题本身的几何解释将是很有益处的.

该方程的解 $y = phi(x)$ 的图像通常称为方程的积分曲线. 方程 (3) 对区域 $D$ 的每一点 $(x, y)$ 都给出一个确定的方向，它的斜率是

#dmath[$ (dif y) / (dif x) = f(x, y). $]

#cont[区域 $D$ 的每一个点都带有确定的方向，这样的点和方向的全体构成所谓的方向场，这个场正是由方程 (3) 给定的. 这个方程的积分曲线就是这样一条曲线，它上每一点处的切线方向都与在该点处的方向场的方向一致. 从几何上来看，我们寻找方程 (3) 的解 $y = phi(x)$(它在 $x = x_0$ 时变为 $y_0$) 的问题，也就是求该方程的经过点 $(x_0, y_0)$ 的积分曲线. 因此证明该方程的解的存在性就意味着：证明过该点至少有一条积分曲线.]

你们将要看到，我们为此而采用的方法是造一条辅助曲线，其性质是越来越接近于积分曲线，通过极限过程就可以得到积分曲线.

设 $(x_0, y_0)$ 是有界闭区域 $D$ 的内点，函数 $f(x, y)$ 在它上连续，且令 $M$ 是函数 $|f(x, y)|$ 在该区域上的上确界. 如果数 $alpha > 0$ 充分小，则当

#dmath[$ x_0 - alpha lt.eq.slant x lt.eq.slant x_0 + alpha, quad y_0 - M alpha lt.eq.slant y lt.eq.slant y_0 + M alpha $]

#cont[时，点 $(x, y)$ 也将属于区域 $D$. 我们来证明存在一个函数 $y = phi(x)$，它在区间 $[x_0 - alpha, x_0 + alpha]$ 上满足方程 (3)，且有 $phi(x_0) = y_0$. 为更易于看懂，我们再次分段来证明.]

1) 设 $x_k = x_0 + frac(k, n) alpha (0 lt.eq.slant k lt.eq.slant n)$，因此点 $x_1, x_2, dots.c, x_(n - 1)$ 把区间 $[x_0, x_0 + alpha] n$ 等分.

我们在区间 $[x_0, x_0 + alpha]$ 上作折线 (图 34)$y = phi_n (x)$，其顶点的横坐标是 $x_0, x_1, dots.c, x_n$，而每一段的斜率都与场在其左端点的方向一致. 很显然，它可以从 $x_(k - 1)$ 到 $x_k$ 递推地做出来. 同时纵坐标 $y_k = phi_n (x_k)$ 由递推公式

#eqnum(5)[$ y_k &= y_(k - 1) + f(x_(k - 1), y_(k - 1))(x_k - x_(k - 1)) \
  &= y_(k - 1) + f(x_(k - 1), y_(k - 1)) frac(alpha, n) quad (1 lt.eq.slant k lt.eq.slant n) $]

#cont[确定，而在区间 $x_(k - 1) lt.eq.slant x lt.eq.slant x_k$ 上的折线方程由公式]

#dmath[$ phi_n (x) = y_(k - 1) + f(x_(k - 1), y_(k - 1))(x - x_(k - 1)) quad (1 lt.eq.slant k lt.eq.slant n) $]

#cont[给出.]

为证明折线 $y = phi_n (x)$ 从 $x = x_0$ 到 $x = x_0 + alpha$ 的整个区间上属于区域 $D$，很显然，只要证明

#pagebreak(weak: true)
