#import "../theme.typ": *

#dmath[$ bold(S) = bold(A)_1^T bold(A)_1 quad mat(delim: "[", 2, -1, 0; -1, 2, -1; 0, -1, 2) = mat(delim: "[", 1, -1, 0, 0; 0, 1, -1, 0; 0, 0, 1, -1) mat(delim: "[", 1, 0, 0; -1, 1, 0; 0, -1, 1; 0, 0, -1). $]

$bold(A)_1$ 的三列线性无关, 因此 $bold(S)$ 是正定的.

$bold(A)_2$ 来自分解式 $bold(S) = bold(L) bold(D) bold(L)^T$ (分解式 $bold(S) = bold(L) bold(U)$ 的对称版本). 由消元法可得 $bold(D)$ 中的主元 $2, 3/2, 4/3$ 和 $bold(L)$ 中的乘数 $-1/2, 0, -2/3$, 只需取 $bold(A)_2 = bold(L) sqrt(bold(D))$:

#dmath[$ bold(L) bold(D) bold(L)^T = mat(delim: "[", 1, 0, 0; -1/2, 1, 0; 0, -2/3, 1) mat(delim: "[", 2, 0, 0; 0, 3/2, 0; 0, 0, 4/3) mat(delim: "[", 1, -1/2, 0; 0, 1, -2/3; 0, 0, 1) = (bold(L) sqrt(bold(D))) (bold(L) sqrt(bold(D)))^T = bold(A)_2^T bold(A)_2. $]

三角形矩阵 $bold(A)_2$ 中包含平方根 (不甚优美), 它是 $bold(S)$ 的 “楚列斯基因子”, 对应的 MATLAB 指令为 A=chol(S). 在应用中, 长方阵 $bold(A)_1$ 用于构造对称矩阵 $bold(S)$, 而楚列斯基因子 $bold(A)_2$ 用于分解 $bold(S)$.

利用特征值可以给出对称矩阵 $bold(A)_3 = bold(Q) sqrt(bold(Lambda)) bold(Q)^T$. 根据 $bold(A)_3^T bold(A)_3 = bold(Q) bold(Lambda) bold(Q)^T = bold(S)$, 这种取法也是可行的. 由此也表明 “$-1, 2, -1$” 三对角矩阵 $bold(S)$ 是正定的.

为了说明能量 $x^T S x$ 为正数, 可将其改写为平方和的形式. 三个矩阵 $bold(A)_1, bold(A)_2, bold(A)_3$ 给出三种不同方式来改写 $x^T S x$:

#dmath[$ x^T S x = 2x_1^2 - 2x_1 x_2 + 2x_2^2 - 2x_2 x_3 + 2x_3^2 quad ("改写为平方和"), $]

#dmath[$ ||bold(A)_1 x||^2 = x_1^2 + (x_2 - x_1)^2 + (x_3 - x_2)^2 + x_3^2 quad ("利用差分矩阵" bold(A)_1), $]

#dmath[$ ||bold(A)_2 x||^2 = 2(x_1 - 1/2 x_2)^2 + 3/2 (x_2 - 2/3 x_3)^2 + 4/3 x_3^2 quad ("利用" bold(S) = bold(L) bold(D) bold(L)^T), $]

#dmath[$ ||bold(A)_3 x||^2 = lambda_1 (q_1^T x)^2 + lambda_2 (q_2^T x)^2 + lambda_3 (q_3^T x)^2 quad ("利用" bold(S) = bold(Q) bold(Lambda) bold(Q)^T). $]

现在讨论矩阵 $bold(T)$ (见题干). 与矩阵 $bold(S)$ 相比, $bold(T)$ 的 $(1, 3)$ 元素和 $(3, 1)$ 元素从 $0$ 变为 $b$. 若 $bold(T)$ 仍为正定矩阵, 则这个 $b$ 必然不会太大! 使用行列式判别法最为容易. $1 times 1$ (左上角) 行列式为 $2$, $2 times 2$ (左上角) 行列式仍为 $3$. $3 times 3$ (左上角) 行列式涉及 $b$:

#dmath[对 $bold(T)$ 的判别　$det bold(T) = 4 + 2b - 2b^2 = (1 + b)(4 - 2b)$　必为正数.]

当 $b = -1, 2$ 时, $det bold(T) = 0$. 当 $-1 < b < 2$ 时, 矩阵 $bold(T)$ 是正定的. 矩阵 $bold(S)$ 中 $b = 0$, 无疑满足 $-1 < b < 2$.

#subsec[半正定矩阵]

有时会遇到正定的 “边缘” 情形: 行列式为零, 最小特征值为零, 特征向量对应的能量 $x^T S x = x^T bold(O) x = 0$. 这些处于边缘情形的矩阵称为半正定矩阵. 以下是两个例子 (均为不

#pagebreak()