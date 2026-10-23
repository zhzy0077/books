#import "../theme.typ": *

#align(center, subsec[8.3　搜索一组好基])

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #hei[1.]　对于一组新的输入基 (构成的矩阵) $bold(B)_"输入"$ 和输出基 (构成的矩阵) $bold(B)_"输出"$, 线性变换的矩阵 $bold(A)$ 变为 $bold(B)_"输出"^(-1) bold(A) bold(B)_"输入"$.

  #hei[2.]　若 $bold(B)_"输入"$ 与 $bold(B)_"输出"$ 均为 “$bold(A)$ 的广义特征向量” (构成的矩阵) 并记为矩阵 $bold(B)$, 则生成若尔当形 $bold(J) = bold(B)^(-1) bold(A) bold(B)$.

  #hei[3.]　傅里叶矩阵 $bold(F) = bold(B)_"输入" = bold(B)_"输出"$ 对角化每个循环矩阵 (使用快速傅里叶变换).

  #hei[4.]　正弦函数和余弦函数、勒让德 (Legendre) 多项式和切比雪夫 (Chebyshev) 多项式: 这些都是函数空间的很好的基向量.
]

这是本书中重要的一节. 不过大多数读者可能会跳过这一节, 或者学习进度没有到这一节. 前面的章节通过解释基向量的思想为本节做了准备. 第 6 章引入特征向量 $bold(x)$, 第 7 章求解奇异向量 $bold(v)$ 和 $bold(u)$. 这两种向量组是基向量的最佳选择, 而其他选择也非常有价值.

这里先回顾第 8.2 节的纯代数结果, 然后介绍好的基. 输入基向量构成 $bold(B)_"输入"$ 的列向量组, 输出基向量构成 $bold(B)_"输出"$ 的列向量组. $bold(B)_"输入"$ 和 $bold(B)_"输出"$ 总是可逆的——基向量组是线性无关的!

#hei[纯代数]　若 $bold(A)$ 为线性变换 $T$ 在标准正交基下的矩阵, 则

#eqnum($bold(B)_"输出"^(-1) bold(A) bold(B)_"输入"$, 1)

为 $T$ 在新基下的矩阵. 标准正交基向量是单位矩阵的列向量:

#dmath[$ bold(B)_"输入" = bold(I)_(n times n), quad quad bold(B)_"输出" = bold(I)_(m times m). $]

现在将选择特殊的基以使线性变换 $T$ 的矩阵比 $bold(A)$ 更加简洁. 当 $bold(B)_"输入" = bold(B)_"输出" = bold(B)$ 时, 方阵 $bold(B)^(-1) bold(A) bold(B)$ 与 $bold(A)$ 相似.

#hei[应用代数]　应用线性变换时通常要选择一组好基. 这里介绍普通向量空间的四个重要的选择, 以及函数向量空间的三个选择. 第 8.2 节已经介绍了特征向量和奇异向量给出对角矩阵 $bold(Lambda)$ 和 $bold(Sigma)$, 而下面的若尔当形是新的.

(1) 若 $bold(B)_"输入" = bold(B)_"输出"$ 均为特征向量矩阵 $bold(X)$, 则 $bold(X)^(-1) bold(A) bold(X)$ 为以特征值为对角线的对角矩阵 $bold(Lambda)$.

这个选择要求 $bold(A)$ 必须为方阵, 且有 $n$ 个线性无关的向量, 即 $bold(A)$ 必须是可对角化的. 当 $bold(B)_"输入" = bold(B)_"输出"$ 均为特征向量矩阵 $bold(X)$ 时, 线性变换 $T$ 的矩阵为对角矩阵 $bold(Lambda)$.

(2) 若 $bold(B)_"输入" = bold(V)$ 和 $bold(B)_"输出" = bold(U)$ 均由 $bold(A)$ 的奇异向量构成, 则 $bold(U)^(-1) bold(A) bold(V)$ 为对角矩阵 $bold(Sigma)$.

当 $bold(B)_"输入"$ 和 $bold(B)_"输出"$ 为奇异向量矩阵 $bold(V)$ 和 $bold(U)$ 时, $bold(Sigma)$ 为奇异值矩阵 $bold(Sigma)$ ($sigma_1, sigma_2, dots.c, sigma_r$ 在对角线上), 其中 $bold(B)_"输入"$ 和 $bold(B)_"输出"$ 的列向量组为 $bold(A)^T bold(A)$ 和 $bold(A) bold(A)^T$ 的正交特征向量. 此时由 $bold(A) = bold(U) bold(Sigma) bold(V)^T$ 给出 $bold(Sigma) = bold(U)^(-1) bold(A) bold(V)$.

(3) 若 $bold(B)_"输入" = bold(B)_"输出"$ 由 $bold(A)$ 的广义特征向量构成并记为矩阵 $bold(B)$, 则 $bold(B)^(-1) bold(A) bold(B)$ 为若尔当形 $bold(J)$.



#pagebreak()