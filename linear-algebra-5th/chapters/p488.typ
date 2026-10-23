#import "../theme.typ": *

第三个输出 $y_2$ 和第四个输出 $y_3$ 为 $sum_(k=0)^3 c_k e^("i" k x)$ 分别在点 $x = (4 pi)/4$ 和点 $x = (6 pi)/4$ 处的值. 这些都是有限项傅里叶级数! 它们包含 $n = 4$ 项, 且在等距分布的 $n = 4$ 个点, 即点 $x = 0, (2 pi)/4, (4 pi)/4, (6 pi)/4$ 处取值.

按上述规律, 下一个点将是 $x = (8 pi)/4 = 2 pi$. 由于 $e^(2 pi "i") = e^0 = 1$, 所以级数取值又回到了 $y_0$. 每轮循环都以 4 为周期. 因为 $w^2 dot w^2 = w^0 = 1$, 故指数 $2 + 2$ 与指数 0 效果相同. 依惯例, 规定行标 $j$ 和列标 $k$ 均由 0 遍历至 $n - 1$ (而非由 1 至 $n$). $bold(F)$ 的 “第 0 行” 和 “第 0 列” 是全 1 的.

$n times n$ 傅里叶矩阵 $bold(F)$ (也记为 $bold(F)_n$) 包含 $w = e^(2 pi "i" slash n)$ 的幂:

#eqnum($ bold(F)_n c = mat(delim: "[", 1, 1, 1, dots.c, 1; 1, w, w^2, dots.c, w^(n-1); 1, w^2, w^4, dots.c, w^(2(n-1)); dots.v, dots.v, dots.v, dots.v, dots.v; 1, w^(n-1), w^(2(n-1)), dots.c, w^((n-1)^2)) mat(delim: "[", c_0; c_1; c_2; dots.v; c_(n-1)) = mat(delim: "[", y_0; y_1; y_2; dots.v; y_(n-1)) = y. $, 2)

$bold(F)_n$ 为对称矩阵, 但不是埃尔米特矩阵. 它的列向量是正交的, 并且 $bold(F)_n overline(bold(F))_n = n bold(I)$. 于是 $bold(F)_n^(-1)$ 为 $overline(bold(F))_n/n$. 该逆矩阵包含 $overline(w)_n = e^(-2 pi "i" slash n)$ 的幂. 观察 $bold(F)$ 中元素特征:

#dingliC[$ "第" j "行第" k "列元素为" w^(j k) ", 第" 0 "行与第" 0 "列的元素均为" w^0 = 1. $]

用 $bold(F)_n$ 左乘 $c$, 相当于在 $n$ 个点处求级数和. 用 $bold(F)_n^(-1)$ 左乘 $y$, 相当于由函数值 $y$ 求系数 $c$. 在 MATLAB 软件中, 对应指令为 c=fft (y). 这样, 利用矩阵 $bold(F)$ 可将 “频率空间” 转变到 “物理空间”.

#hei[重要注记]  不少教材的作者更愿意令 $omega = e^(-2 pi "i" slash N)$, 也就是本节中 $w$ 的复共轭. (这些作者通常使用的是希腊字母 $omega$, 而本书作者使用的是英文字母 $w$.) 这些教材中的离散傅里叶变换矩阵包含的是 $omega$ 的幂而非 $w$ 的幂. 该矩阵为 $overline(bold(F))$, 即本节中 $bold(F)$ 的共轭, 它将物理空间变到频率空间. 采用 $overline(bold(F))$ 完全合情合理! 在 MATLAB 中, 离散傅里叶变换矩阵 fft(eye(N)) 包含数值 $omega = overline(w) = e^(-2 pi "i" slash N)$ 的幂. 以 $w$ 的幂为元素的傅里叶矩阵 $bold(F)$ 由 $c$ 重现 $y$, 而以 $omega$ 的幂为元素的矩阵 $overline(bold(F))$ 用 fft (y) 计算傅里叶系数.

#hei[另一个重要注记]  当函数 $f(x)$ 的周期为 $2 pi$ 时, 将 $x$ 变为 $e^("i" theta)$, 于是函数被定义在单位圆周上 (其中 $z = e^("i" theta)$). 离散傅里叶变换等同于插值, 即求出在 $n$ 个点 $z = 1, w, dots.c, w^(n-1)$ 处分别取 $n$ 个值 $f_0, f_1, dots.c, f_(n-1)$ 的多项式 $p(z) = c_0 + c_1 z + dots.c + c_(n-1) z^(n-1)$:

#dingli[#hei[插值]  求出 $c_0, c_1, dots.c, c_(n-1)$, 使得在 $n$ 个点 $z = 1, w, dots.c, w^(n-1)$ 处有 $p(w^j) = f_j$.]

傅里叶矩阵就是在 $n$ 个特殊点处插值时所得方程组的范德蒙德矩阵.

#pagebreak()