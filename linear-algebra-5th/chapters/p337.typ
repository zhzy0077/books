#import "../theme.typ": *

在种类繁多的应用中都出现了这些数的身影. 例如, 植物的枝丫等呈现放射状生长: 沿着梨树的树枝, 每 3 层可以找到 8 个分叉; 对于柳树而言, 每 5 层可以找到 13 个分叉. 一种向日葵的果实上, 沿顺时针和逆时针方向可以分别形成 144 条和 233 条螺线, 这是斐波那契数 $F_12$ 和 $F_13$. 我们研究的问题更基础.

#hei[问题]　求出斐波那契数 $F_100$.

慢一些的办法是根据递推式 $F_(k+2) = F_(k+1) + F_k$ 一步步地来. 比如将 $F_6 = 8$ 加到 $F_7 = 13$ 上, 得到 $F_8 = 21$. 这样最终可求出 $F_100$. 利用线性代数则给出一种更好的办法.

线性代数解法的关键是构造矩阵方程 $bold(u)_(k+1) = bold(A) bold(u)_k$. 这是向量的一阶递推式, 而斐波那契给出了标量的二阶递推式. 将两个斐波那契数纳入一个向量, 从而利用二阶递推式构造一阶递推式, 然后得到矩阵 $bold(A) = mat(delim: "[", 1, 1; 1, 0)$:

#eqnum($ "令" bold(u)_k = mat(delim: "[", F_(k+1); F_k) , quad "由" cases(F_(k+2) = F_(k+1) + F_k, F_(k+1) = F_(k+1)) , quad "得到" bold(u)_(k+1) = mat(delim: "[", 1, 1; 1, 0) bold(u)_k . $, 7)

从 $bold(u)_0$ 开始, 每步都左乘 $bold(A)$, 100 步后就得到 $bold(u)_100 = bold(A)^100 bold(u)_0$:

#dmath[$ bold(u)_0 = mat(delim: "[", 1; 0) , quad bold(u)_1 = mat(delim: "[", 1; 1) , quad bold(u)_2 = mat(delim: "[", 2; 1) , quad bold(u)_3 = mat(delim: "[", 3; 2) , quad dots.c , quad bold(u)_100 = mat(delim: "[", F_101; F_100) . $]

该问题正好适合用特征值解决.

第 1 步求 $bold(A)$ 的特征值. $bold(A)$ 的对角元素减去 $lambda$, 得

#dmath[$ bold(A) - lambda bold(I) = mat(delim: "[", 1 - lambda, 1; 1, -lambda) , quad "推出" quad det(bold(A) - lambda bold(I)) = lambda^2 - lambda - 1 . $]

利用二次方程求根公式, 可以解出方程 $lambda^2 - lambda - 1 = 0$:

#boxEq[特征值][$ lambda_1 = (1 + sqrt(5)) / 2 approx 1.618, quad lambda_2 = (1 - sqrt(5)) / 2 approx -0.618 . $]

这些特征值对应特征向量 $bold(x)_1 = (lambda_1, 1)$ 和 $bold(x)_2 = (lambda_2, 1)$.

第 2 步用特征向量的线性组合表示 $bold(u)_0 = (1,0)$:

#eqnum($ mat(delim: "[", 1; 0) = 1 / (lambda_1 - lambda_2) (mat(delim: "[", lambda_1; 1) - mat(delim: "[", lambda_2; 1)) quad "或" quad bold(u)_0 = (bold(x)_1 - bold(x)_2) / (lambda_1 - lambda_2) . $, 8)

第 3 步用 $bold(A)^100$ 左乘 $bold(u)_0$, 求出 $bold(u)_100$. 特征向量 $bold(x)_1$ 与 $bold(x)_2$ 保持分离! 它们分别数乘 $lambda_1^100$ 和 $lambda_2^100$:

#pagebreak()