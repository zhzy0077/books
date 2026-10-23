#import "../theme.typ": *

#align(center, text[（a）$lambda^2$ 是 $bold(A)^2$ 的特征值 (如习题 4);])

#align(center, text[（b）$lambda^(-1)$ 是 $bold(A)^(-1)$ 的特征值 (如习题 3);])

#align(center, text[（c）$lambda + 1$ 是 $bold(A) + bold(I)$ 的特征值 (如习题 2).])

#ti[10.][求以下两个马尔可夫矩阵 $bold(A)$ 和 $bold(A)^infinity$ 的特征值及特征向量, 并根据结果解释为什么 $bold(A)^100$ 近似等于 $bold(A)^infinity$:

#dmath[$ bold(A) = mat(delim: "[", 0.6, 0.2; 0.4, 0.8), quad bold(A)^infinity = mat(delim: "[", 1/3, 1/3; 2/3, 2/3) . $]]

#ti[11.][设 $2 times 2$ 矩阵 $bold(A)$ 具有相异特征值 $lambda_1 != lambda_2$, 分别对应特征向量 $bold(x)_1, bold(x)_2$, 以下是关于该矩阵的一个奇特的事实: $bold(A) - lambda_1 bold(I)$ 的列是特征向量 $bold(x)_2$ 的倍数. 请解释原因.]

#ti[12.][求如下投影矩阵 $bold(P)$ 的三个特征向量 (投影矩阵的特征值为 $lambda = 1$ 和 0):

#dmath[$ "投影矩阵" quad bold(P) = mat(delim: "[", 0.2, 0.4, 0; 0.4, 0.8, 0; 0, 0, 1) . $]

如果两个特征向量对应相同的特征值 $lambda$, 那么它们的所有线性组合也对应特征值 $lambda$. 求出 $bold(P)$ 的一个不含零分量的特征向量.]

#ti[13.][由单位向量 $bold(u) = (1/6, 1/6, 3/6, 5/6)$ 构造秩 1 的投影矩阵 $bold(P) = bold(u) bold(u)^T$. 根据 $bold(u)^T bold(u) = 1$ 可知 $bold(P)^2 = bold(P)$.

#sub[(a) $bold(P) bold(u) = bold(u)$ 来自 $(bold(u) bold(u)^T) bold(u) = bold(u) (\_\_\_\_)$, 于是 $bold(u)$ 为对应于特征值 $lambda = 1$ 的特征向量;]
#sub[(b) 如果 $bold(v)$ 垂直于 $bold(u)$, 证明 $bold(P) bold(v) = bold(0)$, 从而一个特征值为 $lambda = 0$;]
#sub[(c) 求 $bold(P)$ 的对应于特征值 $lambda = 0$ 的三个线性无关的特征向量.]]
#ti[14.][旋转矩阵 $bold(Q) = mat(delim: "[", cos theta, -sin theta; sin theta, cos theta)$ 表示将 $x y$ 平面逆时针旋转角度 $theta$. $bold(Q)$ 没有实特征值. 利用二次方程求根公式求解 $det(bold(Q) - lambda bold(I)) = 0$, 得到 $lambda = cos theta plus.minus i sin theta$. 通过解方程组 $(bold(Q) - lambda bold(I)) bold(x) = bold(0)$, 求出 $bold(Q)$ 的特征向量. 提示: $i^2 = -1$.]

#ti[15.][每个置换矩阵 $bold(P)$ 保持 $bold(x) = (1, 1, dots.c, 1)$ 不变, 即 $bold(P) bold(x) = bold(x)$, 因而 $lambda = 1$ 是其中一个特征值. 由 $det(bold(P) - lambda bold(I)) = 0$ 求出如下置换矩阵的另外两个特征值 $lambda$ (可能是复数):

#dmath[$ bold(P)_1 = mat(delim: "[", 0, 1, 0; 0, 0, 1; 1, 0, 0), quad bold(P)_2 = mat(delim: "[", 0, 0, 1; 0, 1, 0; 1, 0, 0) . $]]

#ti[16.][$bold(A)$ 的行列式等于特征值之积 $lambda_1 lambda_2 dots.c lambda_n$. 首先将特征多项式 $det(bold(A) - lambda bold(I))$ 分解为 $n$ 个一次因式之积 (总是可行的), 然后令 $lambda = 0$:

#dmath[$ det(bold(A) - lambda bold(I)) = (lambda_1 - lambda)(lambda_2 - lambda) dots.c (lambda_n - lambda), quad "故" det bold(A) = \_\_\_\_ . $]

对于例 1, 验证上述结论, 其中马尔可夫矩阵 $bold(A)$ 的特征值为 $lambda = 1$ 和 $1/2$.]

#pagebreak()