#import "../theme.typ": *

#hei[29.] 在习题 28 中, 对于小步长 $Delta t$, 选择中心差分 (蛙跳法) 非常成功. 然而对于 $Delta t = sqrt(2)$ 和 2 未必如此, 分别求出如下 $bold(A)$ 对应的特征值:

$ "(a)" bold(A) = mat(delim: "[", 1, sqrt(2); -sqrt(2), -1); quad quad "(b)" bold(A) = mat(delim: "[", 1, 2; -2, -3). $

两个矩阵的特征值 $lambda$ 都满足 $|lambda| = 1$. 在两种情形下, 分别计算 $bold(A)^4$, 并求出 $bold(A)$ 的特征向量. 第二个值 $Delta t = 2$ 在不稳定的边界上. 任何步长 $Delta t > 2$ 将导致 $|lambda| > 1$, 从而 $bold(U)_n = bold(A)^n bold(U)_0$ 中的幂 $bold(A)^n$ 会急剧膨胀.

#hei[注]　有读者可能会认为, 没有人会在 $Delta t > 2$ 的情形下计算. 但如果原子振动方程为 $y'' = -"1 000 000" y$, 那么取 $Delta t > "0.000 2"$ 将会产生不稳定性. 蛙跳法有非常严苛的稳定性限制条件. 由于 $Delta t = 3$ 太大了, 所以

$ cases(Y_(n+1) = Y_n + 3Z_n, Z_(n+1) = Z_n - 3Y_(n+1)) $

的解将趋于无穷, 此时系数矩阵的特征值满足 $|lambda| > 1$.

#hei[30.] 解 $y'' = -y$ 的另一种好思路是梯形法 (半向前/半向后):

#grid(columns: (auto, 1fr), column-gutter: 1.5em, align: (right + horizon, center + horizon),
  [梯形法],
  [$ mat(delim: "[", 1, -Delta t/2; Delta t/2, 1) mat(delim: "[", Y_(n+1); Z_(n+1)) = mat(delim: "[", 1, Delta t/2; -Delta t/2, 1) mat(delim: "[", Y_n; Z_n). $],
)

这或许是保持 $(Y_n, Z_n)$ 正好在固定圆周上的最佳方法.

(a) 对上式左边矩阵取逆, 以将等式写为 $bold(U)_(n+1) = bold(A) bold(U)_n$. 证明 $bold(A)$ 为正交矩阵: $bold(A)^T bold(A) = bold(I)$. 这些点 $bold(U)_n$ 从未离开圆周. 一般地, 如果 $bold(B)^T = -bold(B)$, 那么 $bold(A) = (bold(I) - bold(B))^(-1)(bold(I) + bold(B))$ 总是正交矩阵.

(b) (可选, MATLAB) 由 $bold(U)_0 = (1, 0)$ 到 $bold(U)_32$ 迭代 32 步, 其中 $Delta t = (2pi)/32$. $bold(U)_32 = bold(U)_0$ 成立吗? 这里可能产生误差.

#hei[31.] 矩阵余弦的定义方式与 $e^bold(A)$ 的类似, 这里借用了 $cos t$ 的级数展开式:

$ cos t = 1 - 1/(2!) t^2 + 1/(4!) t^4 - dots.c, quad quad cos bold(A) = bold(I) - 1/(2!) bold(A)^2 + 1/(4!) bold(A)^4 - dots.c . $

(a) 如果 $bold(A) bold(x) = lambda bold(x)$, 那么用后一式每项左乘 $bold(x)$, 可以求出 $cos bold(A)$ 的特征值.

(b) 求出矩阵 $bold(A) = mat(delim: "[", pi, pi; pi, pi)$ 的特征值, 对应的特征向量为 $(1, 1)$ 和 $(1, -1)$. 根据 $cos bold(A)$ 的特征值和特征向量, 求出矩阵 $bold(C) = cos bold(A)$.

(c) $cos(bold(A) t)$ 的二阶导数为 $-bold(A)^2 cos(bold(A) t)$.

$ bold(u)(t) = cos(bold(A) t) bold(u)(0) "是满足" bold(u)'(0) = 0 "的方程" (dif^2 bold(u))/(dif t^2) = -bold(A)^2 bold(u) "的解." $

#pagebreak()