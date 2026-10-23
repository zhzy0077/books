#import "../theme.typ": *

#eqnum($ bold(A) mat(delim: "[", v_1, v_2, dots.c, v_r) = mat(delim: "[", u_1, u_2, dots.c, u_r) mat(delim: "[", sigma_1, , , ; , sigma_2, , ; , , dots.down, ; , , , sigma_r). $, 2)

这就是奇异值分解的主要结论, 但全部结论还不止于此. 这些 $v_j$ 和 $u_i$ 可生成 $bold(A)$ 的行空间与列空间. 还可由零空间 $N(bold(A))$ 和左零空间 $N(bold(A)^T)$ 分别得到 $n - r$ 个 $v_j$ 和 $m - r$ 个 $u_i$. 它们必然与之前的 $v_j$ 和 $u_i$ 分别正交 (因为四个基本子空间配对正交). 现在将前后所有的 $v_j$ 和 $u_i$ 分别组成矩阵 $bold(V)$ 和 $bold(U)$, 这两个矩阵为方阵. 依然可得 $bold(A) bold(V) = bold(U) bold(Sigma)$.

#dmath[$ bold(A) bold(V) = bold(U) bold(Sigma), quad "简记为" (m times n)(n times n) = (m times m)(m times n), $]

#eqnum($ bold(A) mat(delim: "[", v_1, dots.c, v_r, dots.c, v_n) = mat(delim: "[", u_1, dots.c, u_r, dots.c, u_m) mat(delim: "[", sigma_1, , , ; , sigma_2, , ; , , dots.down, ; , , , sigma_r). $, 3)

新得到的 $bold(Sigma)$ 是 $m times n$ 矩阵, 它就是在 (2) 式中的 $r times r$ 矩阵下方添加 $m - r$ 个全零行、右侧新增 $n - r$ 个全零列. 真正变化的是 $bold(U)$ 和 $bold(V)$ 的形状. 它们都是方阵, 且 $bold(V)^(-1) = bold(V)^T$. 因此 $bold(A) bold(V) = bold(U) bold(Sigma)$ 变为 $bold(A) = bold(U) bold(Sigma) bold(V)^T$. 这就是奇异值分解. 可以用 $bold(U) bold(Sigma)$ 中的列 $u_i sigma_i$ 乘上 $bold(V)^T$ 中的行:

#dingliC[#eqnumL([SVD], $ bold(A) = bold(U) bold(Sigma) bold(V)^T = u_1 sigma_1 v_1^T + u_2 sigma_2 v_2^T + dots.c + u_r sigma_r v_r^T. $, 4)]

(2) 式是 “缩减版 SVD”, 包含行空间和列空间的基. (3) 式是完整版 SVD, 还包含零空间的基. 两个等式都将 $bold(A)$ 分拆成 $r$ 个秩 1 矩阵 $u_i sigma_i v_i^T$ 之和, 且结果一致. 列左乘行是矩阵乘法的第四种方式.

后面将会知道每个 $sigma_i^2$ 既是 $bold(A)^T bold(A)$ 的特征值, 也是 $bold(A) bold(A)^T$ 的特征值. 当奇异值按降序排列, 即 $sigma_1 >= sigma_2 >= dots.c >= sigma_r > 0$ 时, (4) 式中的分拆就按重要性顺序给出 $bold(A)$ 的 $r$ 个秩 1 项. 这一点至关重要.

#hei[例 1]　何时 $bold(A) = bold(U) bold(Sigma) bold(V)^T$ (奇异值分解) 与 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$ (谱分解) 相同?

#hei[解]　这样的 $bold(A)$ 的特征向量需要标准正交以满足 $bold(X) = bold(U) = bold(V)$. 如果 $bold(Lambda) = bold(Sigma)$, 那么 $bold(A)$ 的特征值还需要满足 $lambda >= 0$. 因此 $bold(A)$ 必为一个半正定的 (或正定的) 对称矩阵. 只有这样, 才有 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$, 也就是 $bold(Q) bold(Lambda) bold(Q)^T$, 才会与 $bold(A) = bold(U) bold(Sigma) bold(V)^T$ 一致.

#hei[例 2]　如果 $bold(A) = x y^T$ (秩 1), 其中 $x$ 与 $y$ 为单位向量, 那么 $bold(A)$ 的 SVD 是什么?

#hei[解]　(2) 式中的缩减版 SVD 正是 $x y^T$, 秩为 $r = 1$, 其中 $u_1 = x$, $v_1 = y$ 且 $sigma_1 = 1$. 对于完整版 SVD, 应先将 $u_1 = x$ 扩充为标准正交基 $u_i$, 再将 $v_1 = y$ 扩充为标准正交基 $v_j$. 这里没有新的 $sigma$, 只有 $sigma_1 = 1$.



#pagebreak()