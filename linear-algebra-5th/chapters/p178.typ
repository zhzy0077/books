#import "../theme.typ": *

第 2 章并未提及零空间这个概念, 这是因为 $bold(A)$ 可逆时, $N(bold(A))$ 只含零向量. 利用初等行变换可将 $[bold(A) quad bold(b)]$ 化为 $[bold(I) quad bold(A)^(-1) bold(b)]$, 即矩阵 $bold(A)$ 可化为单位矩阵 $bold(I)$, 而 $bold(A) bold(x) = bold(b)$ 化为 $bold(x) = bold(A)^(-1) bold(b)$, 也就得到了 $bold(d)$. 尽管 $bold(A)$ 可逆只是一个特例, 但它却是实际中最为常见的矩阵. 因此本书开头就介绍了可逆矩阵.

对于小矩阵而言, 用初等行变换将 $[bold(A) quad bold(b)]$ 化为 $[bold(R) quad bold(d)]$ 还算力所能及的. 但对于大规模矩阵, MATLAB 会做得更好. 使用了反斜线记号的命令 #raw("x = A\\b") 可求出一个特解 (未必与手工计算结果相同). 下例中, 矩阵 $bold(A)$ 是列满秩的, 它的两列都有主元.

#hei[例 1]  当常数项 $bold(b) = (b_1, b_2, b_3)$ 满足什么条件时, 方程组 $bold(A) bold(x) = bold(b)$ 是可解的? 其中

#dmath[$ bold(A) = mat(delim: "[", 1,1; 1,2; -2,-3) , quad bold(b) = mat(delim: "[", b_1; b_2; b_3) .$]

该条件使得 $bold(b)$ 属于 $bold(A)$ 的列空间. 求出全解 $bold(x) = bold(x)_p + bold(x)_n$.

#hei[解]  在矩阵 $bold(A)$ 的右侧增补一列 $bold(b)$, 得到增广矩阵 $[bold(A) quad bold(b)]$. 先从它的第 2 行中减去第 1 行, 再将第 1 行的 2 倍加到第 3 行上, 最后将第 2 行加到第 3 行上, 就得到 $[bold(R) quad bold(d)]$:

#dmath[$ mat(delim: "[", 1,1,b_1; 1,2,b_2; -2,-3,b_3) -> mat(delim: "[", 1,1,b_1; 0,1,b_2 - b_1; 0,-1,b_3 + 2 b_1) -> mat(delim: "[", 1,0,2 b_1 - b_2; 0,1,b_2 - b_1; 0,0,b_3 + b_1 + b_2) .$]

当 $b_3 + b_1 + b_2 = 0$ 时, 最后一行对应的方程为 $0 = 0$. 这就是 $bold(b)$ 属于列空间的条件. 此时 $bold(A) bold(x) = bold(b)$ 是可解的. 注意到 $bold(A)$ 的各行累加为零行, 为了使得方程组等号两边保持一致, 向量 $bold(b)$ 的各分量也须累加为零.

$n - r = 2 - 2$ 表明例 1 中没有自由变量, 也就不存在特殊解, 即零空间解为 $bold(x)_n = 0$. 从而 $bold(A) bold(x) = bold(b)$ 与 $bold(R) bold(x) = bold(d)$ 的特解对应最终列向量 $bold(d)$ 的前两个分量:

#dmath[$ bold(A) bold(x) = bold(b)$ 的唯一解 $quad bold(x) = bold(x)_p + bold(x)_n = mat(delim: "[", 2 b_1 - b_2; b_2 - b_1) + mat(delim: "[", 0; 0) .$]

如果 $b_3 + b_1 + b_2$ 不等于零, 那么 $bold(A) bold(x) = bold(b)$ 无解 (此时特解 $bold(x)_p$ 与全解 $bold(x)$ 均不存在).

例 1 十分典型, 它代表了一种非常重要的情形: $m times n$ 矩阵 $bold(A)$ 是列满秩的, 即秩 $r = n$, 每列都有一个主元. 此类矩阵是 "高瘦" 形的 ($m >= n$). 经过初等行变换, $bold(A)$ 化为 $bold(R)$, 秩仍为 $n$, 且单位矩阵 $bold(I)$ 就在 $bold(R)$ 的上部:

#dmath[$ "列满秩" quad bold(R) = mat(delim: "[", bold(I); bold(O)) = mat(delim: "[", n times n "单位矩阵"; (m - n) "个全零行") .$ (1)]

此时既没有自由列, 也不存在自由变量. $bold(A)$ 的零空间就是 $Z = {"零向量"}$.

现将此类矩阵的不同描述方式汇总如下:



#pagebreak()
