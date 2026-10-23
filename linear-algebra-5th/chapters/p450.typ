#import "../theme.typ": *

$ [bold(v)_1 quad bold(v)_2 quad dots.c quad bold(v)_n] vec(delim: "[", c_1, c_2, dots.v, c_n) = [bold(w)_1 quad bold(w)_2 quad dots.c quad bold(w)_n] vec(delim: "[", d_1, d_2, dots.v, d_n), quad bold(V) bold(c) = bold(W) bold(d). $

新基 $bold(w)_j$, $j = 1, 2, dots.c, n$ 的系数 $bold(d) = bold(W)^(-1) bold(V) bold(c)$, 因此

#eqnum($ bold(B) = bold(W)^(-1) bold(V) . $, 2)

公式 $bold(B) = bold(W)^(-1) bold(V)$ 给出一个有趣的现象: 当标准基向量形成的矩阵 $bold(V) = bold(I)$ 变为一个不同基向量形成的矩阵 $bold(W)$ 时, 基变换矩阵将不是 $bold(W)$ 而是 $bold(B) = bold(W)^(-1)$, 即 “大” 的基向量对应 “小” 的系数! 标准基下的向量 $vec(delim: "[", x, y)$ 在 $bold(w)_1, bold(w)_2$ 这组基下具有系数 $[bold(w)_1 quad bold(w)_2]^(-1) vec(delim: "[", x, y)$.

#subsec[变换矩阵的构造]

现在构造任一线性变换的矩阵. 设线性变换 $T$ 将 $n$ 维空间 $V$ 映到 $m$ 维空间 $W$. 选择 $V$ 的一组基 $bold(v)_1, bold(v)_2, dots.c, bold(v)_n$, $W$ 的一组基 $bold(w)_1, bold(w)_2, dots.c, bold(w)_m$, 则变换矩阵 $bold(A)$ 为 $m times n$ 的. 为了求出 $bold(A)$ 的第 1 列, 将 $T$ 作用于第 1 个基向量 $bold(v)_1$, 输出向量 $T(bold(v)_1)$ 在空间 $W$ 中.

#yaodian[
  $T(bold(v)_1)$ 为 $W$ 的输出基的一组线性组合 $a_(1 1) bold(w)_1 + a_(2 1) bold(w)_2 + dots.c + a_(m 1) bold(w)_m$.
]

这些数 $a_(1 1), a_(2 1), dots.c, a_(m 1)$ 为 $bold(A)$ 的第 1 列元素. 将 $bold(v)_1$ 变为 $T(bold(v)_1)$ 对应于 $bold(A)$ 左乘 $(1, 0, dots.c, 0)$, 这给出矩阵 $bold(A)$ 的第 1 列. 当 $T$ 为求导运算, 且第 1 个基向量 $bold(v)_1$ 为常值函数 1 时, 它的导数为 $T(bold(v)_1) = 0$. 因此对下述求导矩阵 $bold(A)$, 其第 1 列全为 0.

#hei[例 3]　设变换 $T$ 为求导运算: $T(bold(v)) = (d bold(v))/(d x)$, 输入基为 $1, x, x^2, x^3$, 输出基为 $1, x, x^2$, 则 $T$ 的矩阵 $bold(A)$ 为 “求导矩阵”.

$ "若" bold(v) = c_1 + c_2 x + c_3 x^2 + c_4 x^3, quad quad quad bold(A) bold(c) = mat(delim: "[", 0, 1, 0, 0; 0, 0, 2, 0; 0, 0, 0, 3) vec(delim: "[", c_1, c_2, c_3, c_4) = vec(delim: "[", c_2, 2c_3, 3c_4). $

$ "则" (d bold(v))/(d x) = 1 c_2 + 2 c_3 x + 3 c_4 x^2; $

#yaodian[
  #hei[关键准则]　变换 $T$ 的矩阵 $bold(A)$ 的第 $j$ 列由变换 $T$ 对第 $j$ 个输入基向量 $bold(v)_j$ 的作用给出,

  #eqnum($ T(bold(v)_j) = a_(1 j) bold(w)_1 + a_(2 j) bold(w)_2 + dots.c + a_(m j) bold(w)_m "为输出基向量的组合." $, 3)
]

这些数 $a_(i j)$ 构成变换矩阵 $bold(A)$. 从变换矩阵可以直接得到基向量的像, 然后线性性质给出所有向量的像. 每一个向量 $bold(v)$ 均可以写成线性组合 $c_1 bold(v)_1 + c_1 bold(v)_2 + dots.c + c_n bold(v)_n$, 则 $T(bold(v))$ 可写成 $bold(w)_i$ 的线性组合. 当 $bold(A)$ 左乘 $bold(v)$ 的组合系数向量 $bold(c) = (c_1, c_2, dots.c, c_n)$ 时, $bold(A) bold(c)$ 给出 $T(bold(v))$



#pagebreak()