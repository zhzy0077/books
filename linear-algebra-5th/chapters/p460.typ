#import "../theme.typ": *

设 $bold(A)$ 为 $n$ 阶方阵, 且线性无关的特征向量为 $s$ 个. (若 $s = n$, 则 $bold(B) = bold(X)$ 且 $bold(J) = bold(Lambda)$.) 当 $s < n$ 时, 若尔当构造了 $n - s$ 个额外的 “广义” 特征向量, 目的是使若尔当形 $bold(J)$ 尽可能对角化:

(i) 沿着 $bold(J)$ 的对角线有 $s$ 个方块;

(ii) 每个方块对应一个特征值 $lambda$ 和一个特征向量, 并且对角线正上方相邻元素均为 1.

理想情形是有 $n$ 个 $1 times 1$ 的块, 每个都包含一个特征值, 则 $bold(J)$ 为对角矩阵 $bold(Lambda)$.

#hei[例 1]　下列若尔当矩阵 $bold(J)$ 的特征值 $lambda = 2, 2, 3, 3$ (两个双重特征值):

#grid(
  columns: (auto, auto),
  column-gutter: 2.5em,
  align: (right + horizon, left + horizon),
  $bold(J) = mat(delim: "[", 2, , , ; , 2, , ; , , 3, 1; , , 0, 3)$,
  [2 个 $1 times 1$ 子块, \ 1 个 $2 times 2$ 子块, \ 3 个特征向量, \ 特征值为 $2, 2, 3, 3$.],
)

由于 $bold(J)$ 为上三角形矩阵, 这些特征值沿着对角线分布. 特征值 $lambda = 2$ 对应两个线性无关特征向量, 但 $lambda = 3$ 仅对应一个特征向量. 这对所有与 $bold(J)$ 相似的矩阵 $bold(C) = bold(B) bold(J) bold(B)^(-1)$ 都是成立的. $lambda = 2$ 对应的两个特征向量为 $bold(x)_1 = (1, 0, 0, 0)$ 和 $bold(x)_2 = (0, 1, 0, 0)$, $lambda = 3$ 对应的特征向量为 $bold(x)_3 = (0, 0, 1, 0)$. 该若尔当阵的 “广义特征向量” 为第四个标准基向量 $bold(x)_4 = (0, 0, 0, 1)$. $bold(J)$ 的特征向量 (标准的和广义的) 恰为单位矩阵 $bold(I)$ 的列向量 $bold(x)_1, bold(x)_2, bold(x)_3, bold(x)_4$.

注意, $(bold(J) - 3 bold(I)) bold(x)_4 = bold(x)_3$, 即广义特征向量 $bold(x)_4$ 可与特征向量 $bold(x)_3$ 关联. 真正的特征向量 $bold(x)_4$ 应满足 $(bold(J) - 3 bold(I)) bold(x)_4 = 0$, 但这样的 $bold(x)_4$ 不存在.

每个相似于 $bold(J)$ 的矩阵 $bold(C) = bold(B) bold(J) bold(B)^(-1)$ 都有三个特征向量 $bold(b)_1, bold(b)_2, bold(b)_3$, 且为 $bold(B)$ 的前三列. $bold(B)$ 的第 4 列为 $bold(C)$ 的广义特征向量 $bold(b)_4$, 与 $bold(b)_3$ 相关联. 由 $bold(B) bold(x)_3 = bold(b)_3$ 和 $bold(B) bold(x)_4 = bold(b)_4$ 易知 $(bold(C) - 3 bold(I)) bold(b)_4 = bold(b)_3$, 证明如下:

#eqnum($ (bold(B) bold(J) bold(B)^(-1) - 3 bold(I)) bold(b)_4 = bold(B) bold(J) bold(x)_4 - 3 bold(B) bold(x)_4 = bold(B)(bold(J) - 3 bold(I)) bold(x)_4 = bold(B) bold(x)_3 = bold(b)_3 . $, 2)

若尔当定理表明, 每个方阵 $bold(A)$ 均对应一组特征向量和广义特征向量, 以这些向量为列向量构造 $bold(B)$, 则矩阵 $bold(B)^(-1) bold(A) bold(B) = bold(J)$ 为若尔当形. 基于例 1 可给出 $bold(J)$ 的一个描述.

#subsec[若尔当形]

对每个 $n$ 阶方阵 $bold(A)$, 我们希望找到一个可逆矩阵 $bold(B)$ 以使 $bold(B)^(-1) bold(A) bold(B)$ 尽可能对角化. 当 $bold(A)$ 有 $n$ 个线性无关的特征向量, 且用它构成矩阵 $bold(B)$ 的各列时, 记 $bold(B) = bold(X)$, 则矩阵 $bold(X)^(-1) bold(A) bold(X)$ 为对角的. 这是 $bold(A)$ 可以对角化时的若尔当形. 一般情形下, 特征向量不足, 无法得到对角矩阵 $bold(Lambda)$.

设 $bold(A)$ 有 $s$ 个线性无关的特征向量 ($s < n$), 则它相似于一个具有 $s$ 个子块的若尔当矩阵. 每个子块的对角线元素均为特征值, 且对角线正上方相邻元素均为 1. 这个子块恰好对应 $bold(A)$ 的一个特征向量. 此时, $bold(B)$ 既包含常规特征向量, 也包含广义特征向量.

当 $bold(A)$ 有 $n$ 个特征向量时, 所有 $n$ 个子块均为 $1 times 1$ 的. 此时 $bold(J) = bold(Lambda)$.

对任意方阵 $bold(A) = bold(B) bold(J) bold(B)^(-1)$, 可以利用若尔当形求微分方程 $(d bold(u))/(d t) = bold(A) bold(u)$, 解 $e^(bold(A) t) bold(u)(0)$ 变为 $bold(u)(t) = bold(B) e^(bold(J) t) bold(B)^(-1) bold(u)(0)$. $bold(J)$ 是三角形的, 其矩阵指数 $e^(bold(J) t)$ 包含了 $e^(lambda t)$ 乘幂函数 $1, t, dots.c, t^(s - 1)$.

#pagebreak()