#import "../theme.typ": *

(a) 因为 $lambda_1$ 与 $lambda_2$ 的乘积 $lambda_1 lambda_2$ 等于 \_\_\_\_\_\_, 所以 $lambda_1$ 与 $lambda_2$ 的正负号一致;

(b) 因为 $lambda_1 + lambda_2$ 等于 \_\_\_\_, 所以 $lambda_1, lambda_2$ 的符号是正号.

结论: 正定性判别条件 $a > 0$, $a c - b^2 > 0$ 确保了特征值 $lambda_1, lambda_2$ 均为正数.

#ti[2.][以下二阶方阵 $bold(S)_1, bold(S)_2, bold(S)_3, bold(S)_4$ 中, 哪些矩阵有两个正特征值?

$ bold(S)_1 = mat(5, 6; 6, 7), quad bold(S)_2 = mat(-1, -2; -2, -5), quad bold(S)_3 = mat(1, 10; 10, 100), quad bold(S)_4 = mat(1, 10; 10, 101). $

要求不计算出特征值, 仅使用某个正定性判别条件. 再找出向量 $x$, 使得 $x^T S_1 x < 0$, 从而可知 $bold(S)_1$ 不正定.]

#ti[3.][当 $b$ 与 $c$ 为何值时, 以下矩阵是正定的?

$ bold(S)_1 = mat(1, b; b, 9), quad bold(S)_2 = mat(2, 4; 4, c), quad bold(S)_3 = mat(c, b; b, c). $

利用 $bold(D)$ 中主元以及 $bold(L)$ 中乘数, 将每个矩阵分解为 $bold(L) bold(D) bold(L)^T$ 的形式.]

#ti[4.][以下各矩阵 $mat(a, b; b, c)$ 对应的函数 $f = a x^2 + 2 b x y + c y^2$ 是什么? 通过配方, 将每个 $f$ 写成一个或两个平方之和的形式 $f = d_1(quad)^2 + d_2(quad)^2$:

$ bold(S)_1 = mat(1, 2; 2, 9), quad bold(S)_2 = mat(1, 3; 3, 9), quad f = [x quad y] bold(S)_i mat(x; y), quad i = 1, 2. $]

#ti[5.][将 $f(x, y) = x^2 + 4x y + 3y^2$ 写成平方差的形式, 找出一点 $(x, y)$, 使得 $f$ 在该点处函数值为负数. 即便 $f$ 的系数全是正数, 它在点 $(0, 0)$ 处也没有最小值.]

#ti[6.][函数 $f(x, y) = 2x y$ 有一个鞍点, 且在点 $(0, 0)$ 处没有最小值. 生成该函数 $f$ 的对称矩阵 $bold(S)$ 是什么? $bold(S)$ 的特征值是什么?]

#ti[7.][根据 $bold(A)$ 各列是否线性无关, 判别以下各情形中 $bold(A)^T bold(A)$ 是否正定:

(a) $bold(A) = mat(1, 2; 0, 3)$; (b) $bold(A) = mat(1, 1; 1, 2; 2, 1)$; (c) $bold(A) = mat(1, 1, 2; 1, 2, 1)$.]

#ti[8.][除在点 $(0, 0)$ 处, 函数 $f(x, y) = 3(x + 2y)^2 + 4y^2$ 都是正数. 将 $f(x, y)$ 利用矩阵改写, 则表达式 $f(x, y) = [x quad y] bold(S) [x quad y]^T$ 中矩阵 $bold(S)$ 是什么? 验证 $bold(S)$ 的主元是 3 与 4.]

#ti[9.][求出满足下列条件的 $3 times 3$ 矩阵 $bold(S)$ 及其主元、秩、特征值和行列式:

$ [x_1 quad x_2 quad x_3] bold(S) mat(x_1; x_2; x_3) = 4(x_1 - x_2 + 2x_3)^2. $]

#ti[10.][求生成以下二次型 (含多个变量的二次多项式且每项均为二次) 的 $3 times 3$ 对称矩阵 $bold(S)$ 和 $bold(T)$:]

#pagebreak()