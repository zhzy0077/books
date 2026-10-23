#import "../theme.typ": *

#align(center, subsec[7.4　奇异值分解的几何背景])

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 8pt, y: 10pt), width: 100%, above: 16pt)[
  #hei[1.]　方阵 $bold(A)$ 可分解为 $bold(U) bold(Sigma) bold(V)^T$, 即乘积 (旋转矩阵) (伸缩矩阵) (旋转矩阵).

  #hei[2.]　从几何角度可了解 $bold(A)$ 如何将圆上向量 $x$ 变换为椭圆上向量 $bold(A) x$.

  #hei[3.]　$bold(A)$ 的范数为 $||bold(A)|| = sigma_1$, 该奇异值为放大因子 $||bold(A) x|| \/ ||x||$ 的最大值.

  #hei[4.]　极分解将 $bold(A)$ 分解为 $bold(Q) bold(S)$:  旋转矩阵 $bold(Q) = bold(U) bold(V)^T$ 左乘伸缩矩阵 $bold(S) = bold(V) bold(Sigma) bold(V)^T$.

  #hei[5.]　广义逆 $bold(A)^+ = bold(V) bold(Sigma)^+ bold(U)^T$ 将 $bold(A)$ 的列空间中的 $bold(A) x$ 变换回行空间中的 $x$.
]

奇异值分解将矩阵分解成三个矩阵的乘积: (正交矩阵) (对角矩阵) (正交矩阵), 可用几何语言将其几何背景表述为乘积 (旋转矩阵) (伸缩矩阵) (旋转矩阵). $bold(U) bold(Sigma) bold(V)^T x$ 相当于先以旋转变换得到 $bold(V)^T x$, 继之以伸缩矩阵 $bold(Sigma)$ 作用于该向量得到 $bold(Sigma) bold(V)^T x$, 再用矩阵 $bold(U)$ 旋转得到 $bold(A) x = bold(U) bold(Sigma) bold(V)^T x$, 如图 7.7 所示.

#figure(image("../assets/fig-p428-1.png", width: 84%), numbering: none, caption: [图 7.7　$bold(U)$ 和 $bold(V)$ 为旋转矩阵, 也是可能是反射矩阵; $bold(Sigma)$ 将圆周变成椭圆.])

诚然, 图 7.7 仅适用于某些 $2 times 2$ 矩阵, 而非全部 $2 times 2$ 矩阵, 因为图中的 $bold(U)$ 和 $bold(V)$ 并未将反射矩阵考虑在内——全部三个矩阵的行列式均大于 0. 由于分解出的三个矩阵可逆, 因此 $bold(A)$ 也是可逆的:

#eqnum($ mat(delim: "[", a, b; c, d) = mat(delim: "[", cos theta, -sin theta; sin theta, cos theta) mat(delim: "[", sigma_1, ; , sigma_2) mat(delim: "[", cos phi, sin phi; -sin phi, cos phi) = bold(U) bold(Sigma) bold(V)^T . $, 1)

由矩阵 $bold(A)$ 的四个元素 $a, b, c, d$ 可得奇异值分解式中的四个数 $theta, sigma_1, sigma_2, phi$.

图 7.7 将导出矩阵代数中的三个重要概念:

(1) 矩阵范数 $||bold(A)||$——矩阵放大因子的最大值;

(2) 极分解 $bold(A) = bold(Q) bold(S)$——正交矩阵 $bold(Q)$ 左乘正定矩阵 $bold(S)$;

(3) 广义逆 $bold(A)^+$——$bold(A)$ 不可逆时的最佳 “逆矩阵”.

#hei[矩阵范数]

如果需要在图 7.7 中选择一个关键数值, 那么它就是 $sigma_1$, 该数为任意向量 $x$ 的最大伸缩因子. 注意图左边的向量 $v_1$, 它旋转至 $(1, 0)$ 后, 再伸缩至 $(sigma_1, 0)$, 最后旋转至 $sigma_1 u_1$. 表

#pagebreak()