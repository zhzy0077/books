#import "../theme.typ": *

注 3　$bold(X)$ 中特征向量与 $bold(Lambda)$ 中特征值一一对应, 保持相同次序. 若要颠倒 $bold(Lambda)$ 中特征值次序, 在 $bold(X)$ 中应将特征向量 $(1,1)$ 挪到 $(1,0)$ 之前:

#grid(columns: (auto, 1fr),
  align(horizon)[新次序 $6,1$],
  align(center)[$ mat(delim: "[", 0, 1; 1, -1) mat(delim: "[", 1, 5; 0, 6) mat(delim: "[", 1, 1; 1, 0) = mat(delim: "[", 6, 0; 0, 1) = bold(Lambda)_"新" . $],
)

为了对角化 $bold(A)$, 必须使用特征向量矩阵. 由 $bold(X)^(-1) bold(A) bold(X) = bold(Lambda)$ 可知 $bold(A) bold(X) = bold(X) bold(Lambda)$. 假设 $bold(X)$ 的首列为 $bold(x)$, 那么 $bold(A) bold(X)$ 与 $bold(X) bold(Lambda)$ 的首列分别是 $bold(A) bold(x)$ 与 $lambda_1 bold(x)$, 由两者相等可得 $bold(x)$ 必为特征向量.

注 4 (关于重复特征值的再次提醒)　某些矩阵的特征向量过少, 它们不可能对角化. 以下是两个例子:

#grid(columns: (auto, 1fr),
  align(horizon)[不可对角化矩阵],
  align(center)[$ bold(A) = mat(delim: "[", 1, -1; 1, -1) , quad bold(B) = mat(delim: "[", 0, 1; 0, 0) . $],
)

它们的特征值恰均为 0 与 0. $lambda = 0$ 并无特殊之处, 问题在于 $lambda$ 的重数. 第一个矩阵的全部特征向量是 $(1,1)$ 的倍数:

#grid(columns: (auto, 1fr),
  align(horizon)[仅有一条\ 特征向量直线],
  align(center)[$ bold(A) bold(x) = 0 bold(x) quad "即" quad mat(delim: "[", 1, -1; 1, -1) bold(x) = mat(delim: "[", 0; 0) , quad "解得" quad bold(x) = c mat(delim: "[", 1; 1) . $],
)

由于没有第二个线性无关的特征向量, 因此这个特殊矩阵 $bold(A)$ 不能对角化.

这些矩阵是检验与特征向量相关论断的最佳例子: 在许多判断正误的题目中, 不可对角化的矩阵会导致论断错误.

请记住可逆性与可对角化之间并无关联:

(1) 可逆性与特征值有关 ($lambda = 0$ 或 $lambda != 0$);

(2) 可对角化与特征向量有关 (数量是否足以构成 $bold(X)$).

每个特征值对应至少一个特征向量! $bold(A) - lambda bold(I)$ 是奇异的. 如果由 $(bold(A) - lambda bold(I)) bold(x) = 0$ 推出 $bold(x) = 0$, 那么其中的 $lambda$ 不是特征值, 很可能是在解 $det(bold(A) - lambda bold(I)) = 0$ 时发生了错误.

#align(center)[矩阵 $bold(A)$ 的对应 $n$ 个不同特征值的特征向量是线性无关的, 此时 $bold(A)$ 可对角化.]

#dingli[#hei[对应不同 $lambda$ 的 $bold(x)$ 线性无关]　对应于相异 (各不相同) 特征值的特征向量 $bold(x)_1, bold(x)_2, dots.c, bold(x)_j$ 线性无关. 具有 $n$ 个不同特征值 (没有重复的 $lambda$) 的 $n times n$ 矩阵必定可以对角化.]

证　设 $c_1 bold(x)_1 + c_2 bold(x)_2 = 0$. 用 $bold(A)$ 左乘该式得到 $c_1 lambda_1 bold(x)_1 + c_2 lambda_2 bold(x)_2 = 0$, 而用 $lambda_2$ 乘该式得到 $c_1 lambda_2 bold(x)_1 + c_2 lambda_2 bold(x)_2 = 0$. 再将新得两式相减,

#align(center)[$ (lambda_1 - lambda_2) c_1 bold(x)_1 = 0, quad "因此" quad c_1 = 0 . $]

由于各 $lambda_i$ 相异, 且 $bold(x)_1 != 0$, 故必有结论 $c_1 = 0$. 类似可得 $c_2 = 0$. 那么只有组合系数 $c_1 = c_2 = 0$ 的线性组合才能满足 $c_1 bold(x)_1 + c_2 bold(x)_2 = 0$. 所以 $bold(x)_1$ 和 $bold(x)_2$ 必线性无关.

该证明可直接推广到 $j$ 个特征向量的情形. 设 $c_1 bold(x)_1 + c_2 bold(x)_2 + dots.c + c_j bold(x)_j = 0$, 分别用 $bold(A)$ 左乘和用 $lambda_j$ 乘该式后, 再将新得两式相减. 这样结果中 $bold(x)_j$ 乘了 $lambda_j - lambda_j = 0$, 于是消去

#pagebreak()