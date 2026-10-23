#import "../theme.typ": *

#hei[3.]　根据习题 1 中的 $bold(U), bold(V)$ 与 $Sigma$, 求出正交矩阵 $bold(Q) = bold(U) bold(V)^T$ 和对称矩阵 $bold(S) = bold(V) Sigma bold(V)^T$. 验证极分解 $bold(A) = bold(Q) bold(S)$. 由于 \_\_\_\_\_\_, 所以该 $bold(S)$ 只是半正定的. 检验 $bold(S)^2 = bold(A)$.

#hei[4.]　对习题 1, 计算广义逆 $bold(A)^+ = bold(V) Sigma^+ bold(U)^T$. 对角矩阵 $Sigma^+$ 包含 $1/sigma_1$. 将图 7.8 中 $bold(A)$ 的四个子空间重新命名为 $bold(A)^+$ 的四个子空间. 分别计算到 $bold(A)$ 的行空间和列空间上的投影矩阵 $bold(A)^+ bold(A)$ 与 $bold(A) bold(A)^+$.

习题 5—9 是关于可逆矩阵的奇异值分解的.

#hei[5.]　对矩阵

#dmath[$ bold(A) = mat(delim: "[", 3, 3; -1, 1), $]

计算 $bold(A)^T bold(A)$ 及其特征值、单位特征向量 $bold(v)_1$ 与 $bold(v)_2$. 矩阵 $bold(A)$ 的奇异值 $sigma_1$ 与 $sigma_2$ 是什么?

#hei[6.]　对习题 5 中的矩阵 $bold(A)$, 乘积 $bold(A) bold(A)^T$ 和 $bold(A)^T bold(A)$ 有相同的特征值 $sigma_1^2$ 与 $sigma_2^2$. 求出单位特征向量 $bold(u)_1$ 与 $bold(u)_2$, 并写出奇异值分解:

#dmath[$ bold(A) = mat(delim: "[", 3, 3; -1, 1) = mat(delim: "[", bold(u)_1, bold(u)_2) mat(delim: "[", sigma_1, ; , sigma_2) mat(delim: "[", bold(v)_1, bold(v)_2)^T. $]

#hei[7.]　在习题 6 中, 通过计算列向量左乘行向量, 证明 $bold(A) = sigma_1 bold(u)_1 bold(v)_1^T + sigma_2 bold(u)_2 bold(v)_2^T$. 由 $bold(A) = bold(U) Sigma bold(V)^T$ 证明每个秩为 $r$ 的矩阵是 $r$ 个秩 1 矩阵之和.

#hei[8.]　对习题 5 中的矩阵 $bold(A)$, 根据 $bold(U), bold(V)$ 与 $Sigma$ 求出正交矩阵 $bold(Q) = bold(U) bold(V)^T$ 与对称矩阵 $bold(K) = bold(U) Sigma bold(U)^T$. 验证 $bold(A) = bold(K) bold(Q)$ 就是 $bold(A)$ 的逆序极分解.

#hei[9.]　对习题 5 中的矩阵 $bold(A)$, 由于 \_\_\_\_, 所以 $bold(A)$ 的广义逆与 \_\_\_\_ 的广义逆相同.

习题 10—11 是关于 $1 times 3$ 长方形矩阵的奇异值分解的计算和应用的.

#hei[10.]　当 $bold(A) = mat(delim: "[", 3, 4, 0)$ 时, 计算 $bold(A)^T bold(A)$ 与 $bold(A) bold(A)^T$ 及其特征值、单位特征向量. $bold(A)$ 的奇异值是什么?

#hei[11.]　对习题 10 中的矩阵 $bold(A)$, 写出 $bold(A)$ 的奇异值分解:

#dmath[$ bold(A) = mat(delim: "[", 3, 4, 0) = mat(delim: "[", bold(u)_1) mat(delim: "[", sigma_1, 0, 0) mat(delim: "[", bold(v)_1, bold(v)_2, bold(v)_3)^T. $]

写出 $bold(A)$ 的广义逆 $bold(V) Sigma^+ bold(U)^T$. 计算 $bold(A) bold(A)^+$ 与 $bold(A)^+ bold(A)$:

#align(center)[广义逆 $ bold(A)^+ = mat(delim: "[", ,; ,; ,) = mat(delim: "[", bold(v)_1, bold(v)_2, bold(v)_3) mat(delim: "[", 1/sigma_1; 0; 0) mat(delim: "[", bold(u)_1)^T. $]

#hei[12.]　唯一一个没有主元也没有奇异值的 $2 times 3$ 矩阵 $bold(A)$ 是什么? 该矩阵的 SVD 中的 $Sigma$ 是什么? 对应的 $bold(A)^+$ 为零矩阵, 它是什么形状的?

#pagebreak()