#import "../theme.typ": *

#align(center, subsec[要点回顾])

#hei[1.] 称一组基是好的, 若以其为各列矩阵 $bold(B)$ 具有好的条件数 (第 11.2 节). 正交基是最佳的.

#hei[2.] 若 $bold(Lambda) = bold(B)^(-1) bold(A) bold(B)$ 为对角矩阵, 则 $bold(Lambda)$ 也对应一组好基. 而若尔当形 $bold(J)$ 则可能非常数值不稳定.

#hei[3.] 傅里叶矩阵对角化常系数周期方程.

#hei[4.] 由基 $1, x, x^2, dots.c$ 导出的 $bold(B)^T bold(B)$ 为希尔伯特矩阵: 不便于计算.

#hei[5.] 勒让德多项式和切比雪夫多项式是函数空间极好的基.

#xiti[习题集 8.3]

#hei[1.] 在例 1 中, $bold(J) - 3 bold(I)$ 的秩是多少? 它的零空间的维数是多少? 这个维数给出了对应于 $lambda = 3$ 的线性无关特征向量的个数.

　　$bold(J) - 3 bold(I)$ 的代数重数是 2, 因为 $det(bold(J) - lambda bold(I))$ 有重因子 $(lambda - 3)^2$; 几何重数是 1, 因为只有 1 个线性无关的特征向量.

#hei[2.] 如下矩阵 $bold(A)_1, bold(A)_2$ 与 $bold(J)$ 相似:

#dmath[$ bold(J) = mat(delim: "[", 0, 1; 0, 0) , quad bold(A)_1 = mat(delim: "[", 0, 4; 0, 0) , quad bold(A)_2 = mat(delim: "[", 4, -8; 2, -4) . $]

求解 $bold(A)_1 bold(B)_1 = bold(B)_1 bold(J)$ 和 $bold(A)_2 bold(B)_2 = bold(B)_2 bold(J)$, 以找到满足 $bold(J) = bold(B)_1^(-1) bold(A)_1 bold(B)_1$ 和 $bold(J) = bold(B)_2^(-1) bold(A)_2 bold(B)_2$ 的基变换矩阵 $bold(B)_1$ 和 $bold(B)_2$.

#hei[3.] 转置矩阵 $bold(J)^T$ 与 $bold(J)$ 有相同的三个特征值 2 (只有一个特征向量):

#dmath[$ bold(J) = mat(delim: "[", 2, 1, 0; 0, 2, 1; 0, 0, 2) , quad bold(J)^T = mat(delim: "[", 2, 0, 0; 1, 2, 0; 0, 1, 2) . $]

求出满足 $bold(J) = bold(B)^(-1) bold(J)^T bold(B)$ (也即 $bold(B) bold(J) = bold(J)^T bold(B)$) 的基变换矩阵 $bold(B)$.

#hei[4.] 如下矩阵 $bold(J)$ 和 $bold(K)$ 都是若尔当形:

#dmath[$ bold(J) = mat(delim: "[", 0, 1, 0, 0; 0, 0, 0, 0; 0, 0, 0, 1; 0, 0, 0, 0) , quad bold(K) = mat(delim: "[", 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 0; 0, 0, 0, 0) . $]

它们有同样的零特征值, 并且秩均为 2. 试证明: 没有可逆矩阵 $bold(B)$ 为 $bold(B) bold(K) = bold(J) bold(B)$ 的解, 因此 $bold(K)$ 不与 $bold(J)$ 相似.

#pagebreak()