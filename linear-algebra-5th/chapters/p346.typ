#import "../theme.typ": *

#ti[30.][(a) 如果 $bold(A) = mat(delim: "[", a, b; 0, d)$, 那么 $bold(A) - lambda bold(I)$ 的行列式为 $(lambda - a)(lambda - d)$; 验证 “凯莱-哈密顿 (Cayley-Hamilton) 定理”, 即 $(bold(A) - a bold(I))(bold(A) - d bold(I))$ 为零矩阵;

(b) 对斐波那契矩阵 $bold(A) = mat(delim: "[", 1, 1; 1, 0)$ 验证凯莱-哈密顿定理; 由于多项式 $det(bold(A) - lambda bold(I))$ 等于 $lambda^2 - lambda - 1$, 所以由该定理可知 $bold(A)^2 - bold(A) - bold(I) = bold(O)$.]

#ti[31.][设 $n$ 阶方阵 $bold(A)$ 的特征值为 $lambda_1, lambda_2, dots.c, lambda_n$, 将对角化分解式 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$ 代入乘积

#dmath[$ (bold(A) - lambda_1 bold(I))(bold(A) - lambda_2 bold(I)) dots.c (bold(A) - lambda_n bold(I)), $]

并解释此时乘积等于零矩阵的原因. 在多项式 $p(lambda) = det(bold(A) - lambda bold(I))$ 中, 将 $lambda$ 替换为矩阵 $bold(A)$. 凯莱-哈密顿定理指出上述乘积 $p(bold(A))$ 总是零矩阵, 即便 $bold(A)$ 不可对角化.]

#ti[32.][设 $bold(A) = mat(delim: "[", 1, 0; 0, 2)$ 且 $bold(A) bold(B) = bold(B) bold(A)$, 证明 $bold(B) = mat(delim: "[", a, b; c, d)$ 也是对角矩阵. $bold(B)$ 与 $bold(A)$ 有相同的特征 \_\_\_\_, 但特征 \_\_\_\_ 不同. 这些对角矩阵 $bold(B)$ 构成了 $2 times 2$ 矩阵空间的一个二维子空间. 由 $bold(A) bold(B) - bold(B) bold(A) = bold(O)$ 得到关于未知数 $a, b, c, d$ 的四个方程, 求出该方程组对应的 $4 times 4$ 系数矩阵的秩.]

#ti[33.][设 $n$ 阶方阵 $bold(A)$ 的特征值为 $lambda_1, lambda_2, dots.c, lambda_n$, 若 $k -> oo$, 当所有 $|lambda_i| < 1$ 时, 矩阵的幂 $bold(A)^k$ 趋于零矩阵; 而当任意 $|lambda_i| > 1$ 时, 幂 $bold(A)^k$ 无限 “膨胀”. 彼得·拉克斯 (Peter Lax) 在他的教材 #emph[Linear Algebra] 中给出以下引人注目的例子:

#dmath[$ bold(A) = mat(delim: "[", 3, 2; 1, 4) , quad bold(B) = mat(delim: "[", 3, 2; -5, -3) , quad bold(C) = mat(delim: "[", 5, 7; -3, -4) , quad bold(D) = mat(delim: "[", 5, 6.9; -3, -4) , $]

#dmath[$ norm(bold(A)^(1024)) > 10^700, quad bold(B)^(1024) = bold(I), quad bold(C)^(1024) = -bold(C), quad norm(bold(D)^(1024)) < 10^(-78), $]

求出 $bold(B)$ 和 $bold(C)$ 的特征值 (形如 $lambda = e^(i theta)$), 进而证明 $bold(B)^4 = bold(I)$ 和 $bold(C)^3 = -bold(I)$.]

#align(center)[#image("../assets/fig-p346-icon.png", width: 4%)]

#xiti[挑 战 题]

#ti[34.][设逆时针旋转 $theta$ 的旋转矩阵为 $bold(A)$, 则 $n$ 次幂 $bold(A)^n$ 是逆时针旋转 $n theta$ 的旋转矩阵:

#dmath[$ bold(A)^n = mat(delim: "[", cos theta, -sin theta; sin theta, cos theta)^n = mat(delim: "[", cos n theta, -sin n theta; sin n theta, cos n theta) . $]

利用对角化分解式 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$, 证明上述简洁的公式. 矩阵 $bold(A)$ 的特征向量 ($bold(X)$ 的各列) 是 $(1, i)$ 和 $(i, 1)$. 注意, 欧拉 (Euler) 公式为 $e^(i theta) = cos theta + i sin theta$.]

#ti[35.][将对角化分解式 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$ 两边转置, 得到 $bold(A)^T = (bold(X)^(-1))^T bold(Lambda) bold(X)^T$. 满足 $bold(A)^T bold(y) = lambda bold(y)$ 的特征向量 $bold(y)$ 是矩阵 $(bold(X)^(-1))^T$ 的列. 由于 $bold(y)^T bold(A) = lambda bold(y)^T$, $bold(y)^T$ 通常称为 $bold(A)$ 的左特征向量. 如何利用矩阵乘法得到以下 $bold(A)$ 的公式?]

#pagebreak()