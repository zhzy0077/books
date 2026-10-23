#import "../theme.typ": *

由于 $bold(P)^4 = bold(I)$, 四次幂较为特殊. 当做四次 "循环置换" 时, $bold(P)^4 bold(x) = bold(x)$. $bold(P)^4 = bold(I)$ 的特征值为 $1, 1, 1, 1$. $bold(P)$ 的所有特征值的 4 次幂均为 1:

#dmath[$ 1^4 = 1, quad i^4 = 1, quad (-1)^4 = 1, quad (-i)^4 = 1. $]

进一步, 还可以得到更多的特征向量矩阵. 因为 $bold(P)$, $bold(P)^2$, $bold(P)^3$ 和 $bold(P)^4 = bold(I)$ 有同一个特征向量矩阵 $bold(F)$, 所以任意线性组合 $bold(C) = c_1 bold(P) + c_2 bold(P)^2 + c_3 bold(P)^3 + c_0 bold(I)$ 也具有同一特征向量矩阵:

#dmath[$ "循环矩阵" quad quad bold(C) = mat(delim: "[", c_0, c_1, c_2, c_3; c_3, c_0, c_1, c_2; c_2, c_3, c_0, c_1; c_1, c_2, c_3, c_0) $]

以傅里叶矩阵 $bold(F)$ 的各列为特征向量, 具有四个特征值

#dmath[$ c_0 + c_1 lambda + c_2 lambda^2 + c_3 lambda^3, quad lambda = 1, i, -1, -i, $]

$lambda = 1$ 给出的特征值为 $c_0 + c_1 + c_2 + c_3$.

以上给出的所有矩阵 (循环矩阵 $bold(C)$) 均满足其特征向量为矩阵 $bold(F)$ 中的列向量 (傅里叶向量). $bold(C)$ 的四个特征值也是已知的, 并可由下式表示:

#dmath[$ bold(C) "的四个特征值由" quad quad "傅里叶变换" bold(F) bold(c) "给出" quad quad bold(F) bold(c) = mat(delim: "[", 1, 1, 1, 1; 1, i, -1, -i; 1, -1, 1, -1; 1, -i, -1, i) mat(delim: "[", c_0; c_1; c_2; c_3) = mat(delim: "[", c_0 + c_1 + c_2 + c_3; c_0 + i c_1 - c_2 - i c_3; c_0 - c_1 + c_2 - c_3; c_0 - i c_1 - c_2 + i c_3) . $]

#hei[例 2] 上述想法同样适用于任意大小的傅里叶矩阵 $bold(F)$ 和对应的循环矩阵 $bold(C)$. 现在考虑看似平凡但十分有用的二阶方阵情形. 现在置换矩阵 $bold(P)$ 的特征值满足 $lambda^2 = 1$ 而不是 $lambda^4 = 1$, 因此 $lambda = plus.minus 1$ (无需考虑复数 i).

#dmath[$ "置换矩阵" quad quad bold(P) = mat(delim: "[", 0, 1; 1, 0) , quad "循环矩阵" quad quad bold(C) = c_0 bold(I) + c_1 bold(P) = mat(delim: "[", c_0, c_1; c_1, c_0) , $]

#dmath[$ "对应的傅里叶矩阵" quad quad bold(F) = mat(delim: "[", 1, 1; 1, -1) . $]

矩阵 $bold(C)$ 的特征值是 $c_0 + c_1$ 和 $c_0 - c_1$. 这些特征值是当向量 $bold(c)$ 为 $(c_0, c_1)$ 时, 通过傅里叶变换 $bold(F) bold(c)$ 得到的. 这个变换 $bold(F) bold(c)$ 给出了 $bold(C)$ 的特征值, 对任意阶数 $n$ 都适用.

值得注意的是循环矩阵 $bold(C)$ 的对角元素相同. 常数 $c_0$ 沿主对角线排列. 常数 $c_1$ 在对角线正上方, "回轮" 或 "环绕" 到 $bold(C)$ 的左下角. 这解释了 "循环" 一词的由来, 并表示这些矩阵是周期的或循环的. 甚至 $lambda$ 的幂次也是循环的, 因为由 $lambda^4 = 1$ 知 $lambda^5, lambda^6, lambda^7, lambda^8$ 分别为 $lambda, lambda^2, lambda^3, lambda^4$.

#pagebreak()