#import "../theme.typ": *

全部 5 种判别方法都可行, 其中能量 $bold(x)^T bold(S) bold(x)$ 等于 $a (x_1 + x_2 + x_3)^2 + c (x_2 - x_3)^2$.

#subsec[补充材料: 特征值与特征向量表]

矩阵的性质如何在其特征值与特征向量上得以反映? 这是第 6 章研究的基本问题. 一张汇总全书关键结论的表格或许有助于此问题的回答. 以下为特殊矩阵的特征值 $lambda_i$ 和特征向量 $bold(x)_i$ 的性质.

#table(
  columns: (1fr, 1.35fr),
  inset: 4pt,
  stroke: none,
  align: (left + horizon, left + horizon),
  table.hline(y: 0, stroke: 0.6pt),
  table.hline(y: 1, stroke: 0.6pt),
  table.hline(y: 23, stroke: 0.6pt),
  table.vline(x: 0, stroke: 0.6pt),
  table.vline(x: 1, stroke: 0.6pt),
  table.vline(x: 2, stroke: 0.6pt),
  align(center)[#hei[矩阵]], align(center)[#hei[特征值 $lambda$; 特征向量 $bold(x)$]],
  [对称矩阵 $bold(S)$: $bold(S)^T = bold(S) = bold(Q) bold(Lambda) bold(Q)^T$], [实数 $lambda$; 正交: $bold(x)_i^T bold(x)_j = 0$],
  [正交矩阵 $bold(Q)$: $bold(Q)^T = bold(Q)^(-1)$], [$|lambda| = 1$; 正交: $overline(bold(x))_i^T bold(x)_j = 0$],
  [反称矩阵 $bold(A)$: $bold(A)^T = -bold(A)$], [纯虚数 $lambda$; 正交: $overline(bold(x))_i^T bold(x)_j = 0$],
  [复埃尔米特矩阵 $bold(S)$: $overline(bold(S))^T = bold(S)$], [实数 $lambda$; 正交: $overline(bold(x))_i^T bold(x)_j = 0$],
  [正定矩阵 $bold(S)$: $bold(x)^T bold(S) bold(x) > 0$], [$lambda > 0$; 因 $bold(S)^T = bold(S)$, 故 $bold(x)$ 正交],
  [马尔可夫矩阵 $bold(M)$: $m_(i j) > 0, sum_(i = 1)^n m_(i j) = 1$], [$lambda_(max) = 1$; 稳态 $bold(x) > 0$],
  [相似矩阵 $bold(A)$ 与 $bold(C)$: $bold(A) = bold(B) bold(C) bold(B)^(-1)$], [$lambda(bold(A)) = lambda(bold(C))$; $bold(B)$ 左乘 $bold(C)$ 的特征向量],
  [投影矩阵 $bold(P)$: $bold(P) = bold(P)^2 = bold(P)^T$], [$lambda = 1, 0$; 列空间; 零空间],
  [平面旋转矩阵: $mat(cos theta, sin theta; -sin theta, cos theta)$], [$e^(i theta), e^(-i theta)$; $bold(x) = (1, i), (1, -i)$],
  [反射矩阵: $bold(I) - 2 bold(u) bold(u)^T$], [$lambda = -1, 1, dots.c, 1$; $bold(u)$, 整个平面 $bold(u)^perp$],
  [秩 1 矩阵: $bold(u) bold(v)^T$], [$lambda = bold(v)^T bold(u), 0, dots.c, 0$; $bold(u)$, 整个平面 $bold(v)^perp$],
  [逆矩阵: $bold(A)^(-1)$], [$1/lambda(bold(A))$; 与 $bold(A)$ 的特征向量相同],
  [平移矩阵: $bold(A) + c bold(I)$], [$lambda(bold(A)) + c$; 与 $bold(A)$ 的特征向量相同],
  [稳定的幂矩阵: $bold(A)^n -> bold(O)$], [$|lambda| < 1$; 任意特征向量],
  [稳定的指数函数矩阵: $e^(bold(A) t) -> bold(O)$], [$"Re" lambda < 0$; 任意特征向量],
  [轮换矩阵 $bold(P)$: $p_(i, i + 1) = 1, p_(n 1) = 1$], [$lambda_k = e^(2 pi i k \/ n)$, 即 1 的 $n$ 次方根; $bold(x)_k = (1, lambda_k, dots.c, lambda_k^(n - 1))$],
  [循环矩阵: $c_0 bold(I) + c_1 bold(P) + dots.c$], [$lambda_k = c_0 + c_1 e^(2 pi i k \/ n) + dots.c$; $bold(x)_k = (1, lambda_k, dots.c, lambda_k^(n - 1))$],
  [特殊的三对角矩阵: “$-1, 2, -1$” 矩阵], [$lambda_k = 2 - 2 cos (k pi)/(n + 1)$; $bold(x)_k = (sin (k pi)/(n + 1), sin (2 k pi)/(n + 1), dots.c)$],
  [可对角化矩阵: $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$], [$bold(Lambda)$ 的对角元素; 线性无关的 $bold(X)$ 各列],
  [舒尔矩阵: $bold(A) = bold(Q) bold(T) bold(Q)^(-1)$], [三角形矩阵 $bold(T)$ 的对角元素; 当 $bold(A)^T bold(A) = bold(A) bold(A)^T$ 时为 $bold(Q)$ 各列],
  [若尔当矩阵: $bold(A) = bold(B) bold(J) bold(B)^(-1)$], [$bold(J)$ 的对角元素; 每个若尔当块对应 1 个特征向量],
  [奇异值分解矩阵: $bold(A) = bold(U) bold(Sigma) bold(V)^T$], [$bold(Sigma)$ 中 $r$ 个奇异值; $bold(A)^T bold(A), bold(A) bold(A)^T$ 的特征向量分别在 $bold(V), bold(U)$ 中],
)

#pagebreak()