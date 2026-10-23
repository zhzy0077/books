#import "../theme.typ": *

#ti[6.][求出可将 $S = mat(delim: "[", -2, 6; 6, 7)$ 对角化的正交矩阵 $Q$. 此时对应的对角矩阵 $Lambda$ 是什么?]

#ti[7.][求出可将如下对称矩阵 $S$ 对角化的正交矩阵 $Q$:

#align(center)[$ S = mat(delim: "[", 1, 0, 2; 0, -1, -2; 2, -2, 0). $]]

#ti[8.][求出可将对称矩阵 $S = mat(delim: "[", 9, 12; 12, 16)$ 对角化的所有正交矩阵.]

#ti[9.][(a) 求一个对称矩阵 $mat(delim: "[", 1, b; b, 1)$，使其具有负特征值；

(b) 如何知道该矩阵一定有一个负主元?

(c) 如何知道该矩阵不会有两个负特征值?]

#ti[10.][如果 $A^3 = O$，那么 $A$ 的特征值必定 $\_\_\_\_$. 给出一个例子，使得 $A^3 = O$ 但 $A != O$. 如果 $A$ 为对称矩阵，将其对角化并证明 $A$ 必为零矩阵.]

#ti[11.][如果 $lambda = a + i b$ 是实矩阵 $A$ 的一个特征值，那么其共轭 $overline(lambda) = a - i b$ 也是特征值.（若 $A bold(x) = lambda bold(x)$，则也有 $A overline(bold(x)) = overline(lambda) overline(bold(x))$，于是得到共轭对 $lambda$ 和 $overline(lambda)$.）解释为什么每个实的 $3 times 3$ 矩阵至少有一个实特征值.]

#ti[12.][以下是实矩阵 $A$ 的特征值是实数的一个快速 “证明”：

#hei[错误的证明]　$A bold(x) = lambda bold(x)$ 给出 $bold(x)^T A bold(x) = lambda bold(x)^T bold(x)$，故 $lambda = (bold(x)^T A bold(x))/(bold(x)^T bold(x)) = "实数"/"实数"$.

找出推导中的漏洞——一个隐匿的假定并未得到证明. 试对 $90 degree$ 旋转矩阵 $mat(delim: "[", 0, -1; 1, 0)$ 验证上述步骤，其中 $lambda = i$ 以及 $bold(x) = (i, 1)$.]

#ti[13.][将如下矩阵 $S$ 与 $B$ 写成谱定理中 $lambda_1 bold(x)_1 bold(x)_1^T + lambda_2 bold(x)_2 bold(x)_2^T$（即 $bold(Q) bold(Lambda) bold(Q)^T$）的形式:

#align(center)[$ S = mat(delim: "[", 3, 1; 1, 3), quad B = mat(delim: "[", 9, 12; 12, 16) quad ("保持" norm(bold(x)_1) = norm(bold(x)_2) = 1). $]]

#ti[14.][每个 $2 times 2$ 对称矩阵 $S$ 就是 $lambda_1 bold(x)_1 bold(x)_1^T + lambda_2 bold(x)_2 bold(x)_2^T = lambda_1 P_1 + lambda_2 P_2$. 考察 $S$ 的分解式 $bold(Q) bold(Lambda) bold(Q)^T$，由 $Q$ 的列乘行入手解释 $P_1 + P_2 = bold(x)_1 bold(x)_1^T + bold(x)_2 bold(x)_2^T = I$. 为何 $P_1 P_2 = O$ 呢?]

#ti[15.][反称矩阵 $A = mat(delim: "[", 0, b; -b, 0)$ 的特征值是什么? 构造一个 $4 times 4$ 反称矩阵 $A$（$A^T = -A$），并证明其所有特征值都是虚数.]



#pagebreak()