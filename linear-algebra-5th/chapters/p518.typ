#import "../theme.typ": *

将初始向量 $bold(u)_0$ 写成 $bold(x)_1$ 和 $bold(x)_2$ 的线性组合, 此时组合系数为 1 和 0.18:

#dmath[$ "特征向量的线性组合" quad quad bold(u)_0 = mat(delim: "[", 0.02; 0.98) = mat(delim: "[", 0.2; 0.8) + 0.18 mat(delim: "[", -1; 1). $]

现在用 $bold(A)$ 左乘 $bold(u)_0$ 以计算 $bold(u)_1$, 即对特征向量 $bold(x)_1, bold(x)_2$ 分别乘 $lambda_1 = 1$ 和 $lambda_2 = 0.75$:

#dmath[$ "每个" bold(x)_i "都乘对应的" lambda_i quad quad bold(u)_1 = 1 mat(delim: "[", 0.2; 0.8) + 0.75 dot 0.18 mat(delim: "[", -1; 1). $]

每过一个月, 向量 $bold(x)_2$ 都多乘一个 $lambda_2 = 0.75$, 特征向量 $bold(x)_1$ 不变:

#dmath[$ k "个月以后" quad quad bold(u)_k = bold(A)^k bold(u)_0 = 1^k mat(delim: "[", 0.2; 0.8) + 0.75^k dot 0.18 mat(delim: "[", -1; 1). $]

这个等式揭示了 $bold(u)_k$ 的实质. $lambda_1 = 1$ 对应的特征向量 $bold(x)_1$ 是稳定的. 因为 $lambda_2 = 0.75$ 满足 $|lambda_2| < 1$, $bold(u)_k$ 中的另一个特征向量 $bold(x)_2$ 最终消失了. 用 $bold(A)$ 左乘的次数越多, 所得向量就越接近 $bold(u)_oo = (0.2, 0.8)$. 极限情形为, $2/10$ 的租用车在市区, $8/10$ 的租用车在市区外. 这是马尔可夫链的特征, 即使将初始向量换成 $bold(u)_0 = (0,1)$ 也是如此:

#dingli[
  设 $bold(A)$ 是一个正的 $n$ 阶马尔可夫矩阵 (元素 $a_(i j) > 0$, 每列元素之和为 1), 则 $lambda_1 = 1$ 比其他任何特征值都大. 对应的特征向量 $bold(x)_1$ 是稳定状态: 设 $bold(u)_0 = bold(x)_1 + c_2 bold(x)_2 + dots.c + c_n bold(x)_n$, 则

  #dmath[$ bold(u)_k = bold(x)_1 + c_2 lambda_2^k bold(x)_2 + dots.c + c_n lambda_n^k bold(x)_n quad "总是趋于" quad bold(u)_oo = bold(x)_1. $]
]

首先注意, $lambda = 1$ 必定是上述 $bold(A)$ 的一个特征值. 原因: $bold(A) - bold(I)$ 的每列元素之和为 $1 - 1 = 0$, 则 $bold(A) - bold(I)$ 的所有行和为零行, 表明这些行是线性相关的. 因此 $bold(A) - bold(I)$ 是奇异的, 其行列式为零, 于是 $lambda = 1$ 是 $bold(A)$ 的一个特征值.

其次, 没有满足 $|lambda| > 1$ 的特征值 $lambda$. 假设这样的特征值存在, 则幂 $bold(A)^k$ 就会不断增长. 但 $bold(A)^k$ 也是马尔可夫矩阵! 即 $bold(A)^k$ 有正的元素, 而且每列元素之和仍然为 1——这没有留下让元素变大的空间.

某个特征值 $lambda$ 满足 $|lambda| = 1$ 的其他情形也受到了很多关注.

#hei[例 2]  由于特征值 $lambda_2 = -1$, 矩阵 $bold(A) = mat(delim: "[", 0, 1; 1, 0)$ 没有稳定状态.

将这个矩阵用于例 1, 可知每个月市区与市区外的租用车互换位置. 幂 $bold(A)^k$ 在 $bold(A)$ 和 $bold(I)$ 之间交替取值. 每次用 $bold(A)$ 左乘向量时, 向量分解式中的第二个特征向量 $bold(x)_2 = (-1,1)$ 都乘 $lambda_2 = -1$——所得向量长度不会变小, 因此没有稳定状态.

假设 $bold(A)$ 或 $bold(A)$ 的任何幂的所有元素都是正的——不允许为零. 在这种 “常规” 或 “原始” 情况下, $lambda = 1$ 严格大于任何其他特征值. 当 $k -> oo$ 时, 幂 $bold(A)^k$ 趋于每列都为稳定状态的秩 1 矩阵.

#pagebreak()