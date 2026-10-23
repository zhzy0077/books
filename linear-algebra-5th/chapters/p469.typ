#import "../theme.typ": *

#chapterHead("assets/fig-p469-chapter.png")[复向量与复矩阵]

#yaodian[
  #align(center, hei[实数与复数对比])

  $bold(R)$ 对应实数轴, 由全体实数 $x$ 构成 $arrow.l.r$ $bold(C)$ 对应复平面, 由全体复数 $z = x + i y$ 构成,

  $abs(x)$ 是 $x$ 的绝对值 $arrow.l.r$ $abs(z) = sqrt(x^2 + y^2) = r$ 是 $z$ 的绝对值 (或模),

  $1$ 与 $-1$ 是 $x^2 = 1$ 的解 $arrow.l.r$ $z = 1, w, dots.c, w^(n-1)$ 是 $z^n = 1$ 的解, 其中 $w = e^(2 pi i slash n)$.

  $z = x + i y$ 的复共轭为 $overline(z) = x - i y$. $abs(z)^2 = x^2 + y^2 = z overline(z)$, $1/z = overline(z)/(abs(z)^2)$.

  $z = x + i y$ 的极形式为 $abs(z) e^(i theta) = r e^(i theta) = r cos theta + i r sin theta$, 辐角 $theta$ 满足 $tan theta = y/x$.

  $bold(R)^n$ 为具有 $n$ 个实分量的向量 $bold(x)$ 全体 $arrow.l.r$ $bold(C)^n$ 为具有 $n$ 个复分量的向量 $bold(z)$ 全体,

  $ "长度:" norm(bold(x))^2 = sum_(i=1)^n x_i^2 arrow.l.r "长度:" norm(bold(z))^2 = sum_(i=1)^n abs(z_i)^2, $

  $ "转置:" (bold(A)^T)(i, j) = bold(A)(j, i) arrow.l.r "共轭转置:" (bold(A)^H)(i, j) = overline(bold(A)(j, i)), $

  $ "点积:" bold(x)^T bold(y) = sum_(i=1)^n x_i y_i arrow.l.r "内积:" bold(u)^H bold(v) = sum_(i=1)^n overline(u_i) v_i, $

  $ bold(A)^T "的定义:" (bold(A) bold(x))^T bold(y) = bold(x)^T (bold(A)^T bold(y)) arrow.l.r bold(A)^H "的定义:" (bold(A) bold(u))^H bold(v) = bold(u)^H (bold(A)^H bold(v)), $

  $ "正交性:" bold(x)^T bold(y) = 0 arrow.l.r "正交性:" bold(u)^H bold(v) = 0, $

  $ "对称矩阵:" bold(S) = bold(S)^T arrow.l.r "埃尔米特矩阵:" bold(S) = bold(S)^H, $

  $ bold(S) = bold(Q) bold(Lambda) bold(Q)^(-1) = bold(Q) bold(Lambda) bold(Q)^T ("实矩阵" bold(Lambda)) arrow.l.r bold(S) = bold(U) bold(Lambda) bold(U)^(-1) = bold(U) bold(Lambda) bold(U)^H ("实矩阵" bold(Lambda)), $

  $ "反称矩阵:" bold(K)^T = -bold(K) arrow.l.r "斜埃尔米特矩阵:" bold(K)^H = -bold(K), $

  $ "正交矩阵:" bold(Q)^T = bold(Q)^(-1) arrow.l.r "酉矩阵:" bold(U)^H = bold(U)^(-1), $

  $ "标准正交列:" bold(Q)^T bold(Q) = bold(I) arrow.l.r "标准正交列:" bold(U)^H bold(U) = bold(I), $

  $ (bold(Q) bold(x))^T (bold(Q) bold(y)) = bold(x)^T bold(y) "且" norm(bold(Q) bold(x)) = norm(bold(x)) arrow.l.r (bold(U) bold(x))^H (bold(U) bold(y)) = bold(x)^H bold(y) "且" norm(bold(U) bold(z)) = norm(bold(z)). $
]

线性代数的完整表述必然包含复数 $z = x + i y$. 即便对于实矩阵, 它的特征值与特征向量也常常是复的. 例如, $2 times 2$ 旋转矩阵有复特征向量 $bold(x) = (1, i)$ 与 $overline(bold(x)) = (1, -i)$.

第 9.1 节与第 9.2 节可简要总结为: 转置一个向量 $v$ 或矩阵 $A$, 就是所有元素取共轭

#pagebreak()