#import "../theme.typ": *

#hei[例 1]　求解 $3 x_1 + 4 x_2 = 2$ 和 $5 x_1 + 6 x_2 = 4$ 需要三个行列式:

#dmath[$ det bold(A) = mat(delim: "|", 3, 4; 5, 6), quad det bold(B)_1 = mat(delim: "|", 2, 4; 4, 6), quad det bold(B)_2 = mat(delim: "|", 3, 2; 5, 4) . $]

$bold(A), bold(B)_1, bold(B)_2$ 的行列式分别是 $-2, -4$ 和 $2$. 求解时比值都是除以 $det bold(A) = -2$:

#dmath[$ "计算" bold(x) = bold(A)^(-1) bold(b) quad x_1 = (-4)/(-2) = 2, quad x_2 = 2/(-2) = -1 ; $]

#dmath[$ "验证" quad mat(delim: "[", 3, 4; 5, 6) mat(delim: "[", 2; -1) = mat(delim: "[", 2; 4) . $]

#gainian[克拉默法则][若 $det bold(A)$ 不等于零, 可利用行列式求解 $bold(A) bold(x) = bold(b)$:

#eqnum($ x_1 = (det bold(B)_1)/(det bold(A)), quad x_2 = (det bold(B)_2)/(det bold(A)), quad dots.c, quad x_n = (det bold(B)_n)/(det bold(A)), $, 4)

其中 $bold(B)_j$ 是将 $bold(A)$ 的第 $j$ 列换成向量 $bold(b)$ 所得的矩阵.]

若要求解 $n times n$ 线性方程组 $bold(A) bold(x) = bold(b)$, 用克拉默法则需计算 $n + 1$ 个行列式 ($bold(A)$ 和 $bold(B)_1, bold(B)_2, dots.c, bold(B)_n$ 的行列式). 当利用 “基础公式” 计算时, 每个行列式都是 $n!$ 个乘积项之和——这样共有 $(n+1)!$ 个乘积项. 用这种方法来求解线性方程组的计算量非常大 (当 $n$ 较大时), 但是该方法给出了求解 $bold(x)$ 的明确公式.

#hei[例 2]　克拉默法则在数值计算方面效率很低, 但适用于字母运算. 对于 $n = 2$, 通过求解 $bold(A) bold(A)^(-1) = bold(I)$ 可计算 $bold(A)^(-1) = [bold(x) bold(y)]$ 的列:

$bold(A)^(-1)$ 的列是 $bold(x)$ 和 $bold(y)$:

#dmath[$ mat(delim: "[", a, b; c, d) mat(delim: "[", x_1; x_2) = mat(delim: "[", 1; 0), quad mat(delim: "[", a, b; c, d) mat(delim: "[", y_1; y_2) = mat(delim: "[", 0; 1) . $]

上述线性方程组有相同的系数矩阵 $bold(A)$, 求解 $x_1, x_2, y_1, y_2$ 需用到 $|bold(A)|$ 和另外四个行列式:

#dmath[$ mat(delim: "|", a, b; c, d) quad "和" quad mat(delim: "|", 1, b; 0, d), quad mat(delim: "|", a, 1; c, 0), quad mat(delim: "|", 0, b; 1, d), quad mat(delim: "|", a, 0; c, 1) . $]

后四个行列式是 $d, -c, -b$ 和 $a$. (它们都是代数余子式!) 然后求出 $bold(A)^(-1)$:

#dmath[$ x_1 = d/(|bold(A)|), quad x_2 = (-c)/(|bold(A)|), quad y_1 = (-b)/(|bold(A)|), quad y_2 = a/(|bold(A)|), $]

#dmath[$ bold(A)^(-1) = 1/(a d - b c) mat(delim: "[", d, -b; -c, a) . $]

选择二阶方阵能够清楚地展示重点: $bold(A)^(-1)$ 包含了代数余子式. 将 $bold(A) bold(A)^(-1) = bold(I)$ 视为 $n$ 个方程组 (取 $bold(A)^(-1), bold(I)$ 的各列), 当方程组右边是单位矩阵 $bold(I)$ 的一列时, 克拉默法则中每个 $bold(B)_j$ 的行列式都是 $bold(A)$ 的代数余子式.

#pagebreak()