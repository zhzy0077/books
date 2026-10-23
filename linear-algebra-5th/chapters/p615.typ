#import "../theme.typ": *

以下有四个关于 $bold(M)^(-1)$ 的公式以供参考. 当矩阵改变量是 $bold(u) bold(v)^T$ 时, 前两个公式在上方已经给出. 公式 (3) 和公式 (4) 中的矩阵改变量超越了秩 1 矩阵, 允许使用任意矩阵 $bold(U), bold(V), bold(W)$.

#align(center)[
#block(above: 18pt, below: 20pt)[
  #grid(
    columns: (auto, auto, auto),
    column-gutter: 1.8em,
    row-gutter: 18pt,
    align: (right + horizon, left + horizon, left + horizon),
    [(1)], [$bold(M) = bold(I) - bold(u) bold(v)^T,$], [$bold(M)^(-1) = bold(I) + (bold(u) bold(v)^T)/(1 - bold(v)^T bold(u))$ #h(1em) (秩 1 变化);],
    [(2)], [$bold(M) = bold(A) - bold(u) bold(v)^T,$], [$bold(M)^(-1) = bold(A)^(-1) + (bold(A)^(-1) bold(u) bold(v)^T bold(A)^(-1))/(1 - bold(v)^T bold(A)^(-1) bold(u))$;],
    [(3)], [$bold(M) = bold(I) - bold(U) bold(V),$], [$bold(M)^(-1) = bold(I)_n + bold(U) (bold(I)_m - bold(V) bold(U))^(-1) bold(V)$;],
    [(4)], [$bold(M) = bold(A) - bold(U) bold(W)^(-1) bold(V),$], [$bold(M)^(-1) = bold(A)^(-1) + bold(A)^(-1) bold(U) (bold(W) - bold(V) bold(A)^(-1) bold(U))^(-1) bold(V) bold(A)^(-1).$],
  )
]
]

公式 (4) 是工程学中的 “矩阵求逆引理”. 卡尔曼滤波在求解分块三对角方程组时每个步骤都会使用公式 (4).



#pagebreak()
