#import "../theme.typ": *

首先看比值 $r(bold(x)) = (bold(x)^T bold(S) bold(x))/(bold(x)^T bold(x))$, 该值称为瑞利 (Rayleigh) 商. 为了求 $r(bold(x))$ 的最大值, 令其偏导数为零: $(partial r)/(partial x_i) = 0$, $i = 1, 2, dots.c, n$. 整理后得到 $r(bold(x))$ 最大时 $bold(x)$ 满足的向量方程:

#eqnum($ "当" bold(S) bold(x) = r(bold(x)) bold(x) "时," quad r(bold(x)) = (bold(x)^T bold(S) bold(x))/(bold(x)^T bold(x)) "的偏导数全为零." $, 12)

因此, 上述 $bold(x)$ 就是 $bold(S)$ 的特征向量, 最大比值 $r(bold(x))$ 是 $bold(S)$ 的最大特征值 $lambda_1$. 这样就解决了 (8) 式中的问题. 现在转而考虑 $bold(A)$, 并注意其与 $bold(S) = bold(A)^T bold(A)$ 的联系:

#align(center)[$ "求" (norm(bold(A) bold(x)))/(norm(bold(x))) "的最大值也相当于求" ((norm(bold(A) bold(x)))/(norm(bold(x))))^2 = (bold(x)^T bold(A)^T bold(A) bold(x))/(bold(x)^T bold(x)) = (bold(x)^T bold(S) bold(x))/(bold(x)^T bold(x)) "的最大值." $]

因此 (9) 式中选取的 $bold(x) = bold(v)_1$ 与 (8) 式中 $bold(S) = bold(A)^T bold(A)$ 排在最前面的特征向量 $bold(q)_1$ 相同.

下面解释为什么 $bold(q)_2$ 和 $bold(v)_2$ 分别是 (10) 式与 (11) 式中选取的向量. 它们分别与 $bold(q)_1$ 和 $bold(v)_1$ 正交, 因此都在考虑范围内. (以下内容可以略过, 尤其是对于关注 SVD 实际运用的读者. 建议这些读者关注第 7.3 节.)

对于首列为 $bold(q)_1$ 的任意正交矩阵 $bold(Q)_1$, 其余 $n - 1$ 个标准正交列必与 $bold(q)_1$ 正交. 利用 $bold(S) bold(q)_1 = lambda_1 bold(q)_1$ 可得

#align(center)[#grid(
  columns: (1fr, auto),
  align: (center + horizon, right + horizon),
  $
    bold(S) bold(Q)_1 &= bold(S) mat(delim: "[", bold(q)_1, bold(q)_2, dots.c, bold(q)_n) \
    &= mat(delim: "[", bold(q)_1, bold(q)_2, dots.c, bold(q)_n) mat(delim: "[", lambda_1, bold(w)^T; bold(0), bold(S)_(n-1)) \
    &= bold(Q)_1 mat(delim: "[", lambda_1, bold(w)^T; bold(0), bold(S)_(n-1)) ,
  $,
  [(13)],
)]

用 $bold(Q)_1^T$ 左乘上式, 并注意 $bold(Q)_1^T bold(Q)_1 = bold(I)$, 于是得知 $bold(Q)_1^T bold(S) bold(Q)_1$ 如 $bold(S)$ 一般也是对称矩阵:

#align(center)[$ "由" bold(Q)_1^T bold(S) bold(Q)_1 = mat(delim: "[", lambda_1, bold(w)^T; bold(0), bold(S)_(n-1)) "的对称性可得" bold(w) = bold(0) "以及" bold(S)_(n-1)^T = bold(S)_(n-1). $]

根据条件 $q_1^T x = 0$, 最大值问题 (10) 可简化为 $n - 1$ 阶情形. $bold(S)_(n-1)$ 的最大特征值将是 $bold(S)$ 的第二大特征值, 它就是 $lambda_2$. (10) 式中选取的向量将是满足 $bold(S) q_2 = lambda_2 q_2$ 的特征向量 $q_2$.

继续上述讨论, 即使用数学归纳法, 就得到所有特征向量 $q_1, q_2, dots.c, q_n$ 及其特征值 $lambda_1, lambda_2, dots.c, lambda_n$. 即便有重复的特征值, 谱定理 $bold(S) = bold(Q) bold(Lambda) bold(Q)^T$ 也会得证. 于是所有对称矩阵均可对角化.

类似地, SVD 可从 (9) 式和 (11) 式一次一次地构建起来. 第 7.4 节将展示其几何背景——寻找椭圆的对称轴. 请读者思考一个不同寻常的问题: 实际情况中如何计算 $lambda$ 与 $sigma$?

#hei[计算 $bold(S)$ 的特征值与 $bold(A)$ 的奇异值]

$bold(A)$ 的奇异值 $sigma_i$ 是 $bold(S) = bold(A)^T bold(A)$ 的特征值 $lambda_i$ 的算术平方根, 这就将 SVD 与对称矩阵的特征值问题联系起来了 (好的一面). 但通常并不推荐计算 $bold(A)^T$ 左乘 $bold(A)$ (相关运算时间耗费巨大: 坏的一面).





#pagebreak()
