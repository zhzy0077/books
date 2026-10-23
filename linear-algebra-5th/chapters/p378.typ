#import "../theme.typ": *

#hei[16.] （推荐）以下矩阵 $bold(M)$ 既是反称的，也是 $\_\_\_\_$，那么它的所有特征值 $lambda$ 都是纯虚数，且 $|lambda| = 1$.（对每个 $bold(x)$ 有 $norm(bold(M) bold(x)) = norm(bold(x))$，故对特征向量 $bold(x)$ 有 $norm(lambda bold(x)) = norm(bold(x))$.）根据 $M$ 的迹，求出它的全部四个特征值:

#dmath[$ bold(M) = 1/sqrt(3) mat(delim: "[", 0, 1, 1, 1; -1, 0, -1, 1; -1, 1, 0, -1; -1, -1, 1, 0) quad "的特征值只会是" i "或" -i. $]

#hei[17.] 证明如下矩阵 $A$（复对称矩阵）仅有一条特征向量直线:

#dmath[$ A = mat(delim: "[", i, 1; 1, -i) quad "甚至不可对角化" ", 其特征值为" lambda = 0, 0. $]

对于复矩阵 $A$ 而言，满足 $A^T = A$ 并非一个特别的性质. 通常关注的性质为 $overline(A)^T = A$（第 9.2 节），此时它的所有特征值 $lambda$ 都是实数，且特征向量相互正交.

#hei[18.] 即使矩阵 $A$ 是长方形的，分块矩阵 $S = mat(delim: "[", O, A; A^T, O)$ 也是对称的:

#dmath[$ S bold(x) = lambda bold(x) quad "为" quad mat(delim: "[", O, A; A^T, O) mat(delim: "[", bold(y); bold(z)) = lambda mat(delim: "[", bold(y); bold(z)) quad "即" quad cases(A bold(z) = lambda bold(y) ",", A^T bold(y) = lambda bold(z) ".") $]

#sub[(a) 证明 $-lambda$ 也是特征值，对应特征向量 $(bold(y), -bold(z))$；]
#sub[(b) 证明 $A^T A bold(z) = lambda^2 bold(z)$，于是 $lambda^2$ 是 $A^T A$ 的特征向量；]
#sub[(c) 如果 $A = I$（$2 times 2$ 矩阵），求出 $S$ 的全部四个特征值和特征向量.]
#hei[19.] 在习题 18 中，如果 $A = mat(delim: "[", 1; 1)$，求出 $S$ 的全部三个特征值和特征向量.

#hei[20.] “对称矩阵 $S$ 的特征向量互相垂直” 的另一个证明. 分为两步:

#sub[(1) 设 $S bold(x) = lambda bold(x), S bold(y) = 0 bold(y)$，且 $lambda != 0$，那么 $bold(y)$ 属于 $S$ 的零空间，而 $bold(x)$ 属于 $S$ 的列空间. 由于 $\_\_\_\_$，所以两个子空间互相垂直. 请小心推导——这两个子空间为何正交?]
#sub[(2) 如果 $S bold(y) = beta bold(y)$，那么就对 $S - beta I$ 进行上一步的推导. 此时 $S - beta I$ 的一个特征值变为零，特征向量 $bold(x), bold(y)$ 保持不变——因而它们互相垂直.]
#hei[21.] 分别求出如下矩阵 $S$ 和 $B$ 的特征向量矩阵 $Q$ 与 $X$:

#dmath[$ S = mat(delim: "[", 0, d, 0; d, 0, 0; 0, 0, 1), quad B = mat(delim: "[", -d, 0, 1; 0, 1, 0; 0, 0, d) quad "的特征值均为" quad lambda = 1, d, -d. $]

证明当 $d = 1$ 时，$X$ 仍为非奇异矩阵，即使 $lambda = 1$ 是重复特征值. 此时特征向量互相垂直吗?

#pagebreak()