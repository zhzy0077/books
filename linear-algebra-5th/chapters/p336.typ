#import "../theme.typ": *

之所以用字母 #hei[$bold(C)$] 代替 #hei[$bold(Lambda)$], 是因为 $bold(C)$ 可能并非对角矩阵, 而用字母 $bold(B)$ 代替 $bold(X)$ 是因为 $bold(B)$ 的各列可能不是特征向量. 这里只需要 $bold(B)$ 可逆——它的列可以是 $R^n$ 的任意一组基. 有关相似矩阵的关键事实仍是成立的: 相似矩阵 $bold(A)$ 和 $bold(C)$ 有相同的特征值.

#dingli[所有形如 $bold(A) = bold(B) bold(C) bold(B)^(-1)$ 的矩阵都是 “相似的”, 它们共享 $bold(C)$ 的特征值.]

证　设 $bold(C) bold(x) = lambda bold(x)$, 那么 $bold(B) bold(C) bold(B)^(-1)$ 具有相同的特征值 $lambda$ 以及新的特征向量 $bold(B) bold(x)$:

#eqnumL([相同的 $lambda$], $(bold(B) bold(C) bold(B)^(-1))(bold(B) bold(x)) = bold(B) bold(C) bold(x) = bold(B) lambda bold(x) = lambda (bold(B) bold(x)) .$, 5)

当遍历所有可逆矩阵 $bold(B)$ 时, 由固定矩阵 $bold(C)$ 生成一族相似矩阵 $bold(B) bold(C) bold(B)^(-1)$. 当 $bold(C)$ 为单位矩阵时, 这一 “族” 矩阵很小, 仅有成员 $bold(B) bold(I) bold(B)^(-1) = bold(I)$. 在可对角化矩阵中, 单位矩阵是唯一一个全部特征值均为 $lambda = 1$ 的.

对二阶方阵, 当特征值仅有 $lambda = 1$ 且该特征值只对应 1 个特征向量时 (矩阵不可对角化), 这一族矩阵稍大一些. 最简单的 $bold(C)$ 是将在第 8.3 节详尽阐述的若尔当矩阵. 所有相似的矩阵可由两个不全为零的参数 $r$ 和 $s$ 确定, 且总有行列式为 1 和迹为 2:

#eqnumL([由若尔当形矩阵 $bold(C) = mat(delim: "[", 1, 1; 0, 1)$ 推出], [$bold(A) = bold(B) bold(C) bold(B)^(-1) = mat(delim: "[", 1 - r s, r^2; -s^2, 1 + r s) ,$#footnote[译者注: 这里可取 $bold(B) = mat(delim: "[", r, -s; s, r)$, 且 $r^2 + s^2 = 1$.]], 6)

在下面的重要例子中, 取特征值为 $lambda = 1$ 和 0 (相异的!). 既然整族矩阵可以对角化, 且共享相同的特征值矩阵 $bold(Lambda)$, 那么可以得到特征值为 1 和 0 的任意 $2 times 2$ 矩阵, 它的迹为 1, 且行列式为 0:

#grid(columns: (auto, 1fr), column-gutter: 14pt,
  align(horizon)[所有矩阵相似],
  align(center)[
    $ bold(A) = mat(delim: "[", 1, 0; 0, 0) , quad bold(A)_1 = mat(delim: "[", 1, 1; 0, 0) , $ \
    $ bold(A)_2 = mat(delim: "[", 0.5, 0.5; 0.5, 0.5) quad "或任何" quad bold(A)_3 = (bold(x) bold(y)^T) / (bold(x)^T bold(y)) . $
  ],
)

该族矩阵包括所有满足 $bold(A)^2 = bold(A)$ 的矩阵, 其中就有当 $bold(B) = bold(I)$ 时的 $bold(A) = bold(Lambda)$. 当 $bold(A)$ 是对称矩阵时, $bold(A)$ 也是投影矩阵. 由此可知, 仅含特征值 1 和 0 的矩阵更容易处理.

#subsec[斐波那契数]

现在介绍一个著名的例子, 其中蕴涵的特征值将说明斐波那契数 $F_k$ 增加得有多快. 由 $F_k$ 的定义, 每个新数是其前两个数的和, 且 $F_0 = 0$, $F_1 = 1$:

#dingli[由 $F_(k+2) = F_(k+1) + F_k$ 生成数列 $0,1,1,2,3,5,8,13, dots.c$ .]

#pagebreak()