#import "../theme.typ": *

#h(1.5em) (c) 当 $G_0 = 0$ 和 $G_1 = 1$ 时, 证明 Gibonacci 数列趋于 $2/3$.

#hei[10.] 证明斐波那契数列 $0, 1, 1, 2, 3, dots.c$ 中, $F_(3 k)$ 为偶数.

习题 11—14 是关于可对角化的.

#hei[11.] 判断正误: 如果矩阵 $bold(A)$ 的特征值为 $2, 2, 5$, 那么该矩阵一定是

#h(1.5em) (a) 可逆的; #h(1.5em) (b) 可对角化的; #h(1.5em) (c) 不可对角化的.

#hei[12.] 判断正误: 如果矩阵 $bold(A)$ 的唯一特征向量是 $(1, 4)$ 的倍数, 那么 $bold(A)$

#h(1.5em) (a) 没有逆矩阵; #h(1.5em) (b) 有多重特征值; #h(1.5em) (c) 没有对角化分解式 $bold(X) bold(Lambda) bold(X)^(-1)$.

#hei[13.] 补全以下矩阵 $bold(A)$, 使得 $det bold(A) = 25$:

$ bold(A) = mat(delim: "[", 8, ; , 2) , quad mat(delim: "[", 9, 4; , 1) quad "或" quad mat(delim: "[", 10, 5; -5, ) . $

然后验证 $lambda = 5$ 是二重特征值, 于是 $"tr"(bold(A))$ 为 10, 进而 $bold(A) - lambda bold(I)$ 的行列式为 $(lambda - 5)^2$. 求出满足 $bold(A) bold(x) = 5 bold(x)$ 的一个特征向量 $bold(x)$. 由于不存在第二条特征向量直线, 所以这些矩阵均无法对角化.

#hei[14.] 对矩阵 $bold(A) = mat(delim: "[", 3, 1; 0, 3)$, 因为矩阵 $bold(A) - 3 bold(I)$ 的秩为 \_\_\_\_, 所以 $bold(A)$ 不可对角化. 但改变 $bold(A)$ 的一个元素便可使其能够对角化. 应变动哪个元素?

习题 15—19 是关于矩阵的幂的.

#hei[15.] 当 $k -> oo$ 时, $bold(A)^k = bold(X) bold(Lambda)^k bold(X)^(-1)$ 趋于零矩阵 $bold(O)$ 当且仅当 $bold(A)$ 的每个特征值 $lambda$ 的绝对值小于 \_\_\_\_. 下列矩阵中, 哪些满足 $k$ 次幂趋于 $bold(O)$?

$ bold(A)_1 = mat(delim: "[", 0.6, 0.9; 0.4, 0.1) , quad bold(A)_2 = mat(delim: "[", 0.6, 0.9; 0.1, 0.6) . $

#hei[16.] (推荐) 在习题 15 中, 求出可将 $bold(A)_1$ 对角化的矩阵 $bold(Lambda)$ 和 $bold(X)$. 当 $k -> oo$ 时, 极限 $bold(Lambda)^k$ 等于什么? $bold(X) bold(Lambda)^k bold(X)^(-1)$ 的极限又是什么? 在这个极限矩阵的各列中, 将会发现 \_\_\_\_.

#hei[17.] 求出可将习题 15 中的矩阵 $bold(A)_2$ 对角化的矩阵 $bold(Lambda)$ 和 $bold(X)$. 对于以下各向量 $bold(u)_0$, $bold(A)_2^(10) bold(u)_0$ 是什么?

$ bold(u)_0 = mat(delim: "[", 3; 1) , quad mat(delim: "[", 3; -1) , quad mat(delim: "[", 6; 0) . $

#hei[18.] 将如下矩阵 $bold(A)$ 对角化, 并计算 $bold(X) bold(Lambda)^k bold(X)^(-1)$, 由此证明以下 $bold(A)^k$ 的计算公式:

$ bold(A) = mat(delim: "[", 2, -1; -1, 2) , quad bold(A)^k = 1/2 mat(delim: "[", 1 + 3^k, 1 - 3^k; 1 - 3^k, 1 + 3^k) . $

#hei[19.] 将如下矩阵 $bold(B)$ 对角化, 并计算 $bold(X) bold(Lambda)^k bold(X)^(-1)$, 由此证明以下 $bold(B)^k$ 的计算公式:

#pagebreak()