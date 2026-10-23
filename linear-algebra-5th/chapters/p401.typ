#import "../theme.typ": *

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #grid(columns: (auto, 1fr, auto), column-gutter: 1em,
    align(horizon)[$ bold(A) = [bold(u)_1 quad bold(u)_2] mat(sigma_1; sigma_2) mat(bold(v)_1^T; bold(v)_2^T) $],
    align(horizon)[$ "或简写为" quad bold(A) [bold(v)_1 quad bold(v)_2] = [sigma_1 bold(u)_1 quad sigma_2 bold(u)_2]. $],
    align(horizon)[$(3)$],
  )
]

#hei[重点]　实际中的图像并非总是低秩的. 恰恰相反, 这些图像大多满秩, 但它们具有低的有效秩, 即许多奇异值较小, 从而可以设为零. 真正传输的是低秩近似矩阵.

#hei[例 4]　设某面旗帜可分为两块不同颜色的三角形区域. 设对应矩阵的左下三角形元素均为 1, 而右上三角形元素均为 0, 主对角线包含在全 1 区域内. 以下为阶数 $n = 4$ 时的图像矩阵, 它是满秩的 ($r = 4$), 从而也是可逆的:

#grid(columns: (auto, auto, auto), column-gutter: 2em,
  align(horizon)[#align(center)[三角形 \ 旗帜矩阵]],
  align(horizon)[$ bold(A) = mat(1, 0, 0, 0; 1, 1, 0, 0; 1, 1, 1, 0; 1, 1, 1, 1), $],
  align(horizon)[$ bold(A)^(-1) = mat(1, 0, 0, 0; -1, 1, 0, 0; 0, -1, 1, 0; 0, 0, -1, 1). $],
)

满秩矩阵 $bold(A)$ 有全套 $n$ 个奇异值 $sigma_i$ (全为正数). SVD 将生成 $n$ 项秩 1 的 $sigma_i bold(u)_i bold(v)_i^T$. 完好地复制 $bold(A)$ 需要全部 $n$ 项.

压缩时, 将丢弃较小 $sigma_i$ 的对应项, 而不会对图像质量产生重大影响. 以下讨论并绘制 $n = 4$ 以及更一般的 $n$ 对应的奇异值 $sigma_i$. 注意, 例 3 中的 $bold(A)$ 就是例 4 在 $n = 2$ 时的特例.

手工计算一下, 先由 $bold(A) bold(A)^T$ 开始 (计算机处理的流程未必相同):

#eqnum($ bold(A) bold(A)^T = mat(1, 1, 1, 1; 1, 2, 2, 2; 1, 2, 3, 3; 1, 2, 3, 4), quad (bold(A) bold(A)^T)^(-1) = (bold(A)^(-1))^T bold(A)^(-1) = mat(2, -1, 0, 0; -1, 2, -1, 0; 0, -1, 2, -1; 0, 0, -1, 1) . $, 4)

这里算出 “$-1, 2, -1$” 三对角逆矩阵 $(bold(A) bold(A)^T)^(-1)$ 是由于已知其特征值都有 $2 - 2 cos theta$ 的形式 (范例 6.5 C)#footnote[译者注: 作者的叙述似乎有误. 本段及下一段按原文译出, 仅供参考.]. 因此可知 $bold(A) bold(A)^T$ 的特征值 $lambda$ 以及 $bold(A)$ 的奇异值 $sigma$:

#eqnum($ lambda = 1/(2 - 2 cos theta) = 1/(4 sin^2 (theta/2)) quad "推出" quad sigma = sqrt(lambda) = 1/(2 sin (theta/2)) . $, 5)

$n$ 个不同角度 $theta$ 等距排列, 这使得本题相当特别:

$ theta = pi/(2n + 1), (3 pi)/(2n + 1), dots.c, ((2n - 1) pi)/(2n + 1). $

对 $n = 4$ 时的特例, $bold(A) bold(A)^T$ 的一个特征值 $lambda = 1$ ($theta = (3 pi)/9$ 对应 $2 sin (theta/2) = 1$). 因此 $sigma = sqrt(lambda) = 1$ 是 $bold(A)$ 的一个奇异值. 可以验证向量 $bold(u) = (1, 1, 0, -1)$ 满足 $bold(A) bold(A)^T bold(u) = bold(u)$ (一个确实特别的例子).

以下画出 $bold(A)$ 的 $n$ 个奇异值并观察其特点 (图 7.1(a)). 它们是下降的 (不像 $bold(A)$ 的特征值全为 1), 但这种下降趋势并不急剧. 所以 SVD 对三角形旗帜仅给出了较少的压缩. 对希尔伯特矩阵, SVD 则能给出较多的压缩 (图 7.1(b)).





#pagebreak()
