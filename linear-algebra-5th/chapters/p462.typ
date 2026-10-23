#import "../theme.typ": *

结论: 若 $bold(J)^2 = bold(O)$, 则所有的子块大小必然为 $1 times 1$ 或 $2 times 2$. 当含三阶子块时, $bold(J)^2$ 不为零矩阵.

$bold(J)$ 以及 $bold(A)$ 的秩等于 1 的总个数. 最大的秩是 $n/2$. 这仅在恰有 $n/2$ 个子块、每个子块均是二阶且秩为 1 时发生.

接下来介绍应用数学中伟大的基——傅里叶基, 其离散形式为 $bold(R)^n$ 中的向量, 连续形式为函数空间中的函数. 由于它们都是固定值, 无需事先知道变换的矩阵 $bold(A)$, 这些基对应的 $bold(B)_"输入" = bold(B)_"输出"$ 很可能不能对角化 $bold(A)$. 但对应用数学中许多重要的矩阵 $bold(A)$, 矩阵 $bold(B)^(-1) bold(A) bold(B)$ 是接近对角的.

（4）设 $bold(B)_"输入" = bold(B)_"输出"$ 均为傅里叶矩阵 $bold(F)$ (见 (6) 式), 则 $bold(F) bold(x)$ 是 $bold(x)$ 的离散傅里叶变换.

这一部分将说明: (6) 式中以 $(1, lambda, lambda^2, lambda^3)$ 为列的傅里叶矩阵是重要的. 它们是便于使用的好的基向量.

问题: 哪些矩阵可以利用 $bold(F)$ 对角化? 我们先考虑特征向量 $(1, lambda, lambda^2, lambda^3)$, 再寻找具有这些特征向量的矩阵:

#eqnumL([若 $lambda^4 = 1$, 则], $ bold(P) bold(x) = mat(delim: "[", 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1; 1, 0, 0, 0) mat(delim: "[", 1; lambda; lambda^2; lambda^3) = lambda mat(delim: "[", 1; lambda; lambda^2; lambda^3) = lambda bold(x) . $, 5)

$bold(P)$ 是一个置换矩阵. 方程 $bold(P) bold(x) = lambda bold(x)$ 表明 $bold(x)$ 为特征向量, $lambda$ 为 $bold(P)$ 的特征值. 注意, 第 4 行成立的原因是 $1 = lambda^4$. $lambda$ 的这条性质是以下推导的基础.

(5) 式是否给出了四个不同特征值 $lambda$? 是的. 四个数 $lambda = 1, i, -1, -i$ 都满足 $lambda^4 = 1$. (已知 $i^2 = -1$. 对两边平方得 $i^4 = 1$.) 所以这四个值是 $bold(P)$ 的特征值, 每个值均对应一个特征向量 $bold(x) = (1, lambda, lambda^2, lambda^3)$. 特征向量矩阵 $bold(F)$ 对角化了置换矩阵 $bold(P)$:

#eqnum($ "特征值" "矩阵" bold(Lambda) mat(delim: "[", 1, , , ; , i, , ; , , -1, ; , , , -i) , quad quad "特征向量矩阵" "为傅里叶矩阵" bold(F) mat(delim: "[", 1, 1, 1, 1; 1, i, -1, -i; 1, i^2, 1, (-i)^2; 1, i^3, -1, (-i)^3) . $, 6)

$bold(F)$ 的各列是正交的, 因为它们是正交矩阵 $bold(P)$ 的特征向量. 但是这个傅里叶矩阵 $bold(F)$ 是复矩阵 (它是世界上最重要的复矩阵). 通过快速傅里叶变换 (fast Fourier transform, 简称为 FFT), 乘法 $bold(F) bold(x)$ 可以快速完成. FFT 将在第 9.3 节介绍.

关键问题: 除了矩阵 $bold(P)$, 还有哪些矩阵具有该特征向量矩阵 $bold(F)$? 容易知道 $bold(P)^2$, $bold(P)^3$ 和 $bold(P)^4$ 有与 $bold(P)$ 相同的特征向量. 矩阵 $bold(F)$ 可对角化 $bold(P)$ 的所有幂. $bold(P)^2$, $bold(P)^3$ 和 $bold(P)^4$ 的特征值分别为 $lambda^2, lambda^3, lambda^4$. 例如, $bold(P)^2 bold(x) = lambda^2 bold(x)$:

$ "当" lambda^4 = 1 "时," quad bold(P)^2 bold(x) = mat(delim: "[", 0, 0, 1, 0; 0, 0, 0, 1; 1, 0, 0, 0; 0, 1, 0, 0) mat(delim: "[", 1; lambda; lambda^2; lambda^3) = lambda^2 mat(delim: "[", 1; lambda; lambda^2; lambda^3) = lambda^2 bold(x). $



#pagebreak()
