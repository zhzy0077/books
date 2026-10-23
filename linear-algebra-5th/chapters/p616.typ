#import "../theme.typ": *

#sec[附录 1  矩阵分解]

#hei[1.] $bold(A) = bold(L) bold(U)$, 其中下三角形矩阵 $bold(L)$ 的对角元素均为 1, 上三角形矩阵 $bold(U)$ 的对角元素均为主元.
条件: 使用高斯消元法将方阵 $bold(A)$ 化简为 $bold(U)$ 的过程中不作行交换. 见第 2.6 节.

#hei[2.] $bold(A) = bold(L) bold(D) bold(U)$, 其中下三角形矩阵 $bold(L)$ 的对角元素均为 1, 主元矩阵 $bold(D)$ 是对角矩阵且对角元素均为主元, 上三角形矩阵 $bold(U)$ 的对角元素均为 1.
条件: 不作行交换. 矩阵 $bold(D)$ 中的主元是从 $bold(U)$ 中剥离出来的, 从而 $bold(U)$ 中对角元素均为 1. 当 $bold(A)$ 为对称矩阵时, $bold(U)$ 为 $bold(L)^T$, 于是 $bold(A) = bold(L) bold(D) bold(L)^T$. 见第 2.6 节.

#hei[3.] $bold(P) bold(A) = bold(L) bold(U)$ (使用置换矩阵 $bold(P)$ 可避免主元位置上出现零元素).
条件: $bold(A)$ 为可逆矩阵, 于是矩阵 $bold(P), bold(L), bold(U)$ 皆可逆. 置换矩阵 $bold(P)$ 预先对 $bold(A)$ 施行所有行交换操作, 从而确保 LU 分解正常进行. 备选方案为 $bold(A) = bold(L)_1 bold(P)_1 bold(U)_1$. 见第 2.7 节.

#hei[4.] $bold(E) bold(A) = bold(R)$, 左端 $m times n$ 矩阵 $bold(A)$ 是任意的, $bold(E)$ 为对应的 $m times m$ 可逆矩阵, 右端的 $bold(R)$ 可由语句 rref(A) 得到.
条件: 无! 最简行阶梯形矩阵 $bold(R)$ 包含 $r$ 个主元行和 $r$ 个主元列 ($r$ 为 $bold(A)$ 的秩), 它们的公共元素构成 $r times r$ 单位矩阵. $bold(E)$ 的后 $m - r$ 个行向量是 $bold(A)$ 的左零空间的一组基, 它们左乘 $bold(A)$ 得到 $bold(R)$ 的 $m - r$ 个全零行. $bold(E)^(-1)$ 的前 $r$ 列为 $bold(A)$ 的列空间的一组基. 见第 3.2 节.

#hei[5.] $bold(S) = bold(C)^T bold(C)$, 其中 $bold(C)$ 为上三角形矩阵, 矩阵 $bold(C), bold(C)^T$ 的对角元素均来自 $sqrt(bold(D))$.
条件: $bold(S)$ 为对称正定矩阵 (矩阵 $bold(D)$ 中 $n$ 个主元均为正数). 这就是矩阵 $bold(S)$ 的楚列斯基分解, 其中 $bold(C)$ 可由语句 chol(S) 得到. 因为 $bold(C)^T = bold(L) sqrt(bold(D))$, 所以 $bold(S) = bold(C)^T bold(C) = bold(L) bold(D) bold(L)^T$. 见第 6.5 节.

#hei[6.] $bold(A) = bold(Q) bold(R)$, 其中矩阵 $bold(Q)$ 的各列为标准正交的, $bold(R)$ 为上三角形矩阵.
条件: $bold(A)$ 的各列向量线性无关. 通过格拉姆-施密特过程或豪斯霍尔德过程将 $bold(A)$ 的列向量正交化为 $bold(Q)$ 中的各列向量. 当 $bold(A)$ 为方阵时, $bold(Q)^(-1) = bold(Q)^T$. 见第 4.4 节.

#hei[7.] $bold(A) = bold(X) bold(Λ) bold(X)^(-1)$, 其中矩阵 $bold(X)$ 的列向量为 $bold(A)$ 的特征向量, 对角矩阵 $bold(Λ)$ 的对角元素为 $bold(A)$ 的特征值, 矩阵 $bold(X)^(-1)$ 的列向量为 $bold(A)$ 的左特征向量.
条件: $bold(A)$ 必须有 $n$ 个线性无关的特征向量. 见第 6.2 节.

#hei[8.] $bold(S) = bold(Q) bold(Λ) bold(Q)^T$, 其中 $bold(Q)$ 为正交矩阵, 对角矩阵 $bold(Λ)$ 的对角元素为 $bold(S)$ 的实特征值, $bold(Q)^T$ 即 $bold(Q)^(-1)$.
条件: $bold(S)$ 为实对称矩阵, 满足 $bold(S)^T = bold(S)$. 这就是谱定理. 见第 6.4 节.

#hei[9.] $bold(A) = bold(B) bold(J) bold(B)^(-1)$, 其中矩阵 $bold(B)$ 的列向量为广义特征向量, 若尔当矩阵 $bold(J)$ 由若尔当块构成.
条件: $bold(A)$ 为任意方阵. $bold(A)$ 的每个线性无关的特征向量对应若尔当矩阵 $bold(J)$ 的一个子块, 该子块又对应 $bold(A)$ 的一个特征值. 见第 8.3 节.

#hei[10.] $bold(A) = bold(U) bold(Σ) bold(V)^T$, 其中 $bold(U)$ 为 $m times m$ 正交矩阵, $m times n$ 奇异值矩阵 $bold(Σ)$ 对角元素为奇



#pagebreak()