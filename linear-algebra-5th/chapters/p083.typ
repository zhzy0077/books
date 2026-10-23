#import "../theme.typ": *

用 $bold(I)$ 左乘 $bold(b)$ 的结果是 $bold(b)$, 而用 $bold(E)_(31)$ 左乘 $bold(b)$ 则是从 $bold(b)$ 的第 3 个分量中减去第 1 个分量的 $ell$ 倍, 当 $ell = 4$ 时, 对如下 $bold(b)$, 结果是 $9 - 4 = 5$:

#dmath[$ bold(I) bold(b) = mat(delim: "[", 1, 0, 0; 0, 1, 0; 0, 0, 1) mat(delim: "[", 1; 3; 9) = mat(delim: "[", 1; 3; 9), $]
#dmath[$ bold(E)_(31) bold(b) = mat(delim: "[", 1, 0, 0; 0, 1, 0; -4, 0, 1) mat(delim: "[", 1; 3; 9) = mat(delim: "[", 1; 3; 5) . $]

再来考虑 $bold(A) bold(x) = bold(b)$ 的左侧. 为实现利用 $bold(E)_(31)$ 将系数矩阵的 (3,1) 元素化为 0 的目标, 可用适当的 $bold(E)_(31)$ 同时左乘等号两侧.

上述表达式的变化规律符合这一目标. 从矩阵 $bold(A)$ 开始, 依次利用不同的 $bold(E)_(i j)$ 将主元下方位置的元素变为 0 (第一个 $bold(E)_(i j)$ 是 $bold(E)_(21)$), 最后得到上三角形矩阵 $bold(U)$. 下面分析详细的步骤.

首先注意一个细节——向量 $bold(x)$ 保持不变. 在消元过程中解 $bold(x)$ 不会改变 (这可能不只是一个细节), 只有系数矩阵发生了变化. 在 $bold(A) bold(x) = bold(b)$ 两侧同时左乘 $bold(E)$ 得 $bold(E) bold(A) bold(x) = bold(E) bold(b)$, 新的系数矩阵 $bold(E) bold(A)$ 就是 $bold(E)$ 左乘 $bold(A)$ 的结果.

#hei[注]  消元矩阵 $bold(E)_(i j)$ 是一个很好的例子, 能够展示矩阵对各行的作用, 但在后续学习中将不再出现. 通过多次消元后, 我们能够了解如何进行矩阵乘法 (矩阵 $bold(E)_(i j)$ 左乘的顺序变得非常重要). 矩阵 $bold(E)_(i j)$ 的乘积与逆非常易于描述, 它们也是本书经常用到的两个概念.

#align(center)[#v(6pt)#hei[矩阵乘法]#v(6pt)]

本节的一个重要问题是: 两个一般的矩阵如何相乘? 当前一个矩阵是消元矩阵 $bold(E)$ 时, 现在应该能分析出 $bold(E) bold(A)$ 的结果. 下面这个特殊的 $bold(E)$ 表示从 $bold(A)$ 的第 2 行中减去第 1 行的 2 倍, 乘数是 $ell = 2$:

#eqnum($ bold(E) bold(A) = mat(delim: "[", 1, 0, 0; -2, 1, 0; 0, 0, 1) mat(delim: "[", 2, 4, -2; 4, 9, -3; -2, -3, 7) \ = mat(delim: "[", 2, 4, -2; 0, 1, 1; -2, -3, 7) quad ("得到" 0). $, 3)

这个步骤不会影响 $bold(A)$ 的第 1 行和第 3 行, 因此 $bold(E) bold(A)$ 中这两行保持不变——只有第 2 行发生了变化. 从第 2 行中减去了第 1 行的 2 倍, 即矩阵乘法的运算结果与消元法的结果是一致的——新的线性方程组是 $bold(E) bold(A) bold(x) = bold(E) bold(b)$.

计算 $bold(E) bold(A) bold(x)$ 很简单但是涉及一个微妙的概念. 一方面, 在 $bold(A) bold(x) = bold(b)$ 两边同时左乘 $bold(E)$ 得 $bold(E) (bold(A) bold(x)) = bold(E) bold(b)$; 另一方面, 使用矩阵乘法, 结果是 $(bold(E) bold(A)) bold(x) = bold(E) bold(b)$, 即

第一个式子是 $bold(E)$ 左乘 $bold(A) bold(x)$, 第二个式子是 $bold(E) bold(A)$ 左乘 $bold(x)$, 二者相等.



#pagebreak()
