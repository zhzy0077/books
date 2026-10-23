#import "../theme.typ": *

一个极端情形, 如果 $bold(A)^T bold(A) = bold(A) bold(A)^T$ (即 $bold(A)$ 为 “正规矩阵”), 那么 $bold(A)$ 的特征向量正交, 且 $bold(A)$ 的特征值完全稳定.

相比之下, 任意矩阵的奇异值是稳定的. 它们的变化不会超过 $bold(A)$ 的变化. 此例中, 新的奇异值为 $3, 2, 1$ 和 $1/(60 000)$, 矩阵 $bold(U)$ 和 $bold(V)$ 保持不变. $bold(A)$ 的 SVD 中新的第四项为 $sigma_4 u_4 v_4^T$, 其中十五个元素都为零, 唯一的非零元素 $sigma_4 = 1/(60 000)$ 也很小.

#hei[$bold(A)$ 的奇异向量与 $bold(S) = bold(A)^T bold(A)$ 的特征向量]

(5) 式与 (6) 式同时 “证明” 了 SVD. 奇异向量 $v_i$ 是 $bold(S) = bold(A)^T bold(A)$ 的特征向量 $q_i$. $bold(S)$ 的特征值 $lambda_i$ 与 $bold(A)$ 对应的奇异值的平方 $sigma_i^2$ 相等. $bold(S)$ 的秩 $r$ 等于 $bold(A)$ 的秩. 利用特征向量与奇异向量的展开式是完全对应的.

#dingli[
  #grid(
    columns: (auto, auto),
    column-gutter: 2em,
    row-gutter: 3pt,
    align: (right + horizon, center + horizon),
    [对称矩阵 $bold(S)$], [$ bold(S) = bold(Q) bold(Lambda) bold(Q)^T = lambda_1 q_1 q_1^T + lambda_2 q_2 q_2^T + dots.c + lambda_r q_r q_r^T, $],
    [任意矩阵 $bold(A)$], [$ bold(A) = bold(U) bold(Sigma) bold(V)^T = sigma_1 u_1 v_1^T + sigma_2 u_2 v_2^T + dots.c + sigma_r u_r v_r^T. $],
  )
]

各 $q_i$ 是标准正交的, 各 $u_i$ 也是标准正交的, 各 $v_i$ 还是标准正交的. 上述理论结果十分优美.

但讨论不应就此止步, 原因有二. 一是为了弥补特征值的短板, 也就是第 6 章尚未完成的工作. 如果 $lambda$ 是 $bold(S)$ 的二重特征值, 那么能够并且必须找出两个标准正交的特征向量. 二是为了搞清楚 SVD 如何选中排在 $sigma_2 u_2 v_2^T$ 之前的 “最大项” $sigma_1 u_1 v_1^T$. 下面将逐一研究 $bold(S)$ 的特征值 $lambda$ 与 $bold(A)$ 的奇异值 $sigma$, 而非仅仅全部求出这些值.

先考察 $bold(S)$ 的最大特征值 $lambda_1$, 它解决了以下问题:

#dingliC[#eqnum($ lambda_1 = max (x^T bold(S) x)/(x^T x), quad "对应的向量" x = q_1 "满足" bold(S) q_1 = lambda_1 q_1 . $, 8)]

对比一下 $bold(A)$ 的最大奇异值 $sigma_1$, 它解决的问题是:

#dingliC[#eqnum($ sigma_1 = max (norm(bold(A) x))/(norm(x)), quad "对应的向量" x = v_1 "满足" bold(A) v_1 = sigma_1 u_1 . $, 9)]

这种 “一次讨论一个值的方法” 也适用于 $lambda_2$ 和 $sigma_2$, 但 $x$ 并非可取任意向量:

#dingliC[
  #grid(
    columns: (1fr, auto),
    row-gutter: 0.6em,
    [考虑满足 $q_1^T x = 0$ 的所有 $x$, $lambda_2 = max (x^T bold(S) x)/(x^T x)$, 对应向量 $x = q_2$;], [(10)],
    [考虑满足 $v_1^T x = 0$ 的所有 $x$, $sigma_2 = max (norm(bold(A) x))/(norm(x))$, 对应向量 $x = v_2$.], [(11)],
  )
]

当 $bold(S) = bold(A)^T bold(A)$ 时, 可得 $lambda_1 = sigma_1^2$ 和 $lambda_2 = sigma_2^2$. 下面解释为什么该方法行之有效.

#pagebreak()