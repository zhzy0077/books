#import "../theme.typ": *

#ti[13.][当 $det bold(A) = 0$ 时, 为什么 $det bold(A)^+ = 0$? 当 $bold(A)$ 的秩为 $r$ 时, 为什么 $bold(A)^+$ 的秩也是 $r$?]

#ti[14.][对于单位圆周 $norm(bold(x)) = 1$ 上向量 $bold(x)$, 椭圆上向量 $bold(y) = bold(A) bold(x)$ 满足 $norm(bold(A)^(-1) bold(y)) = 1$. 如图 7.7 所示, 该椭圆的对称轴沿奇异向量方向, 且长度分别为 $sigma_1, sigma_2, dots.c, sigma_r$. 对于

#dmath[$ bold(A) = mat(delim: "[", 2, 1; 1, 2), $] 展开并验证 $norm(bold(A)^(-1) bold(y))^2 = 1$.]

习题 15—18 给出 $bold(A)^+$ 与 $bold(x)^+ = bold(A)^+ bold(b)$ 的主要性质.

#ti[15.][本题中所有矩阵均是秩 1 的. 向量 $bold(b)$ 为 $(b_1, b_2)$,

#dmath[$ bold(A) = mat(delim: "[", 2, 2; 1, 1), quad bold(A) bold(A)^T = mat(delim: "[", 8, 4; 4, 2), quad bold(A)^T bold(A) = mat(delim: "[", 5, 5; 5, 5), quad bold(A)^+ = mat(delim: "[", 0.2, 0.1; 0.2, 0.1). $]]

#sub[(a) 由于 $bold(A)^T bold(A)$ 是 \_\_\_\_\_\_, 所以方程组 $bold(A)^T bold(A) bold(hat(x)) = bold(A)^T bold(b)$ 有无穷多解;]

#sub[(b) 验证 $bold(x)^+ = bold(A)^+ bold(b) = (0.2b_1 + 0.1b_2, 0.2b_1 + 0.1b_2)$ 是 $bold(A)^T bold(A) bold(x)^+ = bold(A)^T bold(b)$ 的解;]

#sub[(c) 将 $(1, -1)$ 加到 $bold(x)^+$ 上, 得到 $bold(A)^T bold(A) bold(hat(x)) = bold(A)^T bold(b)$ 的另一个解 $bold(hat(x))$. 证明

#dmath[$ norm(bold(hat(x)))^2 = norm(bold(x)^+)^2 + 2, $] 由此可知 $bold(x)^+$ 更短.]

#ti[16.][向量 $bold(x)^+ = bold(A)^+ bold(b)$ 是 $bold(A)^T bold(A) bold(hat(x)) = bold(A)^T bold(b)$ 的最短解. 理由: 差向量 $bold(hat(x)) - bold(x)^+$ 属于 $bold(A)^T bold(A)$ 的零空间, 即 $bold(A)$ 的零空间正交于 $bold(x)^+$. 解释如何进一步得到

#dmath[$ norm(bold(hat(x)))^2 = norm(bold(x)^+)^2 + norm(bold(hat(x)) - bold(x)^+)^2. $]]

#ti[17.][对 $m times n$ 矩阵 $bold(A), R^m$ 中的每个 $bold(b)$ 可写成 $bold(p) + bold(e)$, 这是 $bold(A)$ 的列空间中的向量加上左零空间中的向量; $R^n$ 中的每个 $bold(x)$ 等于 $bold(x)^+ + bold(x)_n$, 这是 $bold(A)$ 的行空间中的向量加上零空间中的向量. 于是

#dmath[$ bold(A) bold(A)^+ bold(p) = \_\_\_\_, quad bold(A) bold(A)^+ bold(e) = \_\_\_\_, quad bold(A)^+ bold(A) bold(x)^+ = \_\_\_\_, quad bold(A)^+ bold(A) bold(x)_n = \_\_\_\_. $]]

#ti[18.][对于下述矩阵 $bold(A) = bold(U) Sigma bold(V)^T$ 与向量 $bold(b)$, 求出 $bold(A)^+, bold(A)^+ bold(A), bold(A) bold(A)^+$ 与 $bold(x)^+$:

#dmath[$ bold(A) = mat(delim: "[", 3; 4) = mat(delim: "[", 0.6, -0.8; 0.8, 0.6) mat(delim: "[", 5; 0) mat(delim: "[", 1), quad bold(b) = mat(delim: "[", 3; 4) text("或") mat(delim: "[", -4; 3). $]]

#ti[19.][一般的 $2 times 2$ 矩阵 $bold(A)$ 由 4 个元素决定; 而 $2 times 2$ 三角形矩阵由 3 个元素决定; $2 times 2$ 对角矩阵由 2 个元素决定; $2 times 2$ 旋转矩阵只由 1 个元素决定. 至于 $2 times 1$ 单位特征向量, 也由 1 个元素决定. 验证 $2 times 2$ 矩阵 $bold(A)$ 的如下分解都由 4 个元素决定:

#dmath[$ bold(L) bold(U), quad bold(L) bold(D) bold(U), quad bold(Q) bold(R), quad bold(U) Sigma bold(V)^T, quad bold(X) bold(A) bold(X)^(-1). $]]

#ti[20.][在习题 18 中, 验证 $bold(L) bold(D) bold(L)^T$ 与 $bold(Q) Lambda bold(Q)^T$ 由 3 个元素决定. 由于矩阵 $bold(A)$ 是 \_\_\_\_, 所以有此结论.]

#pagebreak()