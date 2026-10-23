#import "../theme.typ": *

$ bold(B) = mat(delim: "[", 5, 1; 0, 4) , quad bold(B)^k = mat(delim: "[", 5^k, 5^k - 4^k; 0, 4^k) . $

#hei[20.] 已知矩阵 $bold(A)$ 的对角化分解为 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$. 两边取行列式, 证明 $det bold(A) = det bold(Lambda) = lambda_1 lambda_2 dots.c lambda_n$. 上述快速证明方法仅在 $bold(A)$ 可以 \_\_\_\_ 时成立.

#hei[21.] 对矩阵

$ bold(X) = mat(delim: "[", a, b; c, d) , quad bold(Y) = mat(delim: "[", q, r; s, t) , $

将 $bold(X) bold(Y)$ 与 $bold(Y) bold(X)$ 的主对角线元素分别相加, 由此证明 $"tr"(bold(X) bold(Y)) = "tr"(bold(Y) bold(X))$. 现在取 $bold(Y)$ 为 $bold(Lambda) bold(X)^(-1)$, 则 $bold(X) bold(Lambda) bold(X)^(-1)$ 与 $bold(Lambda) bold(X)^(-1) bold(X) = bold(Lambda)$ 的迹相同. 这就证明了 $bold(A)$ 的迹等于 $bold(Lambda)$ 的迹, 即 $bold(A)$ 的特征值之和.

#hei[22.] $bold(A) bold(B) - bold(B) bold(A) = bold(I)$ 不可能成立, 这是因为等号左边的迹 = \_\_\_\_. 但可以找到一个消元矩阵 $bold(E)$, 使得 $bold(A) = bold(E)$ 且 $bold(B) = bold(E)^T$ 时有

$ bold(A) bold(B) - bold(B) bold(A) = mat(delim: "[", -1, 0; 0, 1) , quad "两边的迹均为零." $

#hei[23.] 设矩阵 $bold(A)$ 的对角化分解式为 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$, 将分块矩阵 $bold(B) = mat(delim: "[", bold(A), bold(O); bold(O), 2 bold(A))$ 对角化. 求出 $bold(B)$ 的特征值矩阵和特征向量 (分块) 矩阵.

#hei[24.] 考虑所有可被同一个固定的特征向量矩阵 $bold(X)$ 对角化的 $4 times 4$ 矩阵 $bold(A)$, 证明这些矩阵 $bold(A)$ 构成子空间 ($c bold(A)$ 和 $bold(A)_1 + bold(A)_2$ 均对应同一个特征向量矩阵 $bold(X)$). 当 $bold(X) = bold(I)$ 时, 该子空间是什么? 其维数是多少?

#hei[25.] 设 $bold(A)^2 = bold(A)$. 等号左边可看成 $bold(A)$ 左乘 $bold(A)$ 的每一列. 在 $bold(A)$ 的四个子空间中, 哪一个包含特征值 $lambda = 1$ 对应的特征向量? 哪一个包含 $lambda = 0$ 对应的特征向量? 根据这些子空间的维数, 可知 $bold(A)$ 具有完整的线性无关特征向量全体. 因此满足 $bold(A)^2 = bold(A)$ 的矩阵 $bold(A)$ 可以对角化.

#hei[26.] (推荐) 设矩阵 $bold(A)$ 为 $n$ 阶方阵, $bold(A) bold(x) = lambda bold(x)$. 当 $lambda = 0$ 时, $bold(x)$ 属于 $bold(A)$ 的零空间. 当 $lambda != 0$ 时, $bold(x)$ 属于 $bold(A)$ 的列空间. 这两个空间的维数之和为 $(n - r) + r = n$, 其中 $r$ 为 $bold(A)$ 的秩. 那么为什么不是每个 $n$ 阶方阵都有 $n$ 个线性无关的特征向量呢?

#hei[27.] 如下矩阵 $bold(A)$ 的特征值为 1 和 9, 而矩阵 $bold(B)$ 的特征值为 $-1$ 和 9:

$ bold(A) = mat(delim: "[", 5, 4; 4, 5) , quad bold(B) = mat(delim: "[", 4, 5; 5, 4) . $

利用 $bold(R) = bold(X) sqrt(bold(Lambda)) bold(X)^(-1)$, 其中 $sqrt(bold(Lambda))$ 表示将 $bold(Lambda)$ 的各元素取算术平方根, 求出 $bold(A)$ 的一个平方根矩阵 $bold(R)$. 为什么 $bold(B)$ 没有实的平方根矩阵?

#hei[28.] 如果矩阵 $bold(A)$ 与 $bold(B)$ 有相同的特征值以及相同的线性无关特征向量, 那么它们的 \_\_\_\_ 分解式也相同. 因此 $bold(A) = bold(B)$.

#hei[29.] 设将 $bold(A)$ 和 $bold(B)$ 对角化的特征向量矩阵均为 $bold(X)$, 即在分解式 $bold(A) = bold(X) bold(Lambda)_1 bold(X)^(-1)$ 和 $bold(B) = bold(X) bold(Lambda)_2 bold(X)^(-1)$ 中, $bold(A)$ 和 $bold(B)$ 有相同的特征向量. 证明 $bold(A) bold(B) = bold(B) bold(A)$.



#pagebreak()