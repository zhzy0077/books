#import "../theme.typ": *

(3) $bold(S)$ 为 $bold(L)$ 的近似值左乘 $bold(U)$ 的近似值 (对应不完全 LU 分解方法).

接下来考虑的第一个问题涉及线性代数理论: 什么时候 $bold(x)_k$ 会收敛到 $bold(x)$? 事实上, $|lambda|_max$ 决定了收敛速度. 在雅可比迭代法和高斯-赛德尔迭代法的例子中, 我们将计算 “谱半径” $|lambda|_max$, 即迭代矩阵 $bold(B) = bold(S)^(-1) bold(T)$ 中绝对值最大的特征值.

#subsec[谱半径 $rho(bold(B))$ 控制收敛速度]

方程 (3) 为 $bold(e)_(k+1) = bold(S)^(-1) bold(T) bold(e)_k$. 每一次迭代后, 误差都将左乘矩阵 $bold(B) = bold(S)^(-1) bold(T)$, 则 $k$ 次迭代之后的误差为 $bold(e)_k = bold(B)^k bold(e)_0$. 因此, 当矩阵 $bold(B) = bold(S)^(-1) bold(T)$ 的幂趋于零矩阵时, 误差将趋于零向量. 下面将看到矩阵 $bold(B)$ 的特征值——尤其是绝对值最大的特征值——如何控制矩阵的幂 $bold(B)^k$.

#dingli[矩阵的幂 $bold(B)^k$ 趋于零矩阵当且仅当矩阵 $bold(B)$ 的所有特征值 $lambda$ 都满足 $|lambda| < 1$. 同时, 收敛速度由矩阵 $bold(B)$ 的谱半径 $rho = max |lambda(bold(B))|$ 控制.]

判定迭代格式收敛的检验条件为 $|lambda|_max < 1$, 这也意味着矩阵 $bold(B)$ 的实特征值的取值必须在 $-1$ 到 $1$ 之间, 复特征值 $lambda = a + i b$ 必须满足 $|lambda|^2 = a^2 + b^2 < 1$. 谱半径 “$rho$” 实际上是 $0$ 到矩阵 $bold(B) = bold(S)^(-1) bold(T)$ 的特征值的最大距离, 即 $rho = |lambda|_max$.

为了理解为什么条件 $|lambda|_max < 1$ 是必要的, 先假设起始误差 $bold(e)_0$ 恰好是矩阵 $bold(B)$ 的一个特征向量, 则迭代一步后误差为 $bold(B) bold(e)_0 = lambda bold(e)_0$, 而迭代 $k$ 次之后误差为 $bold(B)^k bold(e)_0 = lambda^k bold(e)_0$. 如果我们以一个特征向量作为起始误差, 那么后续的迭代误差都与该特征向量有关, 并且因子 $lambda^k$ 趋于 $0$ 当且仅当 $|lambda| < 1$. 由此可见, 特征值满足条件 $|lambda|_max < 1$.

为了理解为什么条件 $|lambda|_max < 1$ 是充分的, 可以假设 $bold(e)_0$ 能表示为矩阵 $bold(B)$ 的特征向量的线性组合形式: 设 $bold(e)_0 = c_1 bold(x)_1 + c_2 bold(x)_2 + dots.c + c_n bold(x)_n$, 迭代 $k$ 次可得

#dmath[$ bold(e)_k = c_1 lambda_1^k bold(x)_1 + c_2 lambda_2^k bold(x)_2 + dots.c + c_n lambda_n^k bold(x)_n. $ (4)]

上式由矩阵特征向量的性质很容易得到! 当左乘矩阵 $bold(B)$ 以后, 每一个特征向量 $bold(x)_i$ 都需乘 $lambda_i$. 如果所有的特征值 $lambda_i$ 都满足 $|lambda_i| < 1$, 则由 (4) 式可知误差 $bold(e)_k$ 趋向于零向量.

例 1 矩阵 $bold(B) = mat(0.6, 0.5; 0.6, 0.5)$ 满足 $lambda_max = 1.1, bold(B)' = mat(0.6, 1.1; 0, 0.5)$ 满足 $lambda_max = 0.6$.

$bold(B)^2$ 等于 $1.1 bold(B)$, $bold(B)^3$ 等于 $(1.1)^2 bold(B)$. 由此可见矩阵 $bold(B)$ 的幂 (的范数) 将会无限增大. 而矩阵 $bold(B)'$ 的幂则截然不同. 矩阵 $(bold(B)')^k$ 对角线上的元素为 $(0.6)^k$ 和 $(0.5)^k$, 同时非对角线上的元素也含有 $rho^k = (0.6)^k$, 这说明 $(bold(B)')^k$ 将收敛到零矩阵, 并且 $lambda_max = 0.6$ 控制着收敛速度.

注 当特征向量太少时, (4) 式是不正确的. 对于矩阵 $bold(B)$ 的特征向量缺失以及不能对角化的情形, 我们需要研究它的若尔当标准形:

#dingliC[$bold(B) = bold(M) bold(J) bold(M)^(-1)$, 且 $bold(B)^k = bold(M) bold(J)^k bold(M)^(-1)$. #h(1.2em) (5)]

#pagebreak()