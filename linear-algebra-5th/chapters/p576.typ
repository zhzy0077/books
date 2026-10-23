#import "../theme.typ": *

例子, 可构造

#eqnumL([#hei[SOR 方法]], $ cases(2u_(k+1) = (2 - 2 omega) u_k + omega v_k + 4 omega, -omega u_(k+1) + 2v_(k+1) = (2 - 2 omega) v_k - 2 omega) . $, 9)

虽然上式形式上看起来更复杂, 但是使用计算机求解时一如既往地快. SOR 方法可看成含有可调参数 $omega$ 的高斯-赛德尔迭代法, 最优的 $omega$ 取值可以使该算法运行更快.

下面将介绍特定的 $n$ 阶测试矩阵——作者最喜欢的 “$-1, 2, -1$” 三对角矩阵 $bold(K)$, 并讨论运用上述三种迭代方法时对应矩阵的谱半径. $bold(K)$ 的对角元素为 2, 并且其上、下元素都为 $-1$. 在上述的例子中 $n = 2$, 因此可知 $cos pi/3 = 1/2$ 是雅可比迭代法的特征值, 并且将 $|lambda|_max$ 平方可得高斯-赛德尔迭代法对应矩阵的谱半径.

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  将 $n$ 阶 “$-1, 2, -1$” 三对角矩阵分解为 $bold(K) = bold(S) - bold(T)$, 并计算矩阵 $bold(B) = bold(S)^(-1) bold(T)$ 的特征值, 可得

  雅可比迭代法 ($bold(S)$ 为 “$0, 2, 0$” 三对角矩阵): $bold(S)^(-1) bold(T)$ 的谱半径

  #dmath[$ |lambda|_max = cos pi/(n+1); $]

  高斯-赛德尔迭代法 ($bold(S)$ 为 “$-1, 2, 0$” 三对角矩阵): $bold(S)^(-1) bold(T)$ 的谱半径

  #dmath[$ |lambda|_max = (cos pi/(n+1))^2; $]

  SOR 迭代法 (最优 $omega$): $bold(S)^(-1) bold(T)$ 的谱半径

  #dmath[$ |lambda|_max = ((cos pi/(n+1))^2)/((1 + sin pi/(n+1))^2). $]
]

值得注意的是: 系数矩阵为 “$-1, 2, -1$” 三对角矩阵时, 不适合使用迭代法求解, 因为对三对角矩阵进行消元速度非常快 (得到精确 LU 分解). 迭代法适用于在远离中心对角线位置含有非零元的大型稀疏矩阵, 对这类矩阵进行 LU 分解后, 得到的 $bold(L)$ 和 $bold(U)$ 会比原矩阵含有更多的非零元. 这个将零元变成非零元的过程就是使消元法计算量很大的原因.

最后再介绍一种分解. “不完全 LU 分解方法” 的思想是将 $bold(L)$ 和 $bold(U)$ 中的绝对值很小的非零元改为零, 以得到三角形矩阵 $bold(L)_0$ 和 $bold(U)_0$, 且它们为稀疏矩阵. 在该分解方法中左边 $bold(S) = bold(L)_0 bold(U)_0$, 且每一步迭代都运行很快:

#align(center, hei[不完全 LU 分解方法] + h(1em) + $bold(L)_0 bold(U)_0 bold(x)_(k+1) = (bold(L)_0 bold(U)_0 - bold(A)) bold(x)_k + bold(b).$)

在上式右边进行稀疏矩阵-向量乘法: 先计算 $bold(U)_0 bold(x)_k$, 再计算 $bold(L)_0 (bold(U)_0 bold(x)_k)$. 不要直接用 $bold(L)_0$ 左乘 $bold(U)_0$, 因为它们都是矩阵, 计算量会大很多. 然后, 在上式左边依次进行向下和向上的替换即可得到 $bold(x)_(k+1)$. 如果 $bold(L)_0 bold(U)_0$ 和矩阵 $bold(A)$ 很接近, 那么 $|lambda|_max$ 就比较小, 只需迭代几步就能得到非常精确的解.



#pagebreak()