#import "../theme.typ": *

#ti[5.][设矩阵 $bold(A)$ 满足 $bold(A)^3 = bold(O)$, 试证 $bold(A)$ 的特征值 $lambda$ 必为零, 且满足 $bold(J)^3 = bold(O)$ 的 $bold(J)$ 中的若尔当块的阶数为 1, 2, 或 3. 于是秩 $(bold(A)) <= (2n)/3$. 若 $bold(A)^n = bold(O)$, 为什么秩 $(bold(A)) < n$?]

#ti[6.][试证明 $bold(u)(t) = mat(delim: "[", t e^(lambda t); e^(lambda t))$ 是微分方程 $(dif bold(u))/(dif t) = bold(J) bold(u)$ 的解, 其中
#dmath[$ bold(J) = mat(delim: "[", lambda, 1; 0, lambda) , quad bold(u)(0) = mat(delim: "[", 0; 1) . $]
$bold(J)$ 不可对角化, 因此解中包含 $t e^(lambda t)$.]

#ti[7.][试证明差分方程 $v_(k+2) - 2 lambda v_(k+1) + lambda^2 v_k = 0$ 的解包括 $v_k = lambda^k$ 和 $v_k = k lambda^k$. 这些解对应于问题 6 中的 $e^(lambda t)$ 和 $t e^(lambda t)$.]

#ti[8.][$lambda^3 = 1$ 的三个解是什么? 设它们是复数 $lambda = cos theta + i sin theta = e^(i theta)$, 则当角 $3 theta$ 为 0, $2 pi$ 或 $4 pi$ 时, $lambda^3 = e^(3 i theta) = 1$. 写出以 $(1, lambda, lambda^2)$ 为列的 $3 times 3$ 傅里叶矩阵 $bold(F)$.]

#ti[9.][在习题 8 中, 检验任意 $3 times 3$ 循环矩阵 $bold(C)$ 有特征值 $(1, lambda, lambda^2)$. 若 $bold(C)$ 的对角线包含 $c_0, c_1, c_2$, 且 $bold(c) = (c_0, c_1, c_2)$, 则其特征值都在 $bold(F) bold(c)$ 中.]

#ti[10.][在 $f(x) = cases(1 \, quad -L <= x <= L, 0 \, quad L <= abs(x) <= 2 pi)$ 的傅里叶级数中使用公式 (7) 求解 $a_3 cos 3x$.]

#pagebreak()