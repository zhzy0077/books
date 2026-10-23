#import "../theme.typ": *

#sub[(a) 根据对称性和正交性，证明 $S^2 = I$；]
#sub[(b) 上述 $S$ 的特征值可能取何值?]
#sub[(c) 特征值矩阵 $Lambda$ 会是什么? 对于这种 $Lambda$ 和任意正交矩阵 $Q$，$S$ 必为 $bold(Q) bold(Lambda) bold(Q)^T$.]
#ti[36.][如果矩阵 $S$ 是对称的，证明 $A^T S A$ 也是对称的（取 $A^T S A$ 转置即可）. 这里 $A$ 为 $m times n$ 矩阵，而 $S$ 为 $m times m$ 矩阵. $S$ 的特征值与 $A^T S A$ 的特征值是否相同? 若 $A$ 是可逆方阵，则称 $A^T S A$ 与 $S$ 合同.]

这两个矩阵的正的、负的和零特征值数目均相同，此即惯性定理.

#ti[37.][以下是一种证明 $a$ 介于对称矩阵 $S$ 的特征值 $lambda_1$ 与 $lambda_2$ 之间的方法:]

#grid(columns: (auto, 1fr), column-gutter: 14pt,
  align(center)[$ S = mat(a, b; b, c) $],
  [
    $ det(S - lambda I) = lambda^2 - a lambda - c lambda + a c - b^2, $ \
    对应一个开口向上的抛物线（自变量为 $lambda$）.
  ],
)

证明当 $lambda = a$ 时，$det(S - lambda I)$ 为负数. 故抛物线在 $lambda = a$ 的左右两侧穿越横轴. 而抛物线是在 $S$ 的两个特征值 $lambda_1, lambda_2$ 处穿过横轴的，从而 $a$ 介于 $lambda_1, lambda_2$ 之间.

同理可证，$n - 1$ 阶对称矩阵 $A$ 的 $n - 1$ 个特征值落在 $S = mat(A, b; b^T, c)$ 的 $n$ 个特征值之间（即 $A$ 的特征值均介于 $S$ 的最小特征值与最大特征值之间）.

#pagebreak()