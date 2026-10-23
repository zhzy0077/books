#import "../theme.typ": *

#align(center, subsec[10.3  马尔可夫矩阵、人口和经济])

本节讨论限定于正矩阵 $bold(A)$, 即每个元素 $a_(i j) > 0$, 核心结论为: $bold(A)$ 的最大特征值为正实数, 对应的特征向量 (的各分量) 也如此. 在经济学、生态学、人口动力系统和随机游走过程中, 充分运用了上述结论:

$ "马尔可夫矩阵" quad lambda_max = 1, $

$ "人口动力系统" quad lambda_max > 1. $

$ "消耗矩阵" quad lambda_max < 1. $

$lambda_max$ 控制了 $bold(A)$ 的幂的增长速度. 首先看 $lambda_max = 1$ 的情形.

#subsec[马尔可夫矩阵]

对向量 $bold(u)_0$ 反复左乘如下矩阵 $bold(A)$:

$ "马尔可夫矩阵" quad bold(A) = mat(delim: "[", 0.8, 0.3; 0.2, 0.7), quad bold(u)_1 = bold(A) bold(u)_0, quad bold(u)_2 = bold(A) bold(u)_1 = bold(A)^2 bold(u)_0, quad dots.c, $

$k$ 步以后得到 $bold(u)_k = bold(A)^k bold(u)_0$. 向量 $bold(u)_1, bold(u)_2, bold(u)_3, dots.c$ 会趋于 “稳定状态” $bold(u)_oo = (0.6, 0.4)$. 该最终状态并不依赖于初始向量 $bold(u)_0$: 每一个 $bold(u)_0 = (a, 1 - a)$ 都收敛于 $bold(u)_oo$. 问题是, 这是为什么?

稳定状态方程 $bold(A) bold(u)_oo = bold(u)_oo$ 表示 $bold(u)_oo$ 为对应于特征值 1 的特征向量:

$ "稳定状态" quad mat(delim: "[", 0.8, 0.3; 0.2, 0.7) mat(delim: "[", 0.6; 0.4) = mat(delim: "[", 0.6; 0.4) = bold(u)_oo. $

用 $bold(A)$ 左乘 $bold(u)_oo$ 不会改变 $bold(u)_oo$. 但这不能解释为什么如此多的向量 $bold(u)_0$ 反复用 $bold(A)$ 左乘后都会收敛于 $bold(u)_oo$. 其他例子也许会有稳定状态, 但它可能不如上述例子那样引人注意:

$ "非马尔可夫矩阵" quad bold(B) = mat(delim: "[", 1, 0; 0, 2) quad "有一个不引人注意的稳定状态:" quad bold(B) mat(delim: "[", 1; 0) = mat(delim: "[", 1; 0). $

在这种情况下, 将初始向量换成 $bold(u)_0 = (0,1)$ 将给出 $bold(u)_1 = (0,2)$, $bold(u)_2 = (0,4), dots.c$, 第二个分量不断变成原来的两倍. 用特征值的语言来描述, $bold(B)$ 有特征值 $lambda = 1$ 和 2, 后者产生了不稳定性. $bold(u)_0$ 的沿不稳定特征向量方向的分量不断乘 $lambda$, 而 $|lambda| > 1$ 意味着分量大小呈爆炸式增长.

这一节会讨论确保矩阵 $bold(A)$ 对应某个稳定状态的两个特殊性质. 这些性质定义了一个正的马尔可夫矩阵, 而上述的 $bold(A)$ 是一个特例:

#yaodian[
  #grid(columns: (1fr, 2.4fr), align: (center + horizon, center + horizon),
    [#hei[马尔可夫矩阵 $bold(A)$]],
    [(1) $bold(A)$ 的每个元素都是正的: $a_(i j) > 0$; #linebreak() (2) $bold(A)$ 的每列元素求和都是 1.])
]

#pagebreak()