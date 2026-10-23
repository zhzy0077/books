#import "../theme.typ": *

戈吕布和文·罗恩给出了针对黑森伯格矩阵结合第一个技巧使用 QR 方法的例子. 该例子计算了一步, 减去的矩阵是 $7 bold(I)$, 即将 $bold(A)$ 的所有对角元素减 7, 最后需加上 $7 bold(I)$ 以得到 $bold(A)_1$:

#dmath[$ "由" bold(A) = mat(delim: "[", 1, 2, 3; 4, 5, 6; 0, 0.001, 7) "可得" bold(A)_1 = mat(delim: "[", -0.54, 1.69, 0.835; 0.31, 6.53, -6.656; 0, 0.000 thin 02, 7.012). $]

将 $bold(A) - 7 bold(I)$ 作 QR 分解, 进而可以得到 $bold(A)_1 = bold(R) bold(Q) + 7 bold(I)$. 注意那个非常小的元素 0.000 02. 对角线上的 7.012 几乎是 $bold(A)_1$ 的一个精确特征值, 因此也几乎是 $bold(A)$ 的一个精确特征值. 对矩阵 $bold(A)_1$ 减去 $7.012 bold(I)$, 再施行一次 QR 方法将会得到非常好的精度.

对于大型稀疏矩阵的一些特征值, 可以考虑 ARPACK 程序库. 习题 25—27 描述了使基正交化的阿诺尔迪 (Arnoldi) 迭代法. 当 $bold(A)$ 是对称矩阵时, 每个步骤只有三项. 最终矩阵将变成三对角形式, 这对于计算特征值是非常有利的.

#align(center)[#image("../assets/fig-p580-icon.png", width: 5.5%)]
#xiti[习题集 11.3]

第 1—12 题都是关于线性方程组 $bold(A) bold(x) = bold(b)$ 的迭代方法的.

#ti[1.][将 $bold(A) bold(x) = bold(b)$ 变形为 $bold(x) = (bold(I) - bold(A)) bold(x) + bold(b)$, 给出分解矩阵 $bold(S)$ 和 $bold(T)$, 并写出控制迭代格式 $bold(x)_(k+1) = (bold(I) - bold(A)) bold(x)_k + bold(b)$ 收敛性的迭代矩阵 $bold(S)^(-1) bold(T)$.]

#ti[2.][如果 $lambda$ 是矩阵 $bold(A)$ 的特征值, 那么 \_\_\_\_ 是矩阵 $bold(B) = bold(I) - bold(A)$ 的特征值. 如果 $bold(A)$ 的实特征值取值从 \_\_\_\_ 到 \_\_\_\_, 那么 $bold(B)$ 的实特征值的绝对值将小于 1.]

#ti[3.][当矩阵 $bold(A) = mat(delim: "[", 2, -1; -1, 2)$ 时, 证明迭代格式 $bold(x)_(k+1) = (bold(I) - bold(A)) bold(x)_k + bold(b)$ 不收敛.]

#ti[4.][证明 $bold(B)^k$ 的范数不大于 $norm(bold(B))^k$. $norm(bold(B)) < 1$ 可以保证幂矩阵 $bold(B)^k$ 趋于零矩阵, 因此收敛. 可从 $|lambda|_max$ 小于 $norm(bold(B))$ 的角度来考虑.]

#ti[5.][证明如果 $bold(A)$ 奇异, 那么所有的分解 $bold(A) = bold(S) - bold(T)$ 对应的迭代格式 $bold(S) bold(x)_(k+1) = bold(T) bold(x)_k + bold(b)$ 均不收敛. 可以证明当 $bold(A) bold(x) = bold(0)$ 有 $bold(S)^(-1) bold(T) bold(x) = bold(x)$, 因此矩阵 $bold(B) = bold(S)^(-1) bold(T)$ 的特征值会出现 $lambda = 1$, 故分解失效.]

#ti[6.][将 (6) 式中对角元素 2 改为 3, 并求出雅可比迭代方法中矩阵 $bold(S)^(-1) bold(T)$ 的特征值:]

#dmath[$ bold(S) bold(x)_(k+1) = bold(T) bold(x)_k + bold(b) quad "为" quad mat(delim: "[", 3, 0; 0, 3) bold(x)_(k+1) = mat(delim: "[", 0, 1; 1, 0) bold(x)_k + bold(b). $]

#ti[7.][求应用于习题 6 的高斯-赛德尔方法中矩阵 $bold(S)^(-1) bold(T)$ 的特征值:]

#dmath[$ mat(delim: "[", 3, 0; -1, 3) bold(x)_(k+1) = mat(delim: "[", 0, 1; 0, 0) bold(x)_k + bold(b). $]

高斯-赛德尔迭代法中矩阵 $bold(S)^(-1) bold(T)$ 的 $|lambda|_max$ 会等于雅可比迭代法中相应矩阵的 $|lambda|_max^2$ 吗?

#pagebreak()