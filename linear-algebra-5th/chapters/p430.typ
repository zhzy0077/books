#import "../theme.typ": *

$ "对所有秩" k "矩阵" bold(B), "有" ||bold(A) - bold(B)|| >= ||bold(A) - bold(A)_k|| = sigma_(k + 1). $

这一结论完善了线性代数基本定理. $v_i$ 与 $u_i$ ($i = 1, 2, dots.c, k$) 给出了矩阵 $bold(A)$ 的四个基本子空间的标准正交基, 并且前 $k$ 个 $v_i$ 与 $u_i$ 以及 $sigma_i$ ($i = 1, 2, dots.c, k$) 给出了 $bold(A)$ 的最佳矩阵逼近.

#subsec[极分解 $bold(A) = bold(Q) bold(S)$]

每个复数 $x + i y$ 都有极形式 $r e^(i theta)$, 即非负数 $r >= 0$ 乘单位圆周上的数 $e^(i theta)$. 易知

$ x + i y = r cos theta + i r sin theta = r (cos theta + i sin theta) = r e^(i theta). $

若将这些数看成 $1 times 1$ 矩阵, 则 $e^(i theta)$ 为正交矩阵 $bold(Q)$, 而非负数 $r$ 为半正定矩阵 (称为 $bold(S)$). 将这一思想推广到 $n times n$ 矩阵 $bold(A)$ 的情形就得到极分解: 正交矩阵 $bold(Q)$ 左乘半正定矩阵 $bold(S)$, 即 $bold(A) = bold(Q) bold(S)$.

#dingli[每个实方阵 $bold(A)$ 可分解为 $bold(A) = bold(Q) bold(S)$, 其中 $bold(Q)$ 为正交矩阵, $bold(S)$ 为对称半正定矩阵. 当 $bold(A)$ 可逆时, $bold(S)$ 为正定矩阵.]

只需将 $bold(V)^T bold(V) = bold(I)$ 代入奇异值分解, 即可证明上述结论:

#eqnumL([极分解], $ bold(A) = bold(U) bold(Sigma) bold(V)^T = (bold(U) bold(V)^T)(bold(V) bold(Sigma) bold(V)^T) = bold(Q) bold(S) . $, 4)

第一个因子 $bold(U) bold(V)^T$ 为 $bold(Q)$, 因为正交矩阵的乘积仍是正交矩阵. 第二个因子 $bold(V) bold(Sigma) bold(V)^T$ 为 $bold(S)$, 因其特征值在 $bold(Sigma)$ 中, 故它是半正定矩阵.

当 $bold(A)$ 可逆时, $bold(Sigma)$ 与 $bold(S)$ 均可逆. 因为

$ bold(S)^2 = bold(V) bold(Sigma)^2 bold(V)^T = bold(A)^T bold(A), $

所以 $bold(S)$ 是 $bold(A)^T bold(A)$ 的对称正定平方根, 从而 $bold(S)$ 的特征值就是 $bold(A)$ 的奇异值, $bold(S)$ 的特征向量就是 $bold(A)$ 的奇异向量 $v$.

还有一种逆序极分解 $bold(A) = bold(K) bold(Q)$, 这里 $bold(Q)$ 不变, 但 $bold(K) = bold(U) bold(Sigma) bold(U)^T$. 这样 $bold(K)$ 就是 $bold(A) bold(A)^T$ 的对称正定平方根.

#ti[例 2][第 7.2 节例 3 中的奇异值分解为 $bold(A) = mat(delim: "[", 3, 0; 4, 5) = bold(U) bold(Sigma) bold(V)^T$. 求出极分解 $bold(A) = bold(Q) bold(S)$ 中的因子 $bold(Q)$ (旋转矩阵) 与 $bold(S)$ (伸缩矩阵).]

#sub[解] 借用第 7.2 节的矩阵 $bold(U)$ 与 $bold(Sigma)$ 以及 $bold(V)$ 可得

$ bold(Q) = bold(U) bold(V)^T = 1/sqrt(20) mat(delim: "[", 1, -3; 3, 1) mat(delim: "[", 1, 1; -1, 1) $

$ = 1/sqrt(20) mat(delim: "[", 4, -2; 2, 4) = 1/sqrt(5) mat(delim: "[", 2, -1; 1, 2), $

$ bold(S) = bold(V) bold(Sigma) bold(V)^T = sqrt(5)/2 mat(delim: "[", 1, -1; 1, 1) mat(delim: "[", 3, ; , 1) mat(delim: "[", 1, 1; -1, 1) = sqrt(5) mat(delim: "[", 2, 1; 1, 2). $

#pagebreak()