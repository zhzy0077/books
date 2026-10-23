#import "../theme.typ": *

#subsec[线性方程组]

不妨再一次改变视角: 到目前为止, 我们将 $x_1, x_2, x_3$ 看成已知的三个数字, 而右边的向量 $bold(b)$ 未知, 这样利用 $A$ 左乘 $bold(x)$ 建立了差分向量; 现在假设向量 $bold(b)$ 已知, 需要找到使等式成立的未知向量 $bold(x)$.

旧问题: 计算线性组合 $x_1 bold(u) + x_2 bold(v) + x_3 bold(w)$ 来得到向量 $bold(b)$.

新问题: 向量 $bold(u), bold(v), bold(w)$ 的什么线性组合能生成特定向量 $bold(b)$?

这是一个反问题——需找到输入 $bold(x)$ 来得到给定的输出 $bold(b) = A bold(x)$. 通过已学知识可知, 这是要求解以 $x_1, x_2, x_3$ 为未知数的线性方程组, 其中各方程的右边是 $b_1, b_2, b_3$. 现在对线性方程组 $A bold(x) = bold(b)$ 求解得 $x_1, x_2, x_3$:

#dingliC[
  #grid(columns: (auto, auto, auto, auto, 1fr, auto), column-gutter: 1.4em, align: (right+horizon, center+horizon, center+horizon, center+horizon, right+horizon, right+horizon),
    [方程组\ $A bold(x) = bold(b)$],
    [$ cases(x_1 = b_1, -x_1 + x_2 = b_2, -x_2 + x_3 = b_3) $],
    [解为\ $bold(x) = A^(-1) bold(b)$],
    [$ cases(x_1 = b_1, x_2 = b_1 + b_2, x_3 = b_1 + b_2 + b_3) $],
    [],
    [$(6)$],
  )
]

不得不承认, 大部分线性方程组的求解都比较困难. 在本例中第一个方程表明 $x_1 = b_1$, 然后利用第二个方程可解得 $x_2 = b_1 + b_2$. 因为矩阵 $A$ 是一个三角形矩阵（下三角形矩阵）, 所以各方程可依次求解（自上而下）.

将右边的 $b_1, b_2, b_3$ 分别设为 0, 0, 0 和 1, 3, 5, 则

#dmath[$ "当" bold(b) = mat(delim: "[", 0;0;0) "时," quad bold(x) = mat(delim: "[", 0;0;0) ; quad "当" bold(b) = mat(delim: "[", 1;3;5) "时," quad bold(x) = mat(delim: "[", 1; 1 + 3; 1 + 3 + 5) = mat(delim: "[", 1;4;9) . $]

第一个解（分量全为零）实际上要比看起来更重要, 简而言之: 若输出为 $bold(b) = 0$, 则输入一定为 $bold(x) = 0$. 这个结论对于本例中的矩阵 $A$ 是成立的, 但是并不是对所有的矩阵都能成立. 在第二个例子中将看到,（对不同的矩阵 $C$）当 $C != O$ 且 $bold(x) != 0$ 时, 也可能 $C bold(x) = 0$.

本例中矩阵 $A$ 是“可逆的”, 因此能从 $bold(b)$ 反推得到 $bold(x)$, 并将 $bold(x)$ 记为 $A^(-1) bold(b)$.

#subsec[逆矩阵]

通过复现方程组 (6) 中 $bold(x)$ 的求解过程会得到一个累加矩阵!

#grid(columns: (auto, 1fr, auto), column-gutter: 1.2em, align: (right+horizon, center+horizon, right+horizon),
  [解 $A bold(x) = bold(b)$ 得],
  [$ mat(delim: "[", x_1; x_2; x_3) = mat(delim: "[", b_1; b_1 + b_2; b_1 + b_2 + b_3) = mat(delim: "[", 1,0,0; 1,1,0; 1,1,1) mat(delim: "[", b_1; b_2; b_3) . $],
  [$(7)$],
)

如果 $bold(x)$ 的分量之差构成 $bold(b)$, 则对 $bold(b)$ 的分量累加就能得到 $bold(x)$, 这个结论不但对向量 $bold(b) = (1,3,5)$ 和 $bold(x) = (1,4,9)$ 成立, 而且对所有向量都成立. 等式 (7) 中的累加矩阵就是差分矩阵 $A$ 的逆矩阵 $A^(-1)$.



#pagebreak()
