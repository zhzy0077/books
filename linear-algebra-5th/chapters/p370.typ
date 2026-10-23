#import "../theme.typ": *

几何与物理中也称为 “主轴定理”. 鉴于该定理的重要性, 这里给出详细证明. 为此分成三步引出证明:

(1) 通过一道例题, 展示 $bold(Lambda)$ 对角线上的实特征值 $lambda$ 和 $bold(Q)$ 各列中的标准正交特征向量 $bold(x)$;

(2) 证明对于互异特征值的情形, 前述关键结论成立;

(3) 在本节末尾, 证明对于重复特征值的情形, 该结论也是成立的.

#ti[例 1][已知对称矩阵 $bold(S) = mat(delim: "[", 1, 2; 2, 4)$ 以及 $bold(S) - lambda bold(I) = mat(delim: "[", 1 - lambda, 2; 2, 4 - lambda)$, 求 $bold(S)$ 的特征值 $lambda$ 与特征向量 $bold(x)$.]

#hei[解]　$bold(S) - lambda bold(I)$ 的行列式等于 $lambda^2 - 5 lambda$, 于是得到特征值为 0 和 5 (均为实数). 这两个值也能由直接观察得到: 由于 $bold(S)$ 是奇异矩阵, 所以 $lambda = 0$ 是一个特征值; 而 $lambda = 5$ 可由 $bold(S)$ 的迹 (对角元素之和) 求出: $0 + 5$ 等于 $1 + 4$.

两个特征向量是 $(2, -1)$ 和 $(1, 2)$——虽然正交, 但是尚未标准正交. $lambda = 0$ 对应的特征向量在 $bold(A)$ 的零空间中, $lambda = 5$ 对应的特征向量在其列空间中. 思考: 为什么零空间与列空间垂直呢? 线性代数基本定理的结论是零空间垂直于行空间, 而非列空间. 注意, 这里讨论的矩阵是对称的! 它的行空间与列空间相同. 因此 $bold(S)$ 的特征向量 $(2, -1)$ 与 $(1, 2)$ 必须 (而且也恰好) 垂直.

两个特征向量的长度为 $sqrt(5)$. 用 $sqrt(5)$ 去除这些特征向量, 得到单位向量. 将这些单位向量作为 $bold(Q)$ 的各列, 那么 $bold(Q)^(-1) bold(S) bold(Q)$ 就是 $bold(Lambda)$, 并且 $bold(Q)^(-1) = bold(Q)^T$:

#dmath[$ bold(Q)^(-1) bold(S) bold(Q) = 1/sqrt(5) mat(delim: "[", 2, -1; 1, 2) mat(delim: "[", 1, 2; 2, 4) 1/sqrt(5) mat(delim: "[", 2, 1; -1, 2) = mat(delim: "[", 0, 0; 0, 5) = bold(Lambda). $]

下面推广到 $n times n$ 的情形: 若 $bold(S) = bold(S)^T$ 且 $bold(S) bold(x) = lambda bold(x)$, 则 $lambda$ 为实数.

#dingli[实特征值　实对称矩阵 $bold(S)$ 的全部特征值都是实数.]

#hei[证]　设 $bold(S) bold(x) = lambda bold(x)$, 且设 $lambda$ 是复数 $a + i b$ (其中实部 $a$ 和虚部 $b$ 均为实数), 它的共轭复数为 $overline(lambda) = a - i b$. 类似地, 设 $bold(x)$ 的分量是复数, 改变虚部正负号后得到 $overline(bold(x))$. 因为 $overline(lambda bold(x)) = overline(lambda) overline(bold(x))$ 总成立, 所以可对 $bold(S) bold(x) = lambda bold(x)$ 取共轭, 并注意 $bold(S)$ 是实矩阵:

#dmath[$ bold(S) bold(x) = lambda bold(x) quad "推出" quad bold(S) overline(bold(x)) = overline(lambda) overline(bold(x)), quad "转置后得" quad overline(bold(x))^T bold(S) = overline(bold(x))^T overline(lambda). $]

分别用 $overline(bold(x))$ 和 $bold(x)$ 与头尾两式做内积, 得

#eqnum([$ overline(bold(x))^T bold(S) bold(x) = overline(bold(x))^T lambda bold(x) quad "以及" quad overline(bold(x))^T bold(S) bold(x) = overline(bold(x))^T overline(lambda) bold(x). $], 2)

由于两式左边相同, 所以右边也是相等的. 前式含 $lambda$, 后式含 $overline(lambda)$, 它们所乘的均为非零的长度平方, 即 $overline(bold(x))^T bold(x) = |x_1|^2 + |x_2|^2 + dots.c$. 因此 $lambda$ 一定等于 $overline(lambda)$, 即 $a + i b$ 等于 $a - i b$. 从而 $b = 0$, 亦即 $lambda = a$ 为实数. 证毕.

特征向量 $bold(x)$ 是由解实方程 $(bold(S) - lambda bold(I)) bold(x) = 0$ 得到的, 因此 $bold(x)$ 也是实的. 更重要的是它们互相垂直.

#pagebreak()