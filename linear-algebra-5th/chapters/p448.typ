#import "../theme.typ": *

#align(center, subsec[8.2　线性变换的矩阵])

#yaodian[
  #hei[1.]　对线性变换 $T$, 若已知一组基 $bold(v)_1, bold(v)_2, dots.c, bold(v)_n$ 的像 $T(bold(v)_1), T(bold(v)_2), dots.c, T(bold(v)_n)$ 已知, 则所有的 $T(bold(v))$ 均为已知: 使用线性性质.

  #hei[2.]　“$T$ 的矩阵” 的第 $j$ 列是将变换 $T$ 作用于输入基向量 $bold(v)_j$ 生成的.

  #hei[3.]　将 $T(bold(v)_j)$ 用输出基向量 $bold(w)_i$ ($i = 1, 2, dots.c, m$) 表示:

  #dmath[$ T(bold(v)_j) = a_(1 j) bold(w)_1 + a_(2 j) bold(w)_2 + dots.c + a_(m j) bold(w)_m, $]

  这些 $a_(i j)$ 构成 $T$ 的矩阵的第 $j$ 列.

  #hei[4.]　若输入基、输出基分别为单位矩阵 $bold(I)_(n times n)$, $bold(I)_(m times m)$ 的列向量, 则变换 $T(bold(x)) = bold(A) bold(x)$ 的矩阵为 $bold(A)$.

  #hei[5.]　当基向量分别变成 $bold(v)_j$ ($j = 1, 2, dots.c, n$) 和 $bold(w)_i$ ($i = 1, 2, dots.c, m$) 时, 上述变换 $T$ 的矩阵从 $bold(A)$ 变为 $bold(W)^(-1) bold(A) bold(V)$, 其中 $bold(W) = [bold(w)_1, bold(w)_2, dots.c, bold(w)_m], bold(V) = [bold(v)_1, bold(v)_2, dots.c, bold(v)_n]$.

  #hei[6.]　最佳基: $V$, $W$ 为特征向量时给出对角矩阵 $bold(Lambda)$; $V$, $W$ 为奇异向量时给出对角矩阵 $bold(Sigma)$.
]

本节对每个线性变换 $T$ 指定一个矩阵 $bold(A)$. 设线性变换 $T$ 的输入向量 $bold(v)$ 在空间 $V = R^n$ 中, 输出向量 $T(bold(v))$ 在空间 $W = R^m$ 中, 则该变换的矩阵 $bold(A)$ 为 $m times n$ 的. 对 $V$ 和 $W$ 中基向量的选择将决定 $bold(A)$ 的值.

$R^n$ 和 $R^m$ 中标准基向量为对应单位矩阵的列向量. 由该选择可以得到线性变换 $T$ 的 “标准矩阵” $bold(A)$, 即通常情况下 $T(bold(v)) = bold(A) bold(v)$. 但这些空间还有其他基, 因此同一个变换 $T$ 还可以用其他矩阵表示. 线性代数主要的研究目的之一是给出线性变换 $T$ 的最佳矩阵 (这里指对角矩阵).

向量空间 $V$ 和 $W$ 都具有基. 这些基的每一个选择给出 $T$ 的一个矩阵. 当输入基与输出基不同时, 恒等变换 $T(bold(v)) = bold(v)$ 的矩阵也不会是单位矩阵 $bold(I)$. 这时要考虑的是 “基变换矩阵”. 下面是核心思想:

#yaodian[
  对线性变换 $T$, 假设已知输入基向量 $bold(v)_i$ 的像 $T(bold(v)_i), i = 1, 2, dots.c, n$, 则 $T$ 的矩阵 $bold(A)$ 的第 1 列到第 $n$ 列分别为 $T(bold(v)_1), T(bold(v)_2), dots.c, T(bold(v)_n)$#footnote[译者注: 这里取输出基向量为标准正交基向量.].

  对任意 $bold(v) = c_1 bold(v)_1 + c_2 bold(v)_2 + dots.c + c_n bold(v)_n$, $T(bold(v))$ 可写成

  #dmath[$ bold(A) "左乘" bold(c) = "矩阵左乘向量" = "矩阵" bold(A) "列向量的线性组合", $]

  即 $bold(A) bold(c)$ 为线性组合 $c_1 T(bold(v)_1) + c_2 T(bold(v)_2) + dots.c + c_n T(bold(v)_n) = T(bold(v))$.
]

#hei[理由]　每一个 $bold(v)$ 均为基向量 $bold(v)_i$ 的唯一线性组合 $c_1 bold(v)_1 + c_2 bold(v)_2 + dots.c + c_n bold(v)_n$. 由于 $T$ 为线性变换, $T(bold(v))$ 必然是输出向量 $T(bold(v)_i)$, $i = 1, 2, dots.c, n$ 的同一组系数形成的线性组合 $c_1 T(bold(v)_1) + c_2 T(bold(v)_2) + dots.c + c_n T(bold(v)_n)$.



#pagebreak()