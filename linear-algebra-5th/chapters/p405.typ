#import "../theme.typ": *

#align(center, subsec[7.2　奇异值分解的基与矩阵])

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #hei[1.]　矩阵 $bold(A)$ 的奇异值分解所生成的各 $v_i$ 和各 $u_i$ 可组成 $bold(A)$ 的四个基本子空间的标准正交基.

  #hei[2.]　利用上述基向量, $bold(A)$ 变为对角矩阵 $bold(Sigma)$, 且有 $bold(A) v_i = sigma_i u_i$, 其中 $sigma_i$ 为奇异值.

  #hei[3.]　比起 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$, 双基对角化 $bold(A) = bold(U) bold(Sigma) bold(V)^T$ 往往包含更多信息.

  #hei[4.]　$bold(U) bold(Sigma) bold(V)^T$ 将 $bold(A)$ 拆分成秩 1 矩阵之和: $sigma_1 u_1 v_1^T + sigma_2 u_2 v_2^T + dots.c + sigma_r u_r v_r^T$, 其中 $sigma_1 u_1 v_1^T$ 是 “最大” 项!
]

奇异值分解 (SVD) 是线性代数的高光时刻. 设 $bold(A)$ 为任意 $m times n$ 矩阵, 可以是方阵或是长方阵, 其秩为 $r$. 下面对 $bold(A)$ 进行对角化, 但不是化为 $bold(X)^(-1) bold(A) bold(X)$ 的形式. $bold(X)$ 中的列是特征向量, 它们有三大缺陷: 通常并不正交, 数量可能不足, 以及 $bold(A) x = lambda x$ 要求 $bold(A)$ 应为方阵. $bold(A)$ 的奇异值向量完美地克服了所有这些不足.

由 $bold(A)$ 的 SVD 可得到 $bold(A)$ 的四个基本子空间恰当的基. 接下来将按照基向量的重要性顺序, 将这些基向量的求解步骤写出来.

这里需要两组奇异向量 $u_i$ 和 $v_i$, 前者属于 $R^m$, 而后者属于 $R^n$. 它们分别为 $m times m$ 矩阵 $bold(U)$ 和 $n times n$ 矩阵 $bold(V)$ 的各列. 下面首先根据这些基向量来描述 SVD, 然后根据正交矩阵 $bold(U)$ 和 $bold(V)$ 来描述 SVD.

#hei[向量角度]　$u_i$ 和 $v_j$ 给出 $bold(A)$ 的四个基本子空间的基:

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #grid(
    columns: (auto, auto),
    column-gutter: 2em,
    row-gutter: 3pt,
    align: (left, left),
    [$u_1, u_2, dots.c, u_r$], [是列空间的标准正交基,],
    [$u_(r+1), u_(r+2), dots.c, u_m$], [是左零空间 $N(bold(A)^T)$ 的标准正交基,],
    [$v_1, v_2, dots.c, v_r$], [是行空间的标准正交基,],
    [$v_(r+1), v_(r+2), dots.c, v_n$], [是零空间 $N(bold(A))$ 的标准正交基.],
  )
]

不仅仅具有正交性, 这些基向量还将矩阵 $bold(A)$ 对角化:

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #eqnumL([将 $bold(A)$ 对角化], $ bold(A) v_1 = sigma_1 u_1, quad bold(A) v_2 = sigma_2 u_2, quad dots.c, quad bold(A) v_r = sigma_r u_r. $, 1)
]

这些奇异值 $sigma_1, sigma_2, dots.c, sigma_r$ 都是正数: $sigma_i$ 为 $bold(A) v_i$ 的长度. 所得对角矩阵 $bold(Sigma)$ 的对角元素除了奇异值 $sigma$ 之外就是零.

#hei[矩阵角度]　因为 $u_i$ 是标准正交的, 那么以这 $r$ 个向量为列的矩阵 $bold(U)_r$ 满足 $bold(U)_r^T bold(U)_r = bold(I)$. 同理, 因为 $v_i$ 是标准正交的, 那么对应的矩阵 $bold(V)_r$ 满足 $bold(V)_r^T bold(V)_r = bold(I)$. 于是由方程 $bold(A) v_i = sigma_i u_i$ 推出 $bold(A) bold(V)_r = bold(U)_r bold(Sigma)_r$ 的各列成立:

#dmath[$ bold(A) bold(V)_r = bold(U)_r bold(Sigma)_r, quad "简记为" (m times n)(n times r) = (m times r)(r times r), $]

#pagebreak()