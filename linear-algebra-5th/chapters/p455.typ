#import "../theme.typ": *

设线性变换 $T$ 为对每个矩阵做转置运算, 求在这组基下变换 $T$ 的矩阵 $bold(A)$ (输入基和输出基均为 $bold(v)_1, bold(v)_2, bold(v)_3, bold(v)_4$), 及其逆矩阵 $bold(A)^(-1)$. 转置运算的逆变换 $T^(-1)$ 是什么?

#hei[解]　对上述 4 个 “基矩阵” 做转置仅仅是交换 $bold(v)_2$ 和 $bold(v)_3$:

#dmath[$ cases(T(bold(v)_1) = bold(v)_1, T(bold(v)_2) = bold(v)_3, T(bold(v)_3) = bold(v)_2, T(bold(v)_4) = bold(v)_4) quad "给出变换矩阵的各列, 则" $]

#dmath[$ bold(A) = mat(delim: "[", 1, 0, 0, 0; 0, 0, 1, 0; 0, 1, 0, 0; 0, 0, 0, 1). $]

逆矩阵 $bold(A)^(-1)$ 与 $bold(A)$ 相等, 逆变换 $T^(-1)$ 与 $T$ 相等. 如果对一个矩阵转置后再次转置, 最终矩阵与原矩阵相同.

注意到二阶方阵空间是 4 维的, 因此变换 $T$ 的矩阵 $bold(A)$ 是 4 阶方阵. $bold(A)$ 的零空间是 $Z$, $T$ 的核仅含零矩阵——转置后为零矩阵的只有零矩阵. $bold(A)$ 的特征值是 $1, 1, 1, -1$.

对应于特征值 $lambda = -1$, 即满足 $T(bold(A)) = bold(A)^T = -bold(A)$ 的 “矩阵” 直线是什么?

#align(center)[#image("../assets/fig-p455-icon.png", width: 3.2%)]

#xiti[习题集 8.2][

习题 1—4 将一阶导数的例子拓展到高阶导数, 且只考虑不超过三次的多项式.

#ti[1.][设变换 $S$ 是求二阶导数. 仍取 $1, x, x^2, x^3$ 为输入基 $bold(v)_1, bold(v)_2, bold(v)_3, bold(v)_4$, 也为输出基 $bold(w)_1, bold(w)_2, bold(w)_3, bold(w)_4$. 将 $S(bold(v)_1), S(bold(v)_2), S(bold(v)_3), S(bold(v)_4)$ 用 $bold(w)_j$ 表示, 然后求出变换 $S$ 的 4 阶方阵 $bold(A)_2$.]

#ti[2.][对习题 1 中的 $S$, 什么函数 $v$ 满足 $S(v) = 0$? 它们在二阶求导变换 $S$ 的核中. 什么向量在习题 1 中矩阵 $bold(A)_2$ 的零空间中?]

#ti[3.][当变换是求一阶导数时, 将其矩阵记为 $bold(A)_1$, 则习题 1 中的矩阵 $bold(A)_2$ 并不是 $bold(A)_1$ 的平方:

#dmath[$ bold(A)_1 = mat(delim: "[", 0, 1, 0, 0; 0, 0, 2, 0; 0, 0, 0, 3) quad "不满足" bold(A)_1^2 = bold(A)_2. $]

在 $bold(A)_1$ 中增加零行作为第 4 行, 使得输出空间等于输入空间. 请比较 $bold(A)_1^2$ 与 $bold(A)_2$, 所得结论为: 若要输出基 = \_\_\_\_ 基, 则 $m = n$.]

#ti[4.][(a) 一阶求导变换 $T$ 与二阶求导变换 $S$ 的乘积 $T S$ 生成三阶求导变换. 请在 $T S$ 的矩阵中加入零元素来构造 4 阶方阵 $bold(A)_3$, 然后验证 $bold(A)_1 bold(A)_2 = bold(A)_3$.

(b) 方阵的幂 $bold(A)_2^2$ 对应 $S^2$, 即 4 阶求导变换. 请问为什么结果是零矩阵?]

习题 5—9 是关于特定的变换 $T$ 以及它的矩阵 $bold(A)$ 的.

#ti[5.][对于两组基 $bold(v)_1, bold(v)_2, bold(v)_3$ 与 $bold(w)_1, bold(w)_2, bold(w)_3$, 设变换 $T$ 满足

#dmath[$ T(bold(v)_1) = bold(w)_2, quad T(bold(v)_2) = T(bold(v)_3) = bold(w)_1 + bold(w)_3, $]]

]

#pagebreak()