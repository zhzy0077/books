#import "../theme.typ": *

#align(center, subsec[4.2　投　影])

#block(stroke: 0.8pt, inset: 6pt, width: 100%)[
  #hei[1.] 向量 $bold(b)$ 在向量 $bold(a)$ 所在直线上的投影为向量 $bold(p) = bold(a) (bold(a)^T bold(b))/(bold(a)^T bold(a))$, 且 $bold(b), bold(p)$ 两者末端最近.

  #hei[2.] 误差 $bold(e) = bold(b) - bold(p)$ 垂直于 $bold(a)$, 因此 $bold(b), bold(p), bold(e)$ 构成直角三角形三边, 即 $||bold(p)||^2 + ||bold(e)||^2 = ||bold(b)||^2$.

  #hei[3.] $bold(b)$ 在子空间 $S$ 上的投影为 $S$ 中的向量 $bold(p)$, 此时 $bold(b), bold(p)$ 两者末端最近, 且 $bold(b) - bold(p)$ 正交于 $S$.

  #hei[4.] 仅当 $bold(A)$ 各列向量线性无关时, $bold(A)^T bold(A)$ 可逆 (且对称), 这是因为 $N(bold(A)^T bold(A)) = N(bold(A))$.

  #hei[5.] 接下, $bold(b)$ 在 $bold(A)$ 的列空间上的投影为向量 $bold(p) = bold(A)(bold(A)^T bold(A))^(-1) bold(A)^T bold(b)$.

  #hei[6.] 接下, 到 $C(bold(A))$ 上的投影矩阵为 $bold(P) = bold(A)(bold(A)^T bold(A))^(-1) bold(A)^T$, 它满足 $bold(p) = bold(P) bold(b)$ 且 $bold(P)^2 = bold(P) = bold(P)^T$.
]

除了上节的正交分解问题, 还有两个问题引出本节内容. 第一个问题旨在表明投影是很容易想象的. 第二个问题关于“投影矩阵”$bold(P)$, 也就是满足 $bold(P)^2 = bold(P)$ 的对称矩阵. 这样, $bold(b)$ 的投影就是 $bold(P) bold(b)$.

#sub[(1) 向量 $bold(b) = (2,3,4)$ 在 $z$ 轴和 $x y$ 平面上的投影分别是什么?]
#sub[(2) 在直线和平面上的投影分别对应的投影矩阵 $bold(P)_1$ 和 $bold(P)_2$ 是什么?]
当将 $bold(b)$ 投影到直线上时, 它的投影 $bold(p)$ 是 $bold(b)$ 分解到该直线方向上的部分. 如果将 $bold(b)$ 投影到平面上, 投影 $bold(p)$ 是 $bold(b)$ 分解到该平面上的部分. 投影 $bold(p)$ 等于 $bold(P) bold(b)$, 即投影矩阵 $bold(P)$ 左乘 $bold(b)$ 等于 $bold(p)$. 本节将介绍如何求 $bold(p)$ 以及 $bold(P)$.

设向量 $bold(b)$ 在 $z$ 轴上的投影为 $bold(p)_1$, 在 $x y$ 平面上的投影为 $bold(p)_2$, 对应的图形就是图 4.5. 例如, 向量 $bold(b) = (2,3,4)$ 在 $z$ 轴上投影为 $bold(p)_1 = (0,0,4)$, 在 $x y$ 平面上的投影为 $bold(p)_2 = (2,3,0)$. 这些就是 $bold(b)$ 分别在 $z$ 轴和 $x y$ 平面上的部分.

#figure(image("../assets/fig-p230-45.png", width: 70%), numbering: none, caption: [图 4.5　$bold(b)$ 在 $z$ 轴以及 $x y$ 平面上投影分别为 $bold(p)_1 = bold(P)_1 bold(b)$ 和 $bold(p)_2 = bold(P)_2 bold(b)$.])

投影矩阵 $bold(P)_1$ 与 $bold(P)_2$ 均为 $3 times 3$ 的, 它们左乘三维向量 $bold(b)$ 得到三维向量 $bold(p)$. 到直线上的投影对应的 $bold(P)_1$ 为秩 1 矩阵, 到平面上的投影对应的 $bold(P)_2$ 为秩 2 矩阵:



#pagebreak()