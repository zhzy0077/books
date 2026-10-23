#import "../theme.typ": *

#secBracket[11.3  迭代法与预条件子]

到目前为止, 求解 $bold(A) bold(x) = bold(b)$ 的方法都可归为直接法: 对给定的 $bold(A)$ 直接变形. 现在我们来考虑迭代法, 该方法利用一个更简单的矩阵 $bold(S)$ 来替代矩阵 $bold(A)$, 而将差值 $bold(T) = bold(S) - bold(A)$ 移至方程的右边. 用矩阵 $bold(S)$ 替代矩阵 $bold(A)$, 可使问题变得更易求解, 其代价是必须重复计算这一组更简单的式子.

迭代法非常容易构造. 只需将 $bold(A)$ 分解为恰当的 $bold(S) - bold(T)$, 进而将 $bold(A) bold(x) = bold(b)$ 改写为

#eqnum($ bold(S) bold(x) = bold(T) bold(x) + bold(b) . $, 1)

与直接法相比, 迭代法的新颖之处在于无需求解原方程组, 而是迭代计算 (1) 式. 由每一步迭代值 $bold(x)_k$ 可得到下一步迭代值 $bold(x)_(k+1)$:

#dingliC[#eqnumL([#hei[迭代格式]], $ bold(S) bold(x)_(k+1) = bold(T) bold(x)_k + bold(b) . $, 2)]

由任意初值 $bold(x)_0$, 迭代一次得 $bold(S) bold(x)_1 = bold(T) bold(x)_0 + bold(b)$, 继续迭代得 $bold(S) bold(x)_2 = bold(T) bold(x)_1 + bold(b) dots.c$ 运用迭代法求解时, 进行 100 次这样的迭代是非常普遍的——通常迭代次数会更多. 当 $bold(x)_(k+1)$ 非常接近 $bold(x)_k$ (如有可能) 时, 或者当残差 $bold(r)_k = bold(b) - bold(A) bold(x)_k$ 接近零向量时, 迭代过程停止. 迭代法的目标是使迭代值越来越接近真解, 而且要比消元法更快. 当 $bold(x)_k$ 收敛时, 迭代值序列的极限 $bold(x)_infinity$ 即为 (1) 式的解: $bold(S) bold(x)_infinity = bold(T) bold(x)_infinity + bold(b)$, 也即 $bold(A) bold(x)_infinity = bold(b)$.

分解 $bold(A) = bold(S) - bold(T)$ 的两个依据是单步计算速度和迭代值收敛速度. 单步计算速度取决于 $bold(S)$, 迭代值收敛速度取决于 $bold(S)^(-1) bold(T)$:

(1) 在 (2) 式中, 为了易于计算 $bold(x)_(k+1)$, “预条件子” $bold(S)$ 可以选为 $bold(A)$ 的对角线部分或三角形部分. 有时也使用 $bold(S) = bold(L)_0 bold(U)_0$, 相较于原分解 $bold(A) = bold(L) bold(U)$, $bold(L)_0$ 与 $bold(U)_0$ 含有更多零元. 这个方法称为 “不完全 LU 分解方法”.

(2) $bold(x) - bold(x)_k$ (即误差 $bold(e)_k$) 应当快速收敛至零向量. (1) 式减去 (2) 式可消去 $bold(b)$, 即得关于 $bold(e)_k$ 的误差方程:

#dingliC[#eqnumL([#hei[误差方程]], $ bold(S) bold(e)_(k+1) = bold(T) bold(e)_k "即" bold(e)_(k+1) = bold(S)^(-1) bold(T) bold(e)_k . $, 3)]

这意味着每一步误差将左乘 $bold(S)^(-1) bold(T)$. 若 $bold(S)^(-1) bold(T)$ 很 “小”, 它的幂也会快速收敛至零矩阵. 但是, 所谓的 “小” 应如何刻画呢?

若采用最极端的分解 $bold(S) = bold(A), bold(T) = bold(O)$, 那么迭代的第一步对应原方程组 $bold(A) bold(x) = bold(b)$. 由于 $bold(S)^(-1) bold(T)$ 为零向量, 迭代值显然收敛, 但对于求原方程组并无帮助. 因此, 对矩阵 $bold(S)$ 的选择就是单步计算速度 (对应一个简单的 $bold(S)$) 与迭代值快速收敛 (对应的 $bold(S)$ 近似 $bold(A)$) 之间的权衡. 下面给出矩阵 $bold(S)$ 的一些取法:

(1) $bold(S)$ 为 $bold(A)$ 的对角线部分 (对应雅可比迭代法);

(2) $bold(S)$ 为 $bold(A)$ 的下三角形部分且包含对角元素 (对应高斯-赛德尔 (Gauss-Seidel) 迭代法);



#pagebreak()