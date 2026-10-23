#import "../theme.typ": *

#xiti[挑 战 题]

#ti[30.][对于复矩阵，能推出特征值为实数的对称性 $S^T = S$ 必须改为 $overline(S)^T = S$（第 9.2 节）. 根据 $det(S - lambda I) = 0$，求出 $2 times 2$ 埃尔米特矩阵 $S = mat(4, 2 + i; 2 - i, 0) = overline(S)^T$ 的特征值.]

#ti[31.][正规矩阵 $N$ 满足 $overline(N)^T N = N overline(N)^T$. 对实矩阵而言，这就是 $N^T N = N N^T$. 正规矩阵包括对称矩阵、反称矩阵以及正交矩阵（它们的特征值 $lambda$ 分别是实数、虚数以及长度满足 $|lambda| = 1$）. 其他正规矩阵可以有任意复特征值.]

#yaodian[要点: $n$ 阶正规矩阵有 $n$ 个标准正交特征向量. 这些向量 $bold(x)_i$ 可能会有复数分量. 在复数情形下，正交性意味着 $overline(bold(x))_i^T bold(x)_j = 0$，内积（点积）$bold(x)^T bold(y)$ 相应变成 $overline(bold(x))^T bold(y)$（第 9 章）. 检验矩阵 $bold(Q)$ 的 $n$ 列是否标准正交的条件不再是 $bold(Q)^T bold(Q) = I$，而是 $overline(bold(Q))^T bold(Q) = I$.]

#align(center, dingli[N 有 $n$ 个标准正交的特征向量 $quad (N = Q Lambda overline(Q)^T)$ $quad$ 当且仅当 N 是正规矩阵.])

(a) 由 $N = Q Lambda overline(Q)^T$，其中 $overline(Q)^T Q = I$，证明 $overline(N)^T N = N overline(N)^T$，即 $N$ 是正规的.

(b) 再从 $overline(N)^T N = N overline(N)^T$ 出发，舒尔发现对每个矩阵 $A$，均有 $A = Q T overline(Q)^T$，其中 $T$ 为三角形矩阵. 对于正规矩阵 $A = N$，用以下三步证明三角形矩阵 $T$ 就是对角矩阵. 于是 $T = Lambda$.

第 1 步: 将 $N = Q T overline(Q)^T$ 代入 $overline(N)^T N = N overline(N)^T$，得到 $overline(T)^T T = T overline(T)^T$；

第 2 步: 设 $T = mat(a, b; 0, d)$ 满足 $overline(T)^T T = T overline(T)^T$，证明 $b = 0$；

第 3 步: 将第 2 步结果推广至 $n$ 阶方阵的情形，因此，任意正规的三角形矩阵 $T$ 必为对角矩阵.

#ti[32.][如果 $lambda_("max")$ 是对称矩阵 $S$ 的最大特征值，那么对角元素中没有超过 $lambda_("max")$ 的. 对称矩阵 $S = Q Lambda Q^T$ 的第一个对角元素 $a_11$ 是什么? 说明为什么 $a_11 <= lambda_("max")$.]

#ti[33.][设矩阵 $A$ 满足 $A^T = -A$（即实的反称矩阵）. 解释以下关于 $A$ 的事实:]

(a) 对于每个实向量 $bold(x)$，均有 $bold(x)^T A bold(x) = 0$；

(b) $A$ 的特征值均为纯虚数；

(c) $A$ 的行列式为正数或零（即非负）.

对于 (a)，可将 $bold(x)^T A bold(x)$ 乘开，再观察各项抵消的情况；或者将 $bold(x)^T (A bold(x))$ 转置以得出 $-(A bold(x))^T bold(x)$. 对于 (b)，由 $A bold(z) = lambda bold(z)$ 推出 $overline(bold(z))^T A bold(z) = lambda overline(bold(z))^T bold(z) = lambda norm(bold(z))^2$，根据 (a) 可知 $overline(bold(z))^T A bold(z) = (bold(x) - i bold(y))^T A (bold(x) + i bold(y))$ 的实部为零. 再由 (b) 证 (c).

#ti[34.][如果对称矩阵 $S$ 的全部特征值均为 $lambda = 2$，如何证明 $S$ 必为 $2 I$? 要点：对称性确保 $S = Q Lambda Q^T$. 其中的 $Lambda$ 是什么?]

#ti[35.][哪些对称矩阵 $S$ 也是正交的? 此时 $S^T = S^(-1)$.]



#pagebreak()