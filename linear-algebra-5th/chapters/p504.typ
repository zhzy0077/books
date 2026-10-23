#import "../theme.typ": *

#dingliC[#eqnumL([$-(d^2 u)/(d x^2) = 1$ 的通解为], $ u(x) = -1/2 x^2 + C + D x . $, 2)]

分别令 $x = 0$ 以及 $x = 1$, 可以通过边界条件来确定 $C$ 和 $D$ 的值. 在点 $x = 0$ 处, 由 $u(0) = 0$ 可得 $C = 0$. 在点 $x = 1$ 处, 由 $u(1) = 0$ 可得 $-1/2 + D = 0$, 进而可知 $D = 1/2$. 因此,

#eqnum($ u(x) = -1/2 x^2 + 1/2 x = 1/2 (x - x^2) . $, 3)

为该两端固定边值问题的解.

#subsec[用差分代替导数]

为了将导数替换为矩阵, 通常有三种基本方法——向前差分、向后差分或者中心差分. 首先看一阶导数和一阶差分的情形:

#dmath[$ (d u)/(d x) approx (u(x + Delta x) - u(x))/(Delta x) quad "(向前差分)" $]
#dmath[$ quad quad approx (u(x) - u(x - Delta x))/(Delta x) quad "(向后差分)" $]
#dmath[$ quad quad approx (u(x + Delta x) - u(x - Delta x))/(2 Delta x) quad "(中心差分)." $]

将区间 $[0,1]$ 分成 $n + 1$ 等份, 则每个小区间的长度为 $Delta x = 1/(n + 1)$. 用差分代替导数后, 函数 $u(x)$ 在 $n$ 个内点 $Delta x, 2 Delta x, dots.c, n Delta x$ 处的近似值可转化为对应矩阵方程 $bold(K) u = f$ 的解 $u_1, u_2, dots.c, u_n$, 即待求的解

#dmath[$ u = (u_1, u_2, dots.c, u_n) approx (u(Delta x), u(2 Delta x), dots.c, u(n Delta x)). $]

由边值条件 $u(0) = u(1) = 0$ 可得 $u_0 = u_(n+1) = 0$. 将 $-(d)/(d x) ((d u)/(d x)) = 1$ 中的两处导数分别换成向前差分和向后差分, 例如,

#eqnum($ 1/((Delta x)^2) mat(delim: "[", 1,-1,0,0; 0,1,-1,0; 0,0,1,-1) mat(delim: "[", 1,0,0; -1,1,0; 0,-1,1; 0,0,-1) mat(delim: "[", u_1; u_2; u_3) = mat(delim: "[", 1; 1; 1) . $, 4)

这是当 $n = 3$ 和 $Delta x = 1/4$ 时得到的矩阵方程, 其中两个一阶差分矩阵互为转置! 该方程可以表示为 $A^T A u = (Delta x)^2 f$. 由矩阵乘积 $A^T A$ 可得正定二阶差分矩阵 $bold(K)_0$:

#pagebreak()