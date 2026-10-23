#import "../theme.typ": *

#secBracket[6.4　对 称 矩 阵]

#yaodian[
  #hei[1.] $n$ 阶对称矩阵 $bold(S)$ 有 $n$ 个实特征值 $lambda_i$ 和 $n$ 个标准正交特征向量 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$.

  #hei[2.] 每个实对称矩阵 $bold(S)$ 均可对角化: $bold(S) = bold(Q) bold(Lambda) bold(Q)^(-1) = bold(Q) bold(Lambda) bold(Q)^T$.

  #hei[3.] 对称矩阵 $bold(S)$ 的正特征值的个数等于正主元的个数.

  #hei[4.] 反称矩阵 $bold(A)$ (满足 $bold(A) = -bold(A)^T$) 具有虚特征值 $lambda_i$ 和标准正交 (复) 特征向量 $bold(q)_i$.

  #hei[5.] 对于复矩阵 $bold(S)$, 第 9.2 节会给出检验条件由 $bold(S) = bold(S)^T$ 变为 $bold(S) = overline(bold(S))^T$ 的原因.

  #dmath[$ bold(S) = mat(delim: "[", 0, i; -i, 0) = overline(bold(S))^T "有实特征值" lambda = 1, -1; $]

  #dmath[$ bold(A) = mat(delim: "[", 0, i; i, 0) = -overline(bold(A))^T "的特征值为" lambda = i, -i. $]
]

毫不夸张地说, 无论是在线性代数理论里, 还是在实际应用中, 对称矩阵 $bold(S)$ 都是最重要的. 接下来介绍关于矩阵对称性的关键问题, 以及分成两部分的回答.

当 $bold(S)$ 为对称矩阵时, $bold(S) bold(x) = lambda bold(x)$ 有何特别之处? 这一问题的涵义为: 当 $bold(S) = bold(S)^T$ 时, $bold(S)$ 的特征值 $lambda$ 与特征向量 $bold(x)$ 有何特殊性质?

对角化分解 $bold(S) = bold(X) bold(Lambda) bold(X)^(-1)$ 将显现 $bold(S)$ 的对称性. 该式两边转置为 $bold(S)^T = (bold(X)^(-1))^T bold(Lambda) bold(X)^T$, 由此得到提示: 既然 $bold(S) = bold(S)^T$, 那么两式右边相等, 前式中的 $bold(X)^(-1)$ 可能等于后式中的 $bold(X)^T$, 从而 $bold(X)^T bold(X) = bold(I)$. 这样当 $bold(S) = bold(S)^T$ 时, 特征向量矩阵 $bold(X)$ 的每一列 (即 $bold(S)$ 的各特征向量) 正交于其余各列. 以下就是关键结论:

#yaodian[
  (1) 对称矩阵仅有实特征值;

  (2) 对称矩阵的特征向量可选定标准正交形式.
]

对 $n$ 阶对称矩阵 $bold(S)$, 以上述 $n$ 个标准正交的特征向量作为列构成矩阵 $bold(X)$, 那么 $bold(S)$ 可对角化. 它的特征向量矩阵 $bold(X)$ 是正交矩阵 $bold(Q)$. 正交矩阵 $bold(Q)$ 满足 $bold(Q)^(-1) = bold(Q)^T$——前面对特征向量矩阵的猜测确实成立. 于是当选择标准正交特征向量时, 通常将 $bold(X)$ 改写成 $bold(Q)$.

为什么要用 “选择” 这个词呢? 因为特征向量未必是单位向量, 它们的长度可以按需要处理. 此处选出的是单位向量, 即长度为 1 的特征向量, 使得它们标准正交而不仅仅正交. 那么对于对称矩阵, $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$ 就变成了独特形式 $bold(S) = bold(Q) bold(Lambda) bold(Q)^T$.

#dingli[
  #hei[谱定理] 每个对称矩阵 $bold(S)$ 有分解式 $bold(S) = bold(Q) bold(Lambda) bold(Q)^T$, 其中 $bold(S)$ 的实特征值就是 $bold(Lambda)$ 的对角元素, 而标准正交特征向量就是 $bold(Q)$ 的各列:

  #dmath[$ "对称矩阵对角化" quad bold(S) = bold(Q) bold(Lambda) bold(Q)^(-1) = bold(Q) bold(Lambda) bold(Q)^T, quad "其中" quad bold(Q)^(-1) = bold(Q)^T. $ (1)]
]

易知 $bold(Q) bold(Lambda) bold(Q)^T$ 是对称的: 只需转置一下, 得到 $(bold(Q)^T)^T bold(Lambda)^T bold(Q)^T$, 又等于 $bold(Q) bold(Lambda) bold(Q)^T$ 了. 难的是证明对称矩阵 $bold(S)$ 有实特征值 $lambda_i$ 和标准正交特征向量 $bold(x)_i$. 上述结论通常称为 “谱定理”, 在

#pagebreak()