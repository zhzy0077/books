#import "../theme.typ": *

件数 $norm(bold(A)) norm(bold(A)^(-1)) = lambda_max/lambda_min$:

#dmath[$ "正定矩阵" bold(A) "的条件数" quad c = lambda_max/lambda_min = 6/2 = 3 . $]

例 4  仍考虑上例中的 $bold(A)$, 其特征值为 6 和 2. 为了让 $bold(x)$ 较小, 沿一个特征向量 $(1, 0)$ 的方向选择 $bold(b)$. 为了让 $Delta bold(x)$ 较大, 沿另一特征向量 $(0, 1)$ 的方向选择 $Delta bold(b)$. 那么 $bold(x) = 1/6 bold(b)$ 及 $Delta bold(x) = 1/2 Delta bold(b)$, 则

#dmath[$ norm(Delta bold(x))/norm(bold(x)) = 3 norm(Delta bold(b))/norm(bold(b)) = c norm(Delta bold(b))/norm(bold(b)) . $]

这表明由条件数 $c = norm(bold(A)) norm(bold(A)^(-1))$ 控制的最大误差实际上是可以取到的. 对高斯消元法, 已经被大量实验验证过的一个非常有效的经验法则是: 计算机可能会因舍入误差而丢掉 $log c$ 位的精度.

#align(center)[#image("../assets/fig-p569-icon.png", width: 3.2%)]

#xiti[习题集 11.2][

#hei[1.] 计算下列正定矩阵 $bold(A)$ 的范数 $norm(bold(A)) = lambda_max$ 及条件数 $c = lambda_max/lambda_min$:

#dmath[$ (a) bold(A) = mat(delim: "[", 0.5, 0; 0, 2) ; quad (b) bold(A) = mat(delim: "[", 2, 1; 1, 2) ; quad (c) bold(A) = mat(delim: "[", 3, 1; 1, 1) . $]

#hei[2.] 利用 $lambda_max(bold(A)^T bold(A))$ 和 $lambda_min(bold(A)^T bold(A))$ 的算术平方根, 计算下列矩阵 $bold(A)$ 的范数及条件数 $c$ ($bold(A)$ 为非正定矩阵, 故利用 $bold(A)^T bold(A)$):

#dmath[$ (a) mat(delim: "[", -2, 0; 0, 2) ; quad (b) mat(delim: "[", 1, 1; 0, 0) ; quad (c) mat(delim: "[", 1, 1; -1, 1) . $]

#hei[3.] 由 $norm(bold(A))$ 和 $norm(bold(B))$ 的定义 (见 (3) 式), 证明下列不等式:

#dmath[$ norm(bold(A) bold(B) bold(x)) <= norm(bold(A)) norm(bold(B) bold(x)) <= norm(bold(A)) norm(bold(B)) norm(bold(x)) . $]

由 $norm(bold(A) bold(B) bold(x))$ 与 $norm(bold(x))$ 之比可以推出 $norm(bold(A) bold(B)) <= norm(bold(A)) norm(bold(B))$. 这是矩阵范数非常关键的一条性质, 由此可以得到 $bold(A)^n$ 的范数不会大于 $norm(bold(A))^n$.

#hei[4.] 利用 $norm(bold(A) bold(A)^(-1)) <= norm(bold(A)) norm(bold(A)^(-1))$ 证明 $bold(A)$ 的条件数至少为 1.

#hei[5.] 为什么 $bold(I)$ 是唯一满足 $lambda_max = lambda_min = 1$ 的对称正定矩阵? 其他满足 $norm(bold(A)) = 1$ 和 $norm(bold(A)^(-1)) = 1$ 的矩阵 $bold(A)$ 一定有 $bold(A)^T bold(A) = bold(I)$. 它们是 #underline[#h(3em)] 矩阵, 具有最优条件数.

#hei[6.] 正交矩阵 $bold(Q)$ 的范数为 $norm(bold(Q)) = 1$. 利用分解式 $bold(A) = bold(Q) bold(R)$, 证明

#dmath[$ norm(bold(A)) <= norm(bold(R)), quad "且" quad norm(bold(R)) <= norm(bold(A)) . $]

由此可知, $norm(bold(A)) = norm(bold(Q)) norm(bold(R))$. 列举一个 $bold(A) = bold(L) bold(U)$ 的例子使得 $norm(bold(A)) < norm(bold(L)) norm(bold(U))$.
]

#pagebreak()