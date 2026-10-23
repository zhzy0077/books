#import "../theme.typ": *

$bold(x)_j$. 接着分别用 $bold(A)$ 左乘和用 $lambda_(j-1)$ 乘新得的式子后, 再相减, 就消去了 $bold(x)_(j-1)$. 直到最后只剩下 $bold(x)_1$:

#eqnum($ (lambda_1 - lambda_2)(lambda_1 - lambda_3) dots.c (lambda_1 - lambda_j) c_1 bold(x)_1 = 0, quad "因此推出" quad c_1 = 0 . $, 3)

类似可得 $c_i = 0$, $i = 2,3, dots.c, j$. 当特征值 $lambda$ 都不相同时, 特征向量线性无关. 线性无关特征向量的全体可以构成特征向量矩阵 $bold(X)$ 的各列.

#grid(columns: (auto, 1fr),
  align(horizon)[#hei[例 2] ($bold(A)$ 的幂)],
  align(horizon)[上节中马尔可夫矩阵 $bold(A) = mat(delim: "[", 0.8, 0.3; 0.2, 0.7)$ 的特征值为 $lambda_1 = 1$ 和 $lambda_2 = 0.5$. 以下是 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$, 其中特征值在对角矩阵 $bold(Lambda)$ 的对角线上:],
)

#grid(columns: (auto, 1fr),
  align(horizon)[马尔可夫矩阵例子],
  align(center)[$ mat(delim: "[", 0.8, 0.3; 0.2, 0.7) = mat(delim: "[", 0.6, 1; 0.4, -1) mat(delim: "[", 1, 0; 0, 0.5) mat(delim: "[", 1, 1; 0.4, -0.6) = bold(X) bold(Lambda) bold(X)^(-1) . $],
)

特征向量 $(0.6, 0.4)$ 和 $(1,-1)$ 是 $bold(X)$ 的列, 也是 $bold(A)^2$ 的特征向量. 计算可知 $bold(A)^2$ 具有相同的特征向量矩阵 $bold(X)$, 以及 $bold(A)^2$ 的特征值矩阵为 $bold(Lambda)^2$:

#eqnumL([$bold(A)^2$ 具有相同的 $bold(X)$], $ bold(A)^2 = bold(X) bold(Lambda) bold(X)^(-1) bold(X) bold(Lambda) bold(X)^(-1) = bold(X) bold(Lambda)^2 bold(X)^(-1) . $, 4)

继续计算下去, 就可以明白为什么高次幂 $bold(A)^k$ 趋于 “稳定状态”:

#grid(columns: (auto, 1fr),
  align(horizon)[$bold(A)$ 的幂],
  align(center)[$ bold(A)^k = bold(X) bold(Lambda)^k bold(X)^(-1) = mat(delim: "[", 0.6, 1; 0.4, -1) mat(delim: "[", 1^k, 0; 0, (0.5)^k) mat(delim: "[", 1, 1; 0.4, -0.6) . $],
)

随着 $k$ 变大, $(0.5)^k$ 变得越来越小. 取极限时, 它就化为零. 此时上式的极限为 $bold(A)^oo$:

#grid(columns: (auto, 1fr),
  align(horizon)[令 $k -> oo$],
  align(center)[$ bold(A)^oo = mat(delim: "[", 0.6, 1; 0.4, -1) mat(delim: "[", 1, 0; 0, 0) mat(delim: "[", 1, 1; 0.4, -0.6) = mat(delim: "[", 0.6, 0.6; 0.4, 0.4) . $],
)

该极限的两列都是特征向量 $bold(x)_1$. $bold(A)^oo$ 在本章一开始就出现了, 现在又由直接计算矩阵的乘方得到了它.

#yaodian[
  #align(center)[#hei[提问:] 何时有 $bold(A)^k ->$ 零矩阵? #h(2em) #hei[回答:] 当全部 $|lambda| < 1$ 时.]
]

#subsec[相似矩阵: 特征值相同]

假设特征值矩阵 $bold(Lambda)$ 已固定. 随着特征向量矩阵 $bold(X)$ 的变化, 可得到一族形如 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$ 的矩阵——它们都有相同的特征值, 为 $bold(Lambda)$ 中的对角元素. 所有这些矩阵 (具有相同的 $bold(Lambda)$) 具有相似关系.

此概念可以推广到不可对角化的矩阵. 任意选一个常值矩阵 $bold(C)$ (不一定是对角矩阵 $bold(Lambda)$), 考察所有形如 $bold(A) = bold(B) bold(C) bold(B)^(-1)$ 的矩阵, 其中要求 $bold(B)$ 为可逆矩阵. 也称矩阵 $bold(A)$ 与 $bold(C)$ 相似.

#pagebreak()