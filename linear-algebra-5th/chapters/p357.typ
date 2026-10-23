#import "../theme.typ": *

#hei[例 4]　将 $y = e^(lambda t)$ 代入 $y'' - 2y' + y = 0$, 所得方程 $lambda^2 - 2 lambda + 1 = (lambda - 1)^2 = 0$ 有二重根: $lambda = 1, 1$. 微分方程理论将 $e^t$ 和 $t e^t$ 看成两个线性无关的解. 下面解释原因.

线性代数将 $y'' - 2y' + y = 0$ 转化为关于 $bold(u) = (y, y')$ 的向量方程:

#eqnum([$ (dif)/(dif t) mat(delim: "[", y; y') = mat(delim: "[", y'; 2y' - y) quad "就是" quad (dif bold(u))/(dif t) = bold(A) bold(u) = mat(delim: "[", 0, 1; -1, 2) bold(u) . $], 18)

$bold(A)$ 有二重特征值 $lambda = 1, 1$ (其迹为 2, 行列式为 1), 仅有的特征向量是 $bold(x) = (1, 1)$ 的倍数. 将 $bold(A)$ 对角化是不可能的, $bold(A)$ 只有一条特征向量直线. 因此可由级数形式的定义入手计算 $e^(bold(A) t)$:

#eqnumL([短级数], [$ e^(bold(A) t) = e^(bold(I) t) e^((bold(A) - bold(I)) t) = e^t [bold(I) + (bold(A) - bold(I)) t] . $], 19)

"无穷" 级数 $e^((bold(A) - bold(I)) t)$ 迅速终结, 因为二阶方阵 $(bold(A) - bold(I))^2$ 是零矩阵! 在 (19) 式中可以发现 $t e^t$. $e^(bold(A) t) bold(u)(0)$ 的第一个分量就是方程的解 $y(t)$:

#dmath[$ mat(delim: "[", y; y') = e^t [bold(I) + mat(delim: "[", -1, 1; -1, 1) t] mat(delim: "[", y(0); y'(0)), $
$ y(t) = e^t y(0) - t e^t y(0) + t e^t y'(0). $]

#hei[例 5]　利用无穷级数求出 $e^(bold(A) t)$, 其中 $bold(A) = mat(delim: "[", 0, 1; -1, 0)$. 注意 $bold(A)^4 = bold(I)$:

#dmath[$ bold(A) = mat(delim: "[", , 1; -1, ), quad bold(A)^2 = mat(delim: "[", -1, ; , -1), quad bold(A)^3 = mat(delim: "[", , -1; 1, ), quad bold(A)^4 = mat(delim: "[", 1, ; , 1). $]

$bold(A)^5, bold(A)^6, bold(A)^7, bold(A)^8$ 是将 $bold(A), bold(A)^2, bold(A)^3, bold(A)^4$ 重复一遍. 在 $bold(A)$ 的幂中, 右上角元素就在 $1, 0, -1, 0$ 中循环往复, 那么 $e^(bold(A) t)$ 右上角的无穷级数为 $t - 1/6 t^3 + dots.c$. 类似地, $e^(bold(A) t)$ 左上角的无穷级数为 $1 - 1/2 t^2 + dots.c$:

#dmath[$ e^(bold(A) t) = bold(I) + bold(A) t + 1/2 (bold(A) t)^2 + 1/6 (bold(A) t)^3 + dots.c $
$ = mat(delim: "[", 1 - t^2/2 + dots.c, t - t^3/6 + dots.c; -t + t^3/6 - dots.c, 1 - t^2/2 + dots.c). $]

因此矩阵 $e^(bold(A) t)$ 的第 1 行恰为余弦函数和正弦函数的级数展开式!

#eqnum([$ bold(A) = mat(delim: "[", 0, 1; -1, 0), quad e^(bold(A) t) = mat(delim: "[", cos t, sin t; -sin t, cos t) . $], 20)

上述 $bold(A)$ 是反称矩阵 ($bold(A)^T = -bold(A)$), 矩阵指数函数 $e^(bold(A) t)$ 是正交矩阵. $bold(A)$ 的特征值为 $i$ 和 $-i$, 那么 $e^(bold(A) t)$ 的特征值为 $e^(i t)$ 和 $e^(-i t)$. 对一般的矩阵指数函数 $e^(bold(A) t)$ 有如下三个结论:

#pagebreak()