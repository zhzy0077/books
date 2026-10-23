#import "../theme.typ": *

线性组合, 并设 $bold(x) = c_1 bold(q)_1 + c_2 bold(q)_2 + dots.c + c_n bold(q)_n$. 将其代入比值, 并利用 $bold(q)_i^T bold(q)_j = 0$ 可得

$ (bold(x)^T bold(A)^T bold(A) bold(x))/(bold(x)^T bold(x)) &= ((c_1 bold(q)_1 + c_2 bold(q)_2 + dots.c + c_n bold(q)_n)^T (c_1 lambda_1 bold(q)_1 + c_2 lambda_2 bold(q)_2 + dots.c + c_n lambda_n bold(q)_n))/((c_1 bold(q)_1 + c_2 bold(q)_2 + dots.c + c_n bold(q)_n)^T (c_1 bold(q)_1 + c_2 bold(q)_2 + dots.c + c_n bold(q)_n)) \
&= (c_1^2 lambda_1 + c_2^2 lambda_2 + dots.c + c_n^2 lambda_n)/(c_1^2 + c_2^2 + dots.c + c_n^2) . $

因此, 最大比值为 $lambda_max$, 此时除了与 $lambda_max$ 相乘的系数取 1 以外, 其他系数均取 0.

#hei[注 1]  (4) 式中的比值即为对称矩阵 $bold(A)^T bold(A)$ 的瑞利商, 其最大值为 $lambda_max(bold(A)^T bold(A))$, 最小值为 $lambda_min(bold(A)^T bold(A))$. 如果将任意向量 $bold(x)$ 代入瑞利商 $(bold(x)^T bold(A)^T bold(A) bold(x))/(bold(x)^T bold(x))$, 会得到介于 $lambda_min(bold(A)^T bold(A))$ 和 $lambda_max(bold(A)^T bold(A))$ 之间的一个数.

#hei[注 2]  矩阵的范数 $norm(bold(A))$ 等于 $bold(A)$ 的最大奇异值 $sigma_max$ (第 7 章). 奇异值 $sigma_1, sigma_2, dots.c, sigma_r$ 为 $bold(A)^T bold(A)$ 的正特征值的算术平方根, 即 $sigma_max = (lambda_max)^(1/2)$. 由于对矩阵 $bold(A)$ 存在分解式 $bold(A) = bold(U) bold(Sigma) bold(V)^T$, 其中 $bold(U)$ 和 $bold(V)$ 是正交的, 所以可知范数 $norm(bold(A)) = sigma_max$.

#subsec[矩阵 $bold(A)$ 的条件数]

第 9.1 节已经说明舍入误差可能严重影响线性方程组的求解精度. 有些方程组的求解对舍入误差很敏感, 另外一些则不那么敏感. 方程组对误差的敏感程度是通过条件数来衡量的. 这是本书首次专门介绍误差, 目的是评估其对求 $bold(x)$ 的影响.

设原方程组为 $bold(A) bold(x) = bold(b)$, 且等式右端常数向量由于舍入误差或测量误差变为 $bold(b) + Delta bold(b)$, 使得解变为 $bold(x) + Delta bold(x)$. 我们的目标是通过方程组的微小扰动 $Delta bold(b)$ 来估计解的变化 $Delta bold(x)$. 为此, 将两个方程相减可得误差方程 $bold(A) (Delta bold(x)) = Delta bold(b)$:

#eqnum($ "从" bold(A)(bold(x) + Delta bold(x)) = bold(b) + Delta bold(b) "中减去" bold(A) bold(x) = bold(b) quad "可得" quad bold(A)(Delta bold(x)) = Delta bold(b) . $, 5)

因此, 误差为 $Delta bold(x) = bold(A)^(-1) Delta bold(b)$. 当矩阵 $bold(A)^(-1)$ 的范数很大时 ($bold(A)$ 接近奇异矩阵), 解的误差也很大. 当 $Delta bold(b)$ 处于被 $bold(A)^(-1)$ 放大得最多的方向 (对应绝对值最大的特征值) 时, 误差 $Delta bold(x)$ 会非常大. 在最糟糕的情况下误差大小为 $norm(Delta bold(x)) = norm(bold(A)^(-1)) norm(Delta bold(b))$.

这种依赖于 $norm(bold(A)^(-1))$ 的误差估计有一个严重的问题. 如果 $bold(A)$ 的每个元素变为原来的 1 000 倍, 那么 $bold(A)^(-1)$ 的每个元素变为原来的 $1/(1 000)$. 矩阵的敏感度看似变好了 1 000 倍, 但是这种简单的放缩没有改变问题的本质. 虽然 $Delta bold(x)$ 的每个元素的确变为原来的 $1/(1 000)$, 但精确解 $bold(x) = bold(A)^(-1) bold(b)$ 也同样如此. 此时, 相对误差 $norm(Delta bold(x))/norm(bold(x))$ 并没有改变, 因此用 $bold(x)$ 的相对变化值与 $bold(b)$ 的相对变化值作比较才合理.

对比相对误差会引出 “条件数” 的定义: $c = norm(bold(A)) norm(bold(A)^(-1))$. 将 $bold(A)$ 的元素乘 1 000 并不会改变该数值, 这是因为 $bold(A)^(-1)$ 每个元素同时会除以 1 000, 此时条件数 $c$ 不会发生变化. 这样的定义可以衡量 $bold(A) bold(x) = bold(b)$ 的解对常数项扰动的敏感度.

#pagebreak()