#import "../theme.typ": *

#sec[附录 2  线性代数概览]

#align(center, subsec[线性代数六大定理])

#block(stroke: 0.6pt, inset: (x: 12pt, y: 10pt), width: 100%, above: 14pt, below: 16pt)[
  #set par(first-line-indent: 0em)
  #grid(
    columns: (auto, 1fr),
    column-gutter: 1.2em,
    row-gutter: 7.5pt,
    align: (left + top, left + top),
    [#hei[维数定理]], [同一向量空间的不同基均包含相同个数的向量.],
    [#hei[计数定理]], [列空间维数 + 零空间维数 = 列向量个数.],
    [#hei[秩定理]], [列空间维数 = 行空间维数, 这个相同的维数就是矩阵的秩.],
    [#hei[基本定理]], [$bold(R)^n$ 中, $m times n$ 矩阵 $bold(A)$ 的行空间与零空间互为正交补.],
    [#hei[奇异值分解定理]], [对于矩阵 $bold(A)$, 存在标准正交基, 即行空间中的 $bold(v)_i$ 与列空间中的 $bold(u)_i$, 使得 $bold(A) bold(v)_i = sigma_i bold(u)_i$.],
    [#hei[谱定理]], [对于对称矩阵 $bold(A)$, 有 $bold(A) = bold(Q) bold(Λ) bold(Q)^T$, 其中 $bold(Q)$ 的列向量 $bold(q)_i$ 满足 $bold(A) bold(q)_i = lambda_i bold(q)_i$.],
  )
]

#align(center)[#subsec[线性代数简约版] #h(1em) ($bold(A)$ 为 $n times n$ 矩阵)]

#block(above: 12pt, below: 12pt)[
  #set text(size: 13.5pt)
  #set par(leading: 7.5pt, spacing: 5pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 3em,
    [
      #align(center)[#hei[非奇异矩阵]]
      #v(4pt)
      $bold(A)$ 是可逆的\
      $bold(A)$ 的各列向量线性无关\
      $bold(A)$ 的各行向量线性无关\
      $bold(A)$ 的行列式非零\
      $bold(A) bold(x) = 0$ 有唯一解 $bold(x) = 0$\
      $bold(A) bold(x) = bold(b)$ 有唯一解 $bold(x) = bold(A)^(-1) bold(b)$\
      $bold(A)$ 有 $n$ 个 (非零) 主元\
      $bold(A)$ 满秩, 即秩 $r = n$\
      $bold(A)$ 的最简行阶梯形 $bold(R) = bold(I)$\
      $bold(A)$ 的列空间是整个 $bold(R)^n$\
      $bold(A)$ 的行空间是整个 $bold(R)^n$\
      $bold(A)$ 的全部特征值非零\
      $bold(A)^T bold(A)$ 是对称正定矩阵\
      $bold(A)$ 有 $n$ 个 (正的) 奇异值
    ],
    [
      #align(center)[#hei[奇异矩阵]]
      #v(4pt)
      $bold(A)$ 是不可逆的\
      $bold(A)$ 的各列向量线性相关\
      $bold(A)$ 的各行向量线性相关\
      $bold(A)$ 的行列式为零\
      $bold(A) bold(x) = 0$ 有无穷多解\
      $bold(A) bold(x) = bold(b)$ 无解或有无穷多解\
      $bold(A)$ 的主元个数 $r < n$\
      $bold(A)$ 的秩 $r < n$\
      $bold(A)$ 的最简行阶梯形 $bold(R)$ 至少有一个全零行\
      $bold(A)$ 的列空间的维数 $r < n$\
      $bold(A)$ 的行空间的维数 $r < n$\
      $bold(A)$ 有零特征值\
      $bold(A)^T bold(A)$ 是半正定矩阵\
      $bold(A)$ 的奇异值个数 $r < n$
    ],
  )
]

#pagebreak()