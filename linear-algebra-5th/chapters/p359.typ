#import "../theme.typ": *

#grid(
  columns: (1fr, auto),
  align: (right + horizon, right + horizon),
  [#line(length: 100%, stroke: 0.8pt)],
  subsec[■ 范例解析],
)

#hei[6.3 A]　分别利用将 $e^(lambda t)$ 代入以及线性代数求解 $y'' + 4y' + 3y = 0$.

#hei[解]　将 $y = e^(lambda t)$ 代入得到 $(lambda^2 + 4 lambda + 3) e^(lambda t) = 0$. 将二次多项式因式分解为

#dmath[$ lambda^2 + 4 lambda + 3 = (lambda + 1)(lambda + 3) = 0. $]

因此 $lambda_1 = -1$ 和 $lambda_2 = -3$, 那么对应的线性无关解为 $y_1 = e^(-t)$ 和 $y_2 = e^(-3t)$. 从而通解 $y = c_1 y_1 + c_2 y_2$ 在 $t -> +infinity$ 时趋于零.

使用线性代数方法时, 设 $bold(u) = (y, y')$, 故向量方程为 $bold(u)' = bold(A) bold(u)$:

#dmath[$ cases((dif y)/(dif t) = y', (dif y')/(dif t) = -3y - 4y') quad "转换为" quad (dif bold(u))/(dif t) = mat(delim: "[", 0, 1; -3, -4) bold(u) = bold(A) bold(u). $]

上述矩阵 $bold(A)$ 是 "友矩阵", 其特征值是 $-1$ 和 $-3$ (与前一解法相同):

#dmath[$ "相同的二次多项式" quad det(bold(A) - lambda bold(I)) = abs(mat(delim: "[", -lambda, 1; -3, -4 - lambda)) = lambda^2 + 4 lambda + 3 = 0. $]

$bold(A)$ 的特征向量为 $(1, lambda_1)$ 和 $(1, lambda_2)$. 然后用矩阵指数函数可以写出方程的通解.

两种方法中, $y(t)$ 的衰减都源自 $e^(-t)$ 和 $e^(-3t)$. 对于二阶常系数微分方程对应的向量方程, 利用矩阵指数函数 $e^(bold(A) t)$ 和微积分可推出其线性代数形式 $bold(A) bold(x) = lambda bold(x)$.

#hei[注]　在线性代数解法中, 特征向量短缺时需特别处理. 如果 $lambda_1 = lambda_2$, 特征向量 $(1, lambda_1)$ 和 $(1, lambda_2)$ 就是同一向量, 那么 $bold(A)$ 无法对角化. 此时, 对于 $(dif bold(u))/(dif t) = bold(A) bold(u)$, 还没有凑足两个线性无关的解.

在微积分分解法中, 麻烦也来自重复的 $lambda$. 此时除了 $y = e^(lambda t)$, 需要找出第二个线性无关解——$y = t e^(lambda t)$. 该解 (带了一个额外的 $t$) 出现在矩阵指数函数 $e^(bold(A) t)$ 中. 例 4 已展示了此过程.

#hei[6.3 B]　对如下两个方程 $bold(u)' = bold(A) bold(u)$ 和 $bold(u)'' = bold(A) bold(u)$:

#dmath[$ (dif bold(u))/(dif t) = mat(delim: "[", -2, 1, 0; 1, -2, 1; 0, 1, -2) bold(u), quad (dif^2 bold(u))/(dif t^2) = mat(delim: "[", -2, 1, 0; 1, -2, 1; 0, 1, -2) bold(u) quad "且均满足" quad (dif bold(u))/(dif t)(0) = 0, $]

先求出 $bold(A)$ 的特征值和特征向量, 再将 $bold(u)(0) = (0, 2 sqrt(2), 0)$ 写成特征向量的线性组合, 从而解出两个方程.

$bold(u)' = bold(A) bold(u)$ 类似于热传导方程 $(partial u)/(partial t) = (partial^2 u)/(partial x^2)$, 它的解 $bold(u)(t)$ 将会衰减 (因为 $bold(A)$ 有负的特征值).

#pagebreak()