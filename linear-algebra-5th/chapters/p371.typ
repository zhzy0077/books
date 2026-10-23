#import "../theme.typ": *

#gainian[正交特征向量][当实对称矩阵 $bold(S)$ 的特征向量 $bold(x)$ 和 $bold(y)$ 对应于不同的特征值时, 它们总是互相垂直的.]

#hei[证]　设 $bold(S) bold(x) = lambda_1 bold(x)$ 和 $bold(S) bold(y) = lambda_2 bold(y)$, 并假定 $lambda_1 != lambda_2$. 将 $bold(y)$ 和 $bold(x)$ 分别与两个等式做内积:

#eqnum($ "利用" bold(S)^T = bold(S) quad quad (lambda_1 bold(x))^T bold(y) = (bold(S) bold(x))^T bold(y) = bold(x)^T bold(S)^T bold(y) = bold(x)^T bold(S) bold(y) = bold(x)^T lambda_2 bold(y). $, 3)

上式左边为 $bold(x)^T lambda_1 bold(y)$, 而右边为 $bold(x)^T lambda_2 bold(y)$. 由于 $lambda_1 != lambda_2$, 所以 $bold(x)^T bold(y) = 0$. 于是, 特征向量 $bold(x)$ (对应 $lambda_1$) 垂直于特征向量 $bold(y)$ (对应于 $lambda_2$).

#hei[例 2]　$2 times 2$ 对称矩阵的特征向量可取如下特殊形式:

#eqnumL([并不广为人知], $ bold(S) = mat(delim: "[", a, b; b, c) "的特征向量为" bold(x)_1 = mat(delim: "[", b; lambda_1 - a), quad bold(x)_2 = mat(delim: "[", lambda_2 - c; b). $, 4)

该例题已收入习题集. 这里要注意的是 $bold(x)_1$ 垂直于 $bold(x)_2$:

#dmath[$ bold(x)_1^T bold(x)_2 = b(lambda_2 - c) + (lambda_1 - a)b = b(lambda_1 + lambda_2 - a - c) = 0. $]

上式取零是由于 $lambda_1 + lambda_2$ 等于迹 $a + c$. 眼尖的读者可能已经注意到了特殊情况 $bold(S) = bold(I)$, 此时 $b, lambda_1 - a$ 以及 $lambda_2 - c$ 均取零, 故 $bold(x)_1$ 与 $bold(x)_2$ 为零向量, 而特征值是重复值: $lambda_1 = lambda_2 = 1$. 当然 $bold(S) = bold(I)$ 的特征向量还是互相垂直的.

#dingli[
  #hei[对称矩阵 $bold(S)$ 有正交特征向量矩阵 $bold(Q)$. 回顾一下:]

  #align(center)[$ "对称性" quad bold(S) = bold(X) bold(Lambda) bold(X)^(-1) quad "变成" quad bold(S) = bold(Q) bold(Lambda) bold(Q)^T, quad "其中" quad bold(Q)^T bold(Q) = bold(I). $]

  这就是说每个 $2 times 2$ 对称矩阵 $bold(S)$ 可以分解成 (旋转矩阵)(伸缩矩阵)(旋回矩阵) 的形式:

  #eqnum($ bold(S) = bold(Q) bold(Lambda) bold(Q)^T = mat(delim: "[", bold(q)_1, bold(q)_2) mat(delim: "[", lambda_1, ; , lambda_2) mat(delim: "[", bold(q)_1^T; bold(q)_2^T). $, 5)

  列 $bold(q)_1$ 与 $bold(q)_2$ 分别左乘行 $lambda_1 bold(q)_1^T$ 与 $lambda_2 bold(q)_2^T$, 得到 $bold(S) = lambda_1 bold(q)_1 bold(q)_1^T + lambda_2 bold(q)_2 bold(q)_2^T$.
]

#dingliC[
  #grid(columns: (1fr, auto), align: (center + horizon, right + horizon),
    [$ n "阶对称矩阵" quad bold(S) = bold(Q) bold(Lambda) bold(Q)^T = lambda_1 bold(q)_1 bold(q)_1^T + lambda_2 bold(q)_2 bold(q)_2^T + dots.c + lambda_n bold(q)_n bold(q)_n^T. $],
    [$(6)$],
  )
]

以下是导出谱定理这一重要结论的关键步骤:

(1) 在第 6.2 节中, 将 $bold(A) bold(x)_i = lambda_i bold(x)_i$ 写为矩阵形式, 则 $bold(A) bold(X) = bold(X) bold(Lambda)$ 或 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$;

(2) 在第 6.4 节中, 标准正交化 $bold(x)_i = bold(q)_i$ 得到 $bold(X) = bold(Q)$, 则 $bold(S) = bold(Q) bold(Lambda) bold(Q)^(-1) = bold(Q) bold(Lambda) bold(Q)^T$. 在 (6) 式中, $bold(Q) bold(Lambda) bold(Q)^T$ 等于 $bold(Q) bold(Lambda)$ 的各列左乘 $bold(Q)^T$ 的各行. 以下是直接证明:



#pagebreak()