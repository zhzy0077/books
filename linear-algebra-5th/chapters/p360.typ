#import "../theme.typ": *

$bold(u)'' = bold(A) bold(u)$ 类似于波动方程 $(partial^2 u)/(partial t^2) = (partial^2 u)/(partial x^2)$, 它的解 $bold(u)(t)$ 将会振荡 (因为 $bold(A)$ 的特征值的平方根是虚数).

#hei[解]　特征值来自 $det(bold(A) - lambda bold(I)) = 0$:

#dmath[$ det(bold(A) - lambda bold(I)) = mat(delim: "[", -2 - lambda, 1, 0; 1, -2 - lambda, 1; 0, 1, -2 - lambda) = (-2 - lambda)[(-2 - lambda)^2 - 2] = 0. $]

由 $-2 - lambda = 0$ 求出一个特征值为 $lambda = -2$. 另一个因式为 $lambda^2 + 4 lambda + 2$, 所以其他的特征值为 $lambda = -2 plus.minus sqrt(2)$ (也是负实数). 再求特征向量:

#dmath[$ lambda = -2 quad (bold(A) + 2 bold(I)) bold(x) = mat(delim: "[", 0, 1, 0; 1, 0, 1; 0, 1, 0) mat(delim: "[", x; y; z) = mat(delim: "[", 0; 0; 0) quad "得" quad bold(x)_1 = mat(delim: "[", 1; 0; -1), $]

#dmath[$ lambda = -2 - sqrt(2) quad (bold(A) - lambda bold(I)) bold(x) = mat(delim: "[", sqrt(2), 1, 0; 1, sqrt(2), 1; 0, 1, sqrt(2)) mat(delim: "[", x; y; z) = mat(delim: "[", 0; 0; 0) quad "得" quad bold(x)_2 = mat(delim: "[", 1; -sqrt(2); 1), $]

#dmath[$ lambda = -2 + sqrt(2) quad (bold(A) - lambda bold(I)) bold(x) = mat(delim: "[", -sqrt(2), 1, 0; 1, -sqrt(2), 1; 0, 1, -sqrt(2)) mat(delim: "[", x; y; z) = mat(delim: "[", 0; 0; 0) quad "得" quad bold(x)_3 = mat(delim: "[", 1; sqrt(2); 1). $]

所得特征向量是两两正交的 (所有对称矩阵都如此, 将在第 6.4 节给出证明). 全部三个 $lambda_i$ 都是负的, 从而矩阵 $bold(A)$ 是负定的且 $e^(bold(A) t)$ 衰减至零向量 (稳定性).

初值条件 $bold(u)(0) = (0, 2 sqrt(2), 0)$ 为 $bold(x)_3 - bold(x)_2$. 方程 $bold(u)' = bold(A) bold(u)$ 的解就是 $bold(u)(t) = e^(lambda_3 t) bold(x)_3 - e^(lambda_2 t) bold(x)_2$.

#hei[热传导方程]　在图 6.7(a) 中, 盒子的高度表示温度 $u_i, i = 0, 1, dots.c, 4$. 设中间盒子 (编号 2) 的初始温度为 $2 sqrt(2) degree C$, 热量先扩散到邻近盒子 (编号 1, 3) 中, 接着再到外侧的盒子 (编号 0, 4, 恒温 $0 degree C$), 盒子之间热流速率为温度差大小. 热流从 2 号盒子传出, 向左、向右传导的速率分别为 $u_1 - u_2$ 和 $u_3 - u_2$. 因此热流流出为 $u_1 - 2u_2 + u_3$, 对应 $bold(A) bold(u)$ 的第二行.

#hei[波动方程]　在图 6.7(b) 中, 盒子的高度表示离平衡位置的位移 $u_i, i = 0, 1, dots.c, 4$. 设 2 号盒的初始位移为 $2 sqrt(2)$, 0 号盒与 4 号盒固定不动. 对方程 $(dif^2 bold(u))/(dif t^2) = bold(A) bold(u)$, 矩阵 $bold(A)$ 有相同的特征向量 $bold(x)$. 但现在特征值 $lambda$ 将导出振荡解 $e^(i omega t) bold(x)$ 和 $e^(-i omega t) bold(x)$, 其中频率 $omega$ 满足 $omega^2 = -lambda$:

#dmath[$ (dif^2)/(dif t^2)(e^(i omega t) bold(x)) = bold(A)(e^(i omega t) bold(x)) quad "变成" quad (i omega)^2 e^(i omega t) bold(x) = lambda e^(i omega t) bold(x), quad "则" quad omega^2 = -lambda. $]

$-lambda$ 有两个平方根, 于是得到 $e^(i omega t) bold(x)$ 和 $e^(-i omega t) bold(x)$. 由三个特征向量得到 $bold(u)'' = bold(A) bold(u)$ 的六个解, 它们正好匹配 $bold(u)(0)$ 和 $bold(u)'(0)$ 的六个分量. 本题中由于 $bold(u)' = 0$, 故可用 $e^(i omega t) bold(x)$ 与 $e^(-i omega t) bold(x)$ 生成 $2 cos omega t bold(x)$.



#pagebreak()