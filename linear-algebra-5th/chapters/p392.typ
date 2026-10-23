#import "../theme.typ": *
#set par(spacing: 15pt, leading: 13pt)
#show math.equation.where(block: true): set block(above: 16pt, below: 16pt)

#sub[(a) $bold(x)^T bold(S) bold(x) = 2(x_1^2 + x_2^2 + x_3^2 - x_1 x_2 - x_2 x_3)$, 为什么 $bold(S)$ 是正定的?]

#sub[(b) $bold(x)^T bold(T) bold(x) = 2(x_1^2 + x_2^2 + x_3^2 - x_1 x_2 - x_1 x_3 - x_2 x_3)$, 为什么 $bold(T)$ 是半正定的?]

#v(8pt)
#ti[11.][计算如下矩阵 $bold(S)$ 的三个左上角行列式, 以确定其正定性, 并证实相邻行列式的比值给出了第二个和第三个主元:

#eqL[主元 = 行列式的比值][$ bold(S) = mat(delim: "[", 2, 2, 0; 2, 5, 3; 0, 3, 8). $]]

#v(8pt)
#ti[12.][当 $c$ 和 $d$ 取何值时, 如下矩阵 $bold(S)$ 与 $bold(T)$ 是正定的? 利用它们的 3 个左上角行列式来检验:

$ bold(S) = mat(delim: "[", c, 1, 1; 1, c, 1; 1, 1, c), quad bold(T) = mat(delim: "[", 1, 2, 3; 2, d, 4; 3, 4, 5). $]

#v(8pt)
#ti[13.][求出一个对称矩阵 $bold(S) = mat(delim: "[", a, b; b, c)$, 使得 $a > 0$, $c > 0$, $a + c > 2b$, 并且 $bold(S)$ 有一个负特征值.]

#v(8pt)
#exerciseNote[习题 14—20 是关于正定矩阵判别法的应用的.]

#v(8pt)
#ti[14.][如果 $bold(S)$ 是正定的, 那么 $bold(S)^(-1)$ 也是正定的. 最佳证明: 因为 \_\_\_\_, 所以 $bold(S)^(-1)$ 的特征值是正数. 第二种证法 (仅适用于 $2 times 2$ 矩阵 $mat(delim: "[", a, b; b, c)$):

$ bold(S)^(-1) = 1/(a c - b^2) mat(delim: "[", c, -b; -b, a) $

的元素满足判别正定性的左上角行列式条件: \_\_\_\_.]

#v(8pt)
#ti[15.][如果 $bold(S)$ 和 $bold(T)$ 都是正定的, 它们的和 $bold(S) + bold(T)$ 也是正定的. 对于 $bold(S) + bold(T)$, 使用主元和特征值方法判别正定性都不甚方便. 更好的方法是使用 $bold(x)^T (bold(S) + bold(T)) bold(x) > 0$. 当然也可以根据 $bold(S) = bold(A)^T bold(A)$ 和 $bold(T) = bold(B)^T bold(B)$ 推出

$ bold(S) + bold(T) = [bold(A)^T quad bold(B)^T] mat(delim: "[", bold(A); bold(B)), $

然后利用矩阵各列线性无关加以证明.]

#v(8pt)
#ti[16.][正定矩阵不可能在其主对角线上有零元素 (更不可能有负元素). 证明: 当对称矩阵 $bold(S)$ 的主对角线上有零元素或负元素时, 存在向量 $bold(x)$ 使得 $bold(x)^T bold(S) bold(x) <= 0$. 例如,

当 $(x_1, x_2, x_3) = (quad, quad, quad)$ 时, $[x_1 quad x_2 quad x_3] mat(delim: "[", 4, 1, 1; 1, 0, 2; 1, 2, 5) mat(delim: "[", x_1; x_2; x_3)$ 不是正数.]

#pagebreak()