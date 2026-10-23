#import "../theme.typ": *

异值 $sigma_1, sigma_2, dots.c, sigma_r$, $bold(V)$ 为 $n times n$ 正交矩阵.
条件: 无. 在奇异值分解 (SVD) 中, $bold(A) bold(A)^T$ 的特征向量含于 $bold(U)$, $bold(A)^T bold(A)$ 的特征向量含于 $bold(V)$; 奇异值为 $sigma_i = sqrt(lambda_i (bold(A)^T bold(A))) = sqrt(lambda_i (bold(A) bold(A)^T))$, 它们按从大到小的顺序排列为 $sigma_1 >= sigma_2 >= dots.c >= sigma_r > 0$. 按列-行乘法有

#dmath[$ bold(A) = bold(U) bold(Σ) bold(V)^T = sigma_1 bold(u)_1 bold(v)_1^T + sigma_2 bold(u)_2 bold(v)_2^T + dots.c + sigma_r bold(u)_r bold(v)_r^T. $]

当 $bold(S)$ 为对称正定矩阵时, $bold(U) = bold(V) = bold(Q)$ 且 $bold(Σ) = bold(Λ)$, 于是有分解式 $bold(S) = bold(Q) bold(Λ) bold(Q)^T$. 见第 7.2 节.

#hei[11.] $bold(A)^+ = bold(V) bold(Σ)^+ bold(U)^T$, 其中 $bold(V)$ 为 $n times n$ 正交矩阵, $bold(Σ)^+$ 为 $bold(Σ)$ 的 $n times m$ 广义逆且对角元素为 $1/sigma_1, 1/sigma_2, dots.c, 1/sigma_r$, $bold(U)$ 为 $m times m$ 正交矩阵.
条件: 无. 广义逆 $bold(A)^+$ 满足 $bold(A)^+ bold(A)$ 为到 $bold(A)$ 的行空间上的投影矩阵, 而 $bold(A) bold(A)^+$ 为到 $bold(A)$ 的列空间上的投影矩阵. 当 $bold(A)$ 为可逆矩阵时, $bold(A)^+ = bold(A)^(-1)$. $bold(A) bold(x) = bold(b)$ 的最短最小二乘解为 $bold(x)^+ = bold(A)^+ bold(b)$, 它是 $bold(A)^T bold(A) bold(x)^+ = bold(A)^T bold(b)$ 的解. 见第 7.4 节.

#hei[12.] $bold(A) = bold(Q) bold(S)$, 其中 $bold(Q)$ 为正交矩阵, $bold(S)$ 为对称正定矩阵.
条件: $bold(A)$ 是可逆矩阵. 上述极分解满足 $bold(S)^2 = bold(A)^T bold(A)$. 当 $bold(A)$ 为奇异矩阵时, 因子 $bold(S)$ 是半正定的. 反向极分解 $bold(A) = bold(K) bold(Q)$ 满足 $bold(K)^2 = bold(A) bold(A)^T$. 两种极分解中的 $bold(Q)$ 均满足 $bold(Q) = bold(U) bold(V)^T$, 其中 $bold(U), bold(V)$ 源自奇异值分解. 见第 7.4 节.

#hei[13.] $bold(A) = bold(U) bold(Λ) bold(U)^(-1)$, 其中 $bold(U)$ 为酉矩阵, $bold(Λ)$ 为特征值矩阵, $bold(U)^(-1) = bold(U)^H = overline(bold(U))^T$.
条件: $bold(A)$ 是正规矩阵, 即满足 $bold(A)^H bold(A) = bold(A) bold(A)^H$. $bold(A)$ 的标准正交特征向量 (可能是复向量) 构成 $bold(U)$ 的列向量. $bold(A)$ 的特征值一般为复数. 满足 $bold(S) = bold(S)^H$ 的埃尔米特矩阵 $bold(S)$ 的特征值 $lambda$ 才是实数. 见第 6.4 节.

#hei[14.] $bold(A) = bold(Q) bold(T) bold(Q)^(-1)$, 其中 $bold(Q)$ 为酉矩阵, 三角形矩阵 $bold(T)$ 的对角元素为 $bold(A)$ 的特征值, $bold(Q)^(-1) = bold(Q)^H$.
条件: 这就是任意方阵 $bold(A)$ 的舒尔三角形分解. 矩阵 $bold(Q)$ 的列向量为标准正交向量, 使得 $bold(Q)^(-1) bold(A) bold(Q)$ 为三角形矩阵. 见第 6.4 节.

#hei[15.] $bold(F)_n = mat(bold(I), bold(D); bold(I), -bold(D)) mat(bold(F)_(n/2); bold(F)_(n/2)) mat("偶-奇"; "置换矩阵")$, 这是递归快速傅里叶变换的一步.
条件: $bold(F)_n$ 是傅里叶矩阵, 其中的元素 $w^(j k)$ 满足 $w^n = 1$, 于是 $bold(F)_n overline(bold(F))_n = n bold(I)$. 对角矩阵 $bold(D)$ 的对角元素为 $1, w, dots.c, w^(n/2 - 1)$. 当 $n = 2^l$ 时, 快速傅里叶变换通过 $l$ 个规模依次减半对应的 $bold(D)$, 仅需 $1/2 n l = 1/2 n log_2 n$ 次乘法即可算出 $bold(F)_n bold(x)$. 见第 9.3 节.

#pagebreak()