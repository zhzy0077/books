#import "../theme.typ": *

#yaodian[
  #grid(columns: (auto, 1fr, auto), column-gutter: 1.2em, align: (right+horizon, center+horizon, right+horizon),
    [矩阵左乘向量,\ 列向量的线性组合],
    [$ A bold(x) = mat(1,0,0; -1,1,0; 0,-1,1) mat(x_1; x_2; x_3) = mat(x_1; x_2 - x_1; x_3 - x_2) . $],
    [$(2)$],
  )
]

向量 $bold(x)$ 的三个分量为数 $x_1, x_2, x_3$, 而矩阵 $A$ 左乘向量 $bold(x)$ 等价于 (1) 式中 $A$ 的三个列向量的线性组合 $x_1 bold(u) + x_2 bold(v) + x_3 bold(w)$.

这不仅仅是 $A bold(x)$ 的定义, 上述改写还带来了视角上的重要变化: 最初是数 $x_1, x_2, x_3$ 分别乘三个列向量, 现在是矩阵左乘这些数构成的列向量. 矩阵 $A$ 作用于向量 $bold(x)$, 所得结果 $A bold(x)$ 是矩阵 $A$ 所有列向量的线性组合, 记为 $bold(b)$.

为理解上述作用, 可写出 $A bold(x)$ 的分量 $b_1, b_2, b_3$:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ A bold(x) = mat(1,0,0; -1,1,0; 0,-1,1) mat(x_1; x_2; x_3) = mat(x_1; x_2 - x_1; x_3 - x_2) = mat(b_1; b_2; b_3) = bold(b) . $],
  align(bottom)[$(3)$],
)

上式中, 输入是 $bold(x)$, 输出是 $bold(b) = A bold(x)$. 向量 $bold(b)$ 中包含了输入向量 $bold(x)$ 的差分, 其中顶部的差分为 $x_1 - x_0 = x_1 - 0$, 因此矩阵 $A$ 是一个“差分矩阵”.

下式给出了向量 $bold(x) = (1,4,9)$ 的差分示例, 其中向量 $bold(x)$ 的分量是完全平方数, 作用后 $bold(b)$ 的分量为奇数:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ bold(x) = mat(1;4;9), quad A bold(x) = mat(1 - 0; 4 - 1; 9 - 4) = mat(1;3;5) = bold(b) . $],
  align(bottom)[$(4)$],
)

同理可得一个 $4 times 4$ 差分矩阵: 设向量 $bold(x)$ 的第 4 个分量是完全平方数 $x_4 = 16$, 则第 4 个差分是 $x_4 - x_3 = 16 - 9 = 7$（即 $bold(b)$ 中第 4 个分量, 仍为奇数）. 因此利用矩阵可以一次算出所有的差分为 1, 3, 5, 7.

#hei[注]　利用行向量来计算 $A bold(x)$. 读者可能之前已经学习过 $A bold(x)$（矩阵左乘向量）的计算方法, 而且很可能采用了另一种视角, 即使用行向量而非列向量进行计算. 这种方法通常计算矩阵的每一行与向量 $bold(x)$ 的点积:

#grid(columns: (auto, 1fr, auto), column-gutter: 1.2em, align: (right+horizon, center+horizon, right+horizon),
  [计算 $A bold(x)$ 也可用\ 行向量计算点积],
  [$ A bold(x) = mat(1,0,0; -1,1,0; 0,-1,1) mat(x_1; x_2; x_3) = mat((1,0,0) dot (x_1,x_2,x_3); (-1,1,0) dot (x_1,x_2,x_3); (0,-1,1) dot (x_1,x_2,x_3)) . $],
  [$(5)$],
)

上述点积的计算结果与 (3) 式的 $x_1$, $x_2 - x_1$ 和 $x_3 - x_2$ 完全相同（计算点积时将 $bold(x)$ 改写成行向量）. 前面介绍的计算 $A bold(x)$ 的新方法是每次处理一列. 线性组合是线性代数的关键概念, 而 $A bold(x)$ 恰好是矩阵 $A$ 的列向量组的线性组合.

如果分量是数字, 可以逐行计算 $A bold(x)$; 如果分量是字母, 逐列计算 $A bold(x)$ 也不失为好方法. 第 2 章会利用这些规则学习矩阵乘法, 并进一步解释相关的概念.



#pagebreak()
