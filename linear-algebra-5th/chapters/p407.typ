#import "../theme.typ": *

#hei[SVD 的证明]

下面介绍如此令人惊叹的 $u_i$ 和 $v_j$ 是如何构造出来的. 取 $v_j$ 为 $bold(A)^T bold(A)$ 的标准正交的特征向量, 这是因为我们希望

#eqnum($ bold(A)^T bold(A) = (bold(U) bold(Sigma) bold(V)^T)^T (bold(U) bold(Sigma) bold(V)^T) = bold(V) bold(Sigma)^T bold(U)^T bold(U) bold(Sigma) bold(V)^T = bold(V) bold(Sigma)^T bold(Sigma) bold(V)^T. $, 5)

上式右端包括了对称 (半) 正定矩阵 $bold(A)^T bold(A)$ 的特征向量矩阵 $bold(V)$, 且 $bold(Sigma)^T bold(Sigma)$ 必为 $bold(A)^T bold(A)$ 的特征值矩阵, 其中每个对角元素 $sigma^2$ 就是 $lambda(bold(A)^T bold(A))$ 的特征值!

由 $bold(A) v_i = sigma_i u_i$ 可知单位向量 $u_1, u_2, dots.c, u_r$. 这就是关键的 (1) 式. 其要点, 也就是 SVD 成功的全部原因, 在于这些单位向量 $u_1, u_2, dots.c, u_r$ 必定两两正交 (由于 $v_i$ 是正交的):

#eqnumL([关键步骤 ($i eq.not j$)], $ u_i^T u_j = ((bold(A) v_i)/sigma_i)^T ((bold(A) v_j)/sigma_j) = (v_i^T bold(A)^T bold(A) v_j)/(sigma_i sigma_j) = (sigma_j^2)/(sigma_i sigma_j) v_i^T v_j = 0. $, 6)

上式中 $v_i$ 为对称矩阵 $bold(A)^T bold(A)$ 的特征向量, 它们是正交的, 从而 $u_i$ 也是正交的. 实际上, $u_i$ 是 $bold(A) bold(A)^T$ 的特征向量.

最后在 $v_i$ 和 $u_j$ 基础上分别构造零空间 $N(bold(A))$ 和 $N(bold(A)^T)$ 的任意标准正交基, 于是得到 $n$ 个 $v_i$ 和 $m$ 个 $u_j$. 这样就得到了 $bold(A) = bold(U) bold(Sigma) bold(V)^T$ 中的 $bold(V)$, $bold(Sigma)$ 和 $bold(U)$.

#hei[SVD 的一个例子]

下例示范了 $bold(A) = bold(U) bold(Sigma) bold(V)^T$ 中全部三个矩阵的计算过程.

#hei[例 3]　对于秩为 $r = 2$ 的矩阵 $bold(A) = mat(delim: "[", 3, 0; 4, 5)$, 求出对应的 $bold(U), bold(Sigma), bold(V)$.

#hei[解]　因秩为 2, 故 $bold(A)$ 有正的奇异值 $sigma_1$ 和 $sigma_2$. 下面将看到 $sigma_1$ 比 $lambda_"max" = 5$ 更大, $sigma_2$ 比 $lambda_"min" = 3$ 更小. 先计算 $bold(A)^T bold(A)$ 和 $bold(A) bold(A)^T$:

#dmath[$ bold(A)^T bold(A) = mat(delim: "[", 25, 20; 20, 25), quad bold(A) bold(A)^T = mat(delim: "[", 9, 12; 12, 41), $]

它们有相同的迹 (50) 和相同的特征值 $sigma_1^2 = 45$ 与 $sigma_2^2 = 5$. 取算术平方根 $sigma_1 = sqrt(45)$ 和 $sigma_2 = sqrt(5)$, 于是 $sigma_1 sigma_2 = 15$, 也就是 $bold(A)$ 的行列式.

关键的一步是求出 $bold(A)^T bold(A)$ 的特征向量 (分别对应特征值 45 与 5):

#dmath[$ mat(delim: "[", 25, 20; 20, 25) mat(delim: "[", 1; 1) = 45 mat(delim: "[", 1; 1), quad mat(delim: "[", 25, 20; 20, 25) mat(delim: "[", -1; 1) = 5 mat(delim: "[", -1; 1), $]

再将上述正交特征向量单位化 (即除以 $sqrt(2)$), 得到 $v_1$ 和 $v_2$:

#dmath[$ "右奇异向量" quad v_1 = 1/sqrt(2) mat(delim: "[", 1; 1), quad v_2 = 1/sqrt(2) mat(delim: "[", -1; 1); quad "左奇异向量" u_i = (bold(A) v_i)/sigma_i. $]

#pagebreak()