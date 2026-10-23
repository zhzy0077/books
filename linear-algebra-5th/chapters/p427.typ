#import "../theme.typ": *

#hei[5.]　对样本协方差矩阵

$ bold(S) = mat(delim: "[", 4, 2, 0; 2, 4, 1; 0, 1, 1), $

求出相关矩阵 $bold(D) bold(S) bold(D)$, 其对角元素为 1. 这里 $bold(D)$ 为正对角矩阵 (对角线元素均大于零), 由其产生上述对角元素 1.

#hei[6.]　确定对角矩阵 $bold(D)$, 使其由下述 $bold(S)$ 可得 $bold(D) bold(S) bold(D)$, 并求出相关系数 $c_(i j)$:

$ bold(S) = mat(delim: "[", s_1^2, s_(1 2), s_(1 3); s_(1 2), s_2^2, s_(2 3); s_(1 3), s_(2 3), s_3^2), quad bold(D) bold(S) bold(D) = mat(delim: "[", 1, c_(1 2), c_(1 3); c_(1 2), 1, c_(2 3); c_(1 3), c_(2 3), 1). $

#hei[7.]　设 $5 times 10$ 矩阵 $bold(A)_0$ 对应 10 年间 5 门课程的平均分. 如何求出中心化矩阵 $bold(A)$ 以及样本协方差矩阵 $bold(S)$? 从求出的 $bold(S)$ 的第一特征向量可获知什么信息?

#pagebreak()