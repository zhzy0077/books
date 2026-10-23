#import "../theme.typ": *
#set par(spacing: 14pt, leading: 12.8pt)

上述结论表明, 由 $bold(A)$ 的列空间中向量 $bold(u)_1, bold(u)_2, dots.c, bold(u)_r$ 可以得到行空间中的向量 $bold(v)_1, bold(v)_2, dots.c, bold(v)_r$; 其余向量 $bold(u)_(r+1), dots.c, bold(u)_m$ 属于左零空间, 即 $bold(A)^+$ 将它们映为零向量 (图 7.8). 一旦知晓了全部基向量如何变化, 也就得到了 $bold(A)^+$.

#figure(image("../assets/fig-p432-1.png", width: 90%), numbering: none, caption: [图 7.8　由列空间中的 $bold(A) bold(x)^+$ 得到行空间中的 $bold(A)^+ bold(A) bold(x)^+ = bold(x)^+$.])

请注意对角矩阵 $Sigma$ 的广义逆. $Sigma$ 的每个 $sigma$ 对应 $Sigma^+$ 中的 $sigma^(-1)$. 乘积 $Sigma^+ Sigma$ 是一个投影矩阵, 很接近单位矩阵. 它包含子矩阵 $bold(I)$, 其余元素为零. 我们可以对各 $sigma$ 求逆, 但对全零行与全零列则无法求逆. 下面是一个 $sigma_1 = 2$ 且 $sigma_2 = 3$ 的例子:

#dmath[$ Sigma^+ Sigma = mat(delim: "[", 1/2, 0, 0; 0, 1/3, 0; 0, 0, 0) mat(delim: "[", 2, 0, 0; 0, 3, 0; 0, 0, 0) = mat(delim: "[", 1, 0, 0; 0, 1, 0; 0, 0, 0) = mat(delim: "[", bold(I), 0; 0, 0). $]

对 $m times n$ 矩阵 $bold(A)$, 广义逆 $bold(A)^+$ 为使 $bold(A) bold(A)^+$ 与 $bold(A)^+ bold(A)$ 成为投影矩阵的 $n times m$ 矩阵.

#block(stroke: 0.8pt, radius: 4pt, inset: (x: 14pt, y: 16pt), width: 100%, above: 18pt, below: 20pt)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 2.5em,
    align: horizon,
    [对比 $bold(A) bold(A)^(-1) = bold(A)^(-1) bold(A) = bold(I)$],
    [
      #set par(spacing: 8pt)
      $bold(A) bold(A)^+$ 为到 $bold(A)$ 的列空间上的投影矩阵, \
      $bold(A)^+ bold(A)$ 为到 $bold(A)$ 的行空间上的投影矩阵.
    ]
  )
]

#hei[例 3]　每个秩 1 矩阵 $bold(A)$ 等于一个列向量 $bold(u)$ 左乘一个行向量 $bold(v)$. 取 $bold(u)$ 与 $bold(v)$ 为单位向量, 则 $bold(A) = sigma bold(u) bold(v)^T$, 其广义逆为 $bold(A)^+ = (bold(v) bold(u)^T)/sigma$. 乘积 $bold(A) bold(A)^+$ 等于 $bold(u) bold(u)^T$, 也就是到过向量 $bold(u)$ 的直线上的投影. 乘积 $bold(A)^+ bold(A)$ 等于 $bold(v) bold(v)^T$.

#hei[例 4]　求出 $bold(A) = mat(delim: "[", 1, 1; 1, 1)$ 的广义逆. 该矩阵不可逆, 且秩为 1, 唯一的奇异值为 $sigma_1 = 2$, 其倒数 $1/2$ 就在秩 1 矩阵 $Sigma^+$ 中:

#dmath[$ bold(A)^+ = bold(V) Sigma^+ bold(U)^T = 1/sqrt(2) mat(delim: "[", 1, 1; 1, -1) mat(delim: "[", 1/2, 0; 0, 0) 1/sqrt(2) mat(delim: "[", 1, 1; 1, -1) = 1/4 mat(delim: "[", 1, 1; 1, 1). $]

$bold(A)^+$ 也是秩 1 矩阵, 其列空间是 $bold(A)$ 的行空间.



#pagebreak()