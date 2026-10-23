#import "../theme.typ": *

#align(center, subsec[一次消元步骤的矩阵形式])

将线性方程组写成形如 $bold(A) bold(x) = bold(b)$ 的矩阵形式时, 如何表示消元步骤? 例如, 若从第二个方程中减去第一个方程的 2 倍, 则右边的常数项也要从 $bold(b)$ 的第二个分量中减去第一个分量的 2 倍.

#grid(columns: (auto, auto, auto, auto), column-gutter: 1.6em, align: (center+horizon, center+horizon, center+horizon, center+horizon),
  [第一个步骤],
  [$ bold(b) = mat(delim: "[", 2; 8; 10) $],
  [变成],
  [$ bold(b)_("新") = mat(delim: "[", 2; 4; 10) . $],
)

现在要用一个矩阵来完成上述减法! 这就需要找到一个 “消元矩阵” $bold(E)$, 通过 $bold(E)$ 左乘 $bold(b)$ 来得到相同的结果, 即 $bold(b)_("新") = bold(E) bold(b)$ 表示从 $b_2$ 中减去 $2b_1$:

#dingliC[消元矩阵是    $ bold(E) = mat(delim: "[", 1, 0, 0; -2, 1, 0; 0, 0, 1) . $]

用 $bold(E)$ 左乘向量或矩阵的效果就是从第 2 行中减去第 1 行的 2 倍, 第 1 行和第 3 行保持不变:

#dmath[$ mat(delim: "[", 1, 0, 0; -2, 1, 0; 0, 0, 1) mat(delim: "[", 2; 8; 10) = mat(delim: "[", 2; 4; 10), $]
#dmath[$ mat(delim: "[", 1, 0, 0; -2, 1, 0; 0, 0, 1) mat(delim: "[", b_1; b_2; b_3) = mat(delim: "[", b_1; b_2 - 2b_1; b_3) . $]

上式中 $bold(E)$ 的第 1 行和第 3 行来自单位矩阵 $bold(I)$, 能够保持被乘向量的第一个和第三个分量不变 (2 和 10). 在进行消元步骤后, 第二个分量变成了 4, 也就是 $b_2 - 2b_1$.

形如 $bold(E)$ 之类的 “初等矩阵” 或者 “消元矩阵” 可简要描述为将单位矩阵 $bold(I)$ 中的一个 0 替换为乘数 $-ell$:

#yaodian[
  单位矩阵 $bold(I)$ 主对角线上的元素是 1, 其余元素都是 0, 对任意 $bold(b)$ 都有 $bold(I) bold(b) = bold(b)$. 相比单位矩阵, 初等矩阵或消元矩阵 $bold(E)_(i j)$ 在第 $i$ 行第 $j$ 列 ($i != j$) 为非零元素 $-ell$, 用 $bold(E)_(i j)$ 左乘向量或矩阵的效果是从第 $i$ 行中减去第 $j$ 行的 $ell$ 倍.
]

#hei[例 2]  矩阵 $bold(E)_(31)$ 的 (3,1) 位置 (即第 3 行第 1 列) 的元素是 $-ell$:

#grid(columns: (auto, auto, auto, auto), column-gutter: 1.6em, align: (center+horizon, center+horizon, center+horizon, center+horizon),
  [单位矩阵],
  [$ bold(I) = mat(delim: "[", 1, 0, 0; 0, 1, 0; 0, 0, 1) , $],
  [消元矩阵],
  [$ bold(E)_(31) = mat(delim: "[", 1, 0, 0; 0, 1, 0; -ell, 0, 1) . $],
)



#pagebreak()
