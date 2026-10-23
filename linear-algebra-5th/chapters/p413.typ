#import "../theme.typ": *

$bold(A)$ 的秩、主元以及奇异值在上述场景中的何处出现?

#hei[解]　上述三种分解对理论数学或应用数学中的线性代数而言, 都是基础知识:

(1) 奇异值分解 $bold(A) = bold(U) bold(Sigma) bold(V)^T$;

(2) 格拉姆-施密特正交化分解 $bold(A) = bold(Q) bold(R)$;

(3) 高斯消元法 $bold(A) = bold(L) bold(U)$.

读者或许更倾向于将特征值 $sigma_i$ 和高度 $h_i$ 以及主元 $d_i$ 单独表示:

(1) $bold(A) = bold(U) bold(Sigma) bold(V)^T$, 其中 $bold(U)$ 与 $bold(V)$ 的各列是单位向量, $r$ 个奇异值 $sigma_i$ 在 $bold(Sigma)$ 中;

(2) $bold(A) = bold(Q) bold(H) bold(R)$, 其中 $bold(Q)$ 的各列为单位向量, $bold(R)$ 中对角元全是 1, $r$ 个高度 $h_i$ 在 $bold(H)$ 中;

(3) $bold(A) = bold(L) bold(D) bold(U)$, 其中 $bold(L)$ 与 $bold(U)$ 的对角元素全为 1, $r$ 个主元 $d_i$ 在 $bold(D)$ 中.

每个 $h_i$ 表明第 $i$ 列到由第 $1, 2, dots.c, i - 1$ 列所成 “平面” 上的高度. 当 $r = m = n$ 时, 矩阵 $bold(A)$ 对应的 $n$ 维 “平行多面体” (以 $bold(A)$ 的各列为同一顶点处的棱) 的体积可由 $bold(A) = bold(U) bold(Sigma) bold(V)^T = bold(L) bold(D) bold(U) = bold(Q) bold(H) bold(R)$ 求出:

#dmath[$ |det bold(A)| = |sigma_i "之积"| = |d_i "之积"| = |h_i "之积"|. $]

#hei[7.2B]　证明 $sigma_1 >= |lambda|_max$, 即矩阵 $bold(A)$ 的最大奇异值大于或等于全部特征值.

#hei[证]　由 SVD, 设 $bold(A) = bold(U) bold(Sigma) bold(V)^T$. 首先注意到正交矩阵 $bold(Q)$ 左乘向量 $bold(x)$ 并不改变该向量的长度, 即 $norm(bold(Q) bold(x)) = norm(x)$, 这是因为

#dmath[$ norm(bold(Q) bold(x))^2 = bold(x)^T bold(Q)^T bold(Q) bold(x) = bold(x)^T bold(x) = norm(x)^2. $]

该结果适用于 $bold(Q) = bold(U)$ 和 $bold(Q) = bold(V)^T$, 由此可得

#eqnum([$ norm(bold(A) x) = norm(bold(U) bold(Sigma) bold(V)^T x) = norm(bold(Sigma) bold(V)^T x) <= sigma_1 norm(bold(V)^T x) = sigma_1 norm(x) . $], 14)

由于特征向量 $bold(x)$ 满足 $norm(bold(A) x) = |lambda| norm(x)$, 所以 (14) 式表明 $|lambda| norm(x) <= sigma_1 norm(x)$. 于是 $|lambda| <= sigma_1$.

将 (14) 式应用于单位向量 $bold(x) = (1, 0, dots.c, 0)$, 此时 $bold(A) x$ 为 $bold(A)$ 的第 1 列, 所以根据不等式 (14) 可知该列长度小于或等于 $sigma_1$. 从而 $bold(A)$ 的每个元素必然满足 $|a_(i j)| <= sigma_1$. 此外, 取 $bold(V)^T x$ 为单位向量 $(1, 0, dots.c, 0)$, (14) 式再次表明 $(norm(bold(A) x))/(norm(x))$ 的最大值等于 $sigma_1$.

第 11.2 节将解释在求解 $bold(A) x = b$ 时, 比值 $sigma_max/sigma_min$ (条件数) 是如何控制舍入误差的. 如果 “条件数” 太大, 那么 MATLAB 会发出警告, 此时得出的 $x$ 是不可靠的.

#align(center)[#image("../assets/fig-p413-icon.png", width: 3.2%)]

#xiti[习题集 7.2][

#hei[1.]　求出以下矩阵 $bold(A)$ 的特征值, 然后由 $bold(A)^T bold(A)$ 求出 $bold(A)$ 的奇异值:

$ "(a)" bold(A) = mat(delim: "[", 0, 4; 0, 0); quad "(b)" bold(A) = mat(delim: "[", 0, 4; 1, 0). $

对于每个 $bold(A)$, 由 $bold(A)^T bold(A)$ 的特征向量构造 $bold(V)$, 并由 $bold(A) bold(A)^T$ 的特征向量构造 $bold(U)$. 验证 $bold(A) = bold(U) bold(Sigma) bold(V)^T$.

]

#pagebreak()