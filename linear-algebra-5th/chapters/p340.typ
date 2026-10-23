#import "../theme.typ": *

(1) #hei[特征向量 (几何角度)]　$bold(A) bold(x) = lambda bold(x)$ 有非零解;

(2) #hei[特征值 (代数角度)]　$bold(A) - lambda bold(I)$ 的行列式为零.

数 $lambda$ 可能是单重特征值或多重特征值, 这里主要关注其重数. 大多数特征值重数为 1 (单重特征值), 于是对应单条特征向量直线, 且 $det(bold(A) - lambda bold(I))$ 不含二重因式.

对于某些矩阵, 特征值可以重复出现. 有两种不同的方式计算其重数:

(1) (几何重数, 记为 GM)　计算 $lambda$ 的线性无关特征向量的个数, 即 $bold(A) - lambda bold(I)$ 零空间的维数;

(2) (代数重数, 记为 AM)　计算特征值 $lambda$ 的重复次数, 只需观察 $det(bold(A) - lambda bold(I)) = 0$ 的 $n$ 个根.

对于每个 $lambda$, 总有 $"GM" <= "AM"$. 例如, 如果 $bold(A)$ 有特征值 $lambda = 4,4,4$, 那么特征值的 $"AM" = 3$, 而 $"GM"$ 可能取 $1,2$ 或 $3$.

以下矩阵 $bold(A)$ 的 AM 与 GM 不一致. 它的特征值 $lambda = 0$ 是重复的, 这是一个二重特征值 ($"AM" = 2$), 但只有一个线性无关的特征向量 ($"GM" = 1$):

#dmath[$ bold(A) = mat(delim: "[", 0, 1; 0, 0) quad "有" quad det(bold(A) - lambda bold(I)) = mat(delim: "|", -lambda, 1; 0, -lambda) = lambda^2 . $]

因为 $lambda^2 = 0$ 有二重根, 所以通常 “应该” 有两个特征向量. 二重因式 $lambda^2$ 表明 $"AM" = 2$. 但仅可解出一个特征向量 $bold(x) = (1,0)$, 于是 $"GM" = 1$. 当 GM 小于 AM 时, (线性无关的) 特征向量数量不足意味着 $bold(A)$ 不能对角化.

以下三个矩阵的特征向量均数量不足, 它们的二重特征值为 $lambda = 5$, 迹为 10, 而行列式为 25:

#dmath[$ bold(A) = mat(delim: "[", 5, 1; 0, 5) , quad mat(delim: "[", 6, -1; 1, 4) quad "或" quad mat(delim: "[", 7, 2; -2, 3) . $]

这些矩阵均满足 $det(bold(A) - lambda bold(I)) = (lambda - 5)^2$, 则代数重数为 $"AM" = 2$. 而 $bold(A) - 5 bold(I)$ 的秩为 $r = 1$, 从而几何重数为 $"GM" = 1$. 由此可知仅有一条特征向量直线对应 $lambda = 5$, 因此这些矩阵不可对角化.

#barHead[■ 要点回顾]

#hei[1.] 如果矩阵 $bold(A)$ 有 $n$ 个线性无关的特征向量 $bold(x)_1, bold(x)_2, dots.c, bold(x)_n$, 那么它们可组成特征向量矩阵 $bold(X)$ 的各列.

#dmath[$ bold(A) "用" bold(X) "对角化" quad quad bold(X)^(-1) bold(A) bold(X) = bold(Lambda), quad bold(A) = bold(X) bold(Lambda) bold(X)^(-1) . $]

#hei[2.] 矩阵 $bold(A)$ 的 $k$ 次幂为 $bold(A)^k = bold(X) bold(Lambda)^k bold(X)^(-1)$, 对应的特征向量矩阵仍为 $bold(X)$.

#hei[3.] 矩阵 $bold(A)^k$ 的特征值是矩阵 $bold(Lambda)^k$ 中的 $lambda_1^k, lambda_2^k, dots.c, lambda_n^k$.

#hei[4.] 初值为 $bold(u)_0$ 的递推式 $bold(u)_(k+1) = bold(A) bold(u)_k$ 的解为 $bold(u)_k = bold(A)^k bold(u)_0 = bold(X) bold(Lambda)^k bold(X)^(-1) bold(u)_0$:

#pagebreak()