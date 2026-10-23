#import "../theme.typ": *

第 1 步中的系数向量为 $bold(c) = bold(X)^(-1) bold(u)_0$. 接着在第 2 步中用 $bold(Lambda)^k$ 左乘各特征向量. 最终结果 $bold(u)_k = sum_(i=1)^n c_i lambda_i^k bold(x)_i$ 出现在第 3 步, 它是 $bold(X)$, $bold(Lambda)^k$ 和 $bold(X)^(-1) bold(u)_0$ 的乘积:

#eqnum($ bold(A)^k bold(u)_0 &= bold(X) bold(Lambda)^k bold(X)^(-1) bold(u)_0 = bold(X) bold(Lambda)^k bold(c) \
&= mat(delim: "[", bold(x)_1, bold(x)_2, dots.c, bold(x)_n) mat(delim: "[", lambda_1^k, , , ; , lambda_2^k, , ; , , dots.down, ; , , , lambda_n^k) mat(delim: "[", c_1; c_2; dots.v; c_n) . $, 13)

该结果正是 $bold(u)_k = c_1 lambda_1^k bold(x)_1 + c_2 lambda_2^k bold(x)_2 + dots.c + c_n lambda_n^k bold(x)_n$. 它是递推式 $bold(u)_(k+1) = bold(A) bold(u)_k$ 的解.

#hei[例 3]　从 $bold(u)_0 = (1,0)$ 开始, 使用如下矩阵 $bold(A)$ 计算 $bold(A)^k bold(u)_0$, 以得到增长更快的斐波那契型数列:

#align(center)[$ bold(A) = mat(delim: "[", 1, 2; 1, 0) , $]

特征值为 $lambda_1 = 2$ 和 $lambda_2 = -1$, 对应特征向量 $bold(x)_1 = mat(delim: "[", 2; 1)$ 和 $bold(x)_2 = mat(delim: "[", 1; -1)$. 该矩阵与推导斐波那契数列时用到的矩阵类似, 而递推式改为 $F_(k+2) = F_(k+1) + 2 F_k$. 新数列的前 4 项为 $0,1,1,3$. 由于特征值含 $lambda = 2$, 该数列增长得更快.

三步内解出 $bold(u)_k = bold(A)^k bold(u)_0$, 其中 $bold(u)_0 = c_1 bold(x)_1 + c_2 bold(x)_2$, $bold(u)_k = c_1 lambda_1^k bold(x)_1 + c_2 lambda_2^k bold(x)_2$:

第 1 步　$ bold(u)_0 = mat(delim: "[", 1; 0) = 1/3 mat(delim: "[", 2; 1) + 1/3 mat(delim: "[", 1; -1) $, 故 $c_1 = c_2 = 1/3$;

第 2 步　用 $lambda_1^k = 2^k$ 和 $lambda_2^k = (-1)^k$ 分别去乘 $bold(x)_1$ 与 $bold(x)_2$;

第 3 步　将特征向量 $c_1 lambda_1^k bold(x)_1$ 与 $c_2 lambda_2^k bold(x)_2$ 合并为 $bold(u)_k$,

#dmath[$ bold(u)_k = bold(A)^k bold(u)_0 = 1/3 2^k mat(delim: "[", 2; 1) + 1/3 (-1)^k mat(delim: "[", 1; -1) = mat(delim: "[", F_(k+1); F_k) . $]

新的通项公式为 $F_k = (2^k - (-1)^k)/3$. 在 $0,1,1,3$ 之后出现的是 $F_4 = 15/3 = 5$.

在这些数值例子的背后有一个基本思想: 利用特征向量计算. 在第 6.3 节中, 这是联系线性代数与微分方程的关键 ($lambda^k$ 将变为 $e^(lambda t)$). 第 8 章会介绍类似的思想——将函数用函数空间的 “基向量” 表示. 常见的例子就是傅里叶级数, 它的构造基于求导运算 $dif / dif x$ 的特征向量 $e^(i k x)$.

#subsec[不可对角化矩阵 (选学)]

设 $lambda$ 为 $bold(A)$ 的一个特征值, 可通过两种方式来定义:

#pagebreak()