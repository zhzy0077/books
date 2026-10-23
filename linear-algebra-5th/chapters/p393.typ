#import "../theme.typ": *

#hei[17.]　对称矩阵 $bold(S)$ 的对角元素 $s_(j j)$ 不会比所有特征值 $lambda$ 都小. 否则, $bold(S) - s_(j j) bold(I)$ 的特征值都 \_\_\_\_, 从而 $bold(S) - s_(j j) bold(I)$ 正定. 但 $bold(S) - s_(j j) bold(I)$ 在主对角线上有一个 \_\_\_\_ 元素.

#hei[18.]　如果对称矩阵 $bold(S)$ 满足 $bold(S) bold(x) = lambda bold(x)$, 那么 $bold(x)^T bold(S) bold(x) = \_\_\_\_.$ 为什么 $lambda > 0$ 时, 该值为正数?

#hei[19.]　反转习题 18, 证明如果 $n$ 阶方阵 $bold(S)$ 的所有特征值 $lambda > 0$, 那么 $bold(x)^T bold(S) bold(x) > 0$. 这里必须针对每个非零向量 $bold(x)$ 而不仅仅是特征向量进行证明. 为此将 $bold(x)$ 写成特征向量 $bold(x)_i$ 的线性组合形式, 并分析为什么所有 “交叉项” $bold(x)_i^T bold(x)_j = 0$. 那么 $bold(x)^T bold(S) bold(x)$ 就是

#dmath[$ (c_1 bold(x)_1 + c_2 bold(x)_2 + dots.c + c_n bold(x)_n)^T (c_1 lambda_1 bold(x)_1 + c_2 lambda_2 bold(x)_2 + dots.c + c_n lambda_n bold(x)_n) \
= c_1^2 lambda_1 bold(x)_1^T bold(x)_1 + c_2^2 lambda_2 bold(x)_2^T bold(x)_2 + dots.c + c_n^2 lambda_n bold(x)_n^T bold(x)_n > 0. $]

#hei[20.]　为什么以下论述是正确的? 给出一个快捷的判别理由:

(a) 每个正定矩阵都是可逆的;

(b) 唯一的正定投影矩阵为 $bold(P) = bold(I)$;

(c) 对角元素都是正数的对角矩阵必正定;

(d) 行列式为正数的对称矩阵可能不正定!

习题 21—24 利用特征值, 习题 25—27 基于主元.

#hei[21.]　当 $s$ 和 $t$ 取何值时, 如下 $bold(S)$ 与 $bold(T)$ 的全部特征值 $lambda > 0$ (因而它们是正定矩阵)?

#dmath[$ bold(S) = mat(delim: "[", s, -4, -4; -4, s, -4; -4, -4, s), quad bold(T) = mat(delim: "[", t, 3, 0; 3, t, 4; 0, 4, t). $]

#hei[22.]　根据对称矩阵 $bold(S)$ 的分解式 $bold(S) = bold(Q) bold(Lambda) bold(Q)^T$ 计算 $bold(S)$ 的正定对称平方根 $bold(Q) sqrt(bold(Lambda)) bold(Q)^T$. 验证由该平方根矩阵 (记为 $bold(A)$) 可推出 $bold(A)^T bold(A) = bold(S)$:

(a) $bold(S) = mat(delim: "[", 5, 4; 4, 5)$; (b) $bold(S) = mat(delim: "[", 10, 6; 6, 10)$.

#hei[23.]　将椭圆的方程 $lambda_1 x^2 + lambda_2 y^2 = 1$ 改写成 $x^2/a^2 + y^2/b^2 = 1$ 时, $a$ 与 $b$ 分别是什么? 椭圆 $9x^2 + 4y^2 = 1$ 对称轴的半轴长 $a = \_\_\_\_, b = \_\_\_\_.$

#hei[24.]　画出倾斜椭圆 $x^2 + x y + y^2 = 1$, 根据对应矩阵 $bold(S)$ 的特征值, 求出椭圆对称轴的半轴长.

#hei[25.]　设对角矩阵 $bold(D)$ 中主元都是正数, 那么分解式 $bold(S) = bold(L) bold(D) bold(L)^T$ 变为 $bold(L) sqrt(bold(D)) sqrt(bold(D)) bold(L)^T$. (由主元的平方根推出 $bold(D) = sqrt(bold(D)) sqrt(bold(D))$.) 于是由 $bold(C) = sqrt(bold(D)) bold(L)^T$ 可写出楚列斯基因子分解 $bold(A) = bold(C)^T bold(C)$, 这就是 “对称化的 LU 分解”:

(a) 由 $bold(C) = mat(delim: "[", 3, 1; 0, 2)$ 求出 $bold(S)$;



#pagebreak()