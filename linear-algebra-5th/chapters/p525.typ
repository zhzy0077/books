#import "../theme.typ": *

#hei[习题 13—15 是关于经济学中的线性代数的.]

#ti[13.][例 4 中消耗矩阵 $A$ 每一行元素的和为 0.9. 为什么这意味着该矩阵必有特征值 $lambda = 0.9$, 对应的特征向量是什么?]

#ti[14.][$I - A$ 左乘 $I + A + A^2 + A^3 + dots.c$ 的积为 $I$, 表明该几何级数的和为 $(I - A)^(-1)$. 令

#dmath[$ A = mat(delim: "[", 0, 1/2; 1, 0), $]

计算 $A^2, A^3, dots.c$, 并寻找规律以直接得到几何级数 $I + A + A^2 + A^3 + dots.c$ 的和.]

#ti[15.][下列哪些矩阵 $bold(A)$ 的几何级数 $bold(I) + bold(A) + bold(A)^2 + dots.c$ 的和为非负矩阵 $(bold(I) - bold(A))^(-1)$? 即以 $bold(A)$ 为消耗矩阵时, 生产过程可以满足需求:

#align(center)[#grid(columns: (auto, auto, auto), column-gutter: 2.5em, align: horizon,
  [(a) $bold(A) = mat(delim: "[", 0, 1; 0, 0)$;],
  [(b) $bold(A) = mat(delim: "[", 0, 4; 0.2, 0)$;],
  [(c) $bold(A) = mat(delim: "[", 0.5, 1; 0.5, 0) .$],
)]

若需求为 $bold(y) = (2, 6)$, 计算向量 $bold(p) = (bold(I) - bold(A))^(-1) bold(y)$.]

#ti[16.][下列马尔可夫矩阵 $A$ 的行列式为 0, 它的特征值是什么?

#dmath[$ A = mat(delim: "[", 0.4, 0.2, 0.3; 0.2, 0.4, 0.3; 0.4, 0.4, 0.4). $]

当 $u_0 = (1, 0, 0)$ 或 $(100, 0, 0)$ 时, $A^k u_0$ 的极限 ($k -> +oo$) 分别是多少?]

#ti[17.][若 $A$ 为马尔可夫矩阵, 为什么几何级数 $I + A + A^2 + dots.c$ 的和不等于 $(I - A)^(-1)$?]

#ti[18.][对于人口增长中的莱斯利矩阵, 证明可由 $det(A - lambda I) = 0$ 得到

#dmath[$ F_1 lambda^2 + F_2 P_1 lambda + F_3 P_1 P_2 = lambda^3. $]

当 $lambda -> +oo$ 时, 等式右边 $lambda^3$ 较大. 若 $F_1 + F_2 P_1 + F_3 P_1 P_2 > 1$, 等式左边在 $lambda = 1$ 处较大. 说明在这种情况下, 等式两边在特征值 $lambda_(max) > 1$ 处相等, 这对应着增长.]

#ti[19.][特征值的敏感性分析: 由矩阵变化 $Delta A$ 将导出特征值变化 $Delta Lambda$, $X^(-1) Delta A X$ 的对角线上分布着这些变化 $Delta lambda_1, Delta lambda_2, dots.c, Delta lambda_n$. 挑战题: 考察 $A X = X Lambda$, 设特征向量和特征值的改变量分别 $Delta X$ 和 $Delta Lambda$:

#dmath[$ (A + Delta A)(X + Delta X) = (X + Delta X)(Lambda + Delta Lambda) $]

变为

#dmath[$ A (Delta X) + (Delta A) X = X (Delta Lambda) + (Delta X) Lambda. $]

小项 $(Delta A)(Delta X)$ 和 $(Delta X)(Delta Lambda)$ 可以忽略. 将最后一个等式两边同时左乘 $X^(-1)$. 正如我们所料, 从内项来看, $X^(-1)(Delta A) X$ 的对角线对应 $Delta Lambda$. 请说明为什么外项 $X^(-1) A Delta X$ 和 $X^(-1) Delta X Lambda$ 对角元素可以相互抵消? 先说明 $X^(-1) A = Lambda X^(-1)$, 再得到 $"diag"(Lambda X^(-1) Delta X) = "diag"(X^(-1) Delta X Lambda)$.]

#ti[20.][假设矩阵 $A, B$ 满足 $B > A > O$, 也即 $b_(i j) > a_(i j) > 0$. 请利用佩隆-弗罗贝尼乌斯定理证明 $lambda_(max)(B) > lambda_(max)(A)$.]

#pagebreak()