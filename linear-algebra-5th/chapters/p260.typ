#import "../theme.typ": *

当 $(x, y)$ 变为 $(y, x)$ 时, 类似 $(3, 3)$ 这样的向量并不变化, 因为它就在反射轴上.

旋转保持每个向量的长度不变, 反射也是如此, 置换亦然. 任意正交矩阵 $bold(Q)$ 左乘向量都是如此——向量的长度和两个向量所夹角度不变.

证 $norm(bold(Q) bold(x))^2$ 等于 $norm(bold(x))^2$ 是因为

#align(center)[$ (bold(Q) bold(x))^T (bold(Q) bold(x)) = bold(x)^T bold(Q)^T bold(Q) bold(x) = bold(x)^T bold(I) bold(x) = bold(x)^T bold(x). $]

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  如果矩阵 $bold(Q)$ 有标准正交列向量组 ($bold(Q)^T bold(Q) = bold(I)$), 那么它作用于向量时, 保持向量的长度不变, 即

  #eqnum($ norm(bold(Q) bold(x)) = norm(bold(x)) quad "对于任意的" bold(x) "均成立". $, 3)

  $bold(Q)$ 还保持两个向量内积不变:

  #dmath[$ (bold(Q) bold(x))^T (bold(Q) bold(y)) = bold(x)^T bold(Q)^T bold(Q) bold(y) = bold(x)^T bold(y). $]

  这里也用到 $bold(Q)^T bold(Q) = bold(I)$!
]

#hei[利用标准正交基投影: $bold(Q)$ 取代 $bold(A)$]

正交矩阵非常适合用于数值计算——向量长度一旦固定, 各分量的数值绝不会变得太大. 因此稳定的计算机代码会尽可能多地使用正交矩阵.

到子空间上的投影公式都涉及形如 $bold(A)^T bold(A)$ 的式子. $bold(A)^T bold(A)$ 的元素是基向量 $bold(a)_1, bold(a)_2, dots.c, bold(a)_n$ 的点积 $bold(a)_i^T bold(a)_j$.

假设基向量恰好是标准正交的, 那么列向量 $bold(a)_i$ 变为 $bold(q)_i$. 从而 $bold(A)^T bold(A)$ 简化为 $bold(Q)^T bold(Q) = bold(I)$. 观察在最小二乘法中 $hat(bold(x))$ 和 $p$ 以及 $bold(P)$ 的变化 (实为简化). 下面不用 $bold(Q)^T bold(Q)$, 而是用空格表示单位矩阵:

#eqnum($ \_\_\_\_ hat(bold(x)) = bold(Q)^T bold(b), quad p = bold(Q) hat(bold(x)), quad bold(P) = bold(Q) \_\_\_\_ bold(Q)^T. $, 4)

$bold(Q) bold(x) = bold(b)$ 的最小二乘解是 $hat(bold(x)) = bold(Q)^T bold(b)$. 投影矩阵为 $bold(Q) bold(Q)^T$.

这里没有用到逆矩阵, 这便是标准正交基的特点. 最优解 $hat(bold(x)) = bold(Q)^T bold(b)$ 的分量恰由各列 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$ 与 $bold(b)$ 的点积构成, 即现在计算的是一维投影! 现在 "耦合矩阵" 或 "相关矩阵" $bold(A)^T bold(A)$ 就是 $bold(Q)^T bold(Q) = bold(I)$, 因此不存在耦合. 当 $bold(A)$ 是各列标准正交的 $bold(Q)$ 时, 有 $p = bold(Q) hat(bold(x)) = bold(Q) bold(Q)^T bold(b)$:

#eqnum($ "到" bold(q)_i "上的投影" quad p = mat(bold(q)_1, bold(q)_2, dots.c, bold(q)_n) mat(bold(q)_1^T bold(b); bold(q)_2^T bold(b); dots.v; bold(q)_n^T bold(b)) = sum_(i=1)^n bold(q)_i (bold(q)_i^T bold(b)). $, 5)

#hei[重要情形:] 当 $m times n$ 矩阵 $bold(Q)$ 为方阵, 即 $m = n$ 时, 列向量生成的子空间就是整个 $R^n$ 空间. 由 $bold(Q)^T = bold(Q)^(-1)$ 可知 $hat(bold(x)) = bold(Q)^T bold(b)$ 与 $bold(x) = bold(Q)^(-1) bold(b)$ 相同. 这个解是准确的! $bold(b)$ 在全空间的投影是 $bold(b)$ 自身. 此时有 $p = bold(b)$ 和 $bold(P) = bold(Q) bold(Q)^T = bold(I)$.





#pagebreak()
