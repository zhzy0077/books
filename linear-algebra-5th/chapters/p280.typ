#import "../theme.typ": *

#hei[5.1 B]　试说明如何通过行变换得到如下行列式:

#eqnum($det mat(delim: "[", 1 - a, 1, 1; 1, 1 - a, 1; 1, 1, 1 - a) = a^2 (3 - a) .$, 4)

解　首先分别从第 1 行和第 2 行中减去第 3 行得

#dmath[$ det mat(delim: "[", -a, 0, a; 0, -a, a; 1, 1, 1 - a) , $]

然后分别将第 1 列和第 2 列加到第 3 列得到一个下三角形矩阵, 其中主对角线上的元素是 $-a, -a, 3 - a$, 从而得行列式为 $(-a)(-a)(3 - a) = a^2 (3 - a)$.

若 $a = 0$ 或 $a = 3$, 则行列式等于零. 当 $a = 0$ 时, 得到一个全 1 矩阵——显然是奇异矩阵. 当 $a = 3$ 时, 所有行加到第一行得零行——也是奇异矩阵. 对全 1 矩阵而言, 0 和 3 这两个数是矩阵的特征值. 这是对第 6 章知识富有启发性的一个重要例题.

#align(center)[#image("../assets/fig-p280-icon.png", width: 2.6%)]

#xiti[习题集 5.1]

习题 1—12 是关于行列式的性质的.

#ti[1.][若一个 4 阶方阵 $bold(A)$ 的行列式是 $det bold(A) = 1/2$, 请计算 $det(2 bold(A))$, $det(-bold(A))$, $det(bold(A)^2)$ 和 $det(bold(A)^(-1))$.]

#ti[2.][若一个 3 阶方阵 $bold(A)$ 的行列式是 $det bold(A) = -1$, 请计算 $det(1/2 bold(A))$, $det(-bold(A))$, $det(bold(A)^2)$ 和 $det(bold(A)^(-1))$.]

#ti[3.][判断正误, 若结论正确请说明原因, 若结论错误请举出反例:

#sub[(a) $bold(I) + bold(A)$ 的行列式是 $1 + det bold(A)$;]

#sub[(b) $bold(A) bold(B) bold(C)$ 的行列式是 $|bold(A)| |bold(B)| |bold(C)|$;]

#sub[(c) $4 bold(A)$ 的行列式是 $4 |bold(A)|$;]

#sub[(d) $bold(A) bold(B) - bold(B) bold(A)$ 的行列式是零; 请尝试用 $bold(A) = mat(delim: "[", 0, 0; 0, 1)$ 举例进行判断.]]

#ti[4.][怎样换行才能证明如下 “反向单位矩阵” $bold(J)_3$ 和 $bold(J)_4$ 的行列式分别是 $|bold(J)_3| = -1$ 和 $|bold(J)_4| = +1$?]

#dmath[$ det mat(delim: "[", 0, 0, 1; 0, 1, 0; 1, 0, 0) = -1, quad "而" quad det mat(delim: "[", 0, 0, 0, 1; 0, 0, 1, 0; 0, 1, 0, 0; 1, 0, 0, 0) = +1. $]

#pagebreak()