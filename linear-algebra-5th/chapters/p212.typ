#import "../theme.typ": *
#set par(spacing: 15pt, leading: 13pt)
#show math.equation.where(block: true): set block(above: 16pt, below: 16pt)

该解为 $bold(y) = (0, 0, -1, 1, -1)$. 这两个满足 $bold(A)^T bold(y) = 0$ 的解线性无关, 于是 $N(bold(A)^T)$ 的维数是 $m - r = 5 - 3 = 2$. 这样就找到了左零空间的一组基.

或许读者会问, 为什么本题中出现了 “圈” 与 “树”? 这里也可以避开圈与树, 直接用消元法求解 $bold(A)^T bold(y) = 0$. 由于 $4 times 5$ 矩阵 $bold(A)^T$ 的第 1, 2, 4 列为主元列, 第 3, 5 列为自由列, 故方程组有 2 个特殊解, 从而 $bold(A)^T$ 零空间的维数为 2, 即 $m - r = 5 - 3 = 2$. 而用圈与树来识别线性相关与线性无关行, 则体现了数学之美. 第 10.1 节将使用这种方法处理每个类似于 $bold(A)$ 的关联矩阵.

从另一个角度观察, 方程组 $bold(A) bold(x) = bold(b)$ 给出了四个顶点 $x_1, x_2, x_3, x_4$ 之间的 “电压”, 而方程组 $bold(A)^T bold(y) = 0$ 给出了五条边 $y_1, y_2, y_3, y_4, y_5$ 上的 “电流”. 这两个方程组就是基尔霍夫电压定律和基尔霍夫电流定律. 尽管这些字眼是应用于电路的, 但其背后的数学思想也适用于工程、科学、经济和商业等领域.

图是离散应用数学中最重要的模型. 生活中处处可见图的身影: 道路、管线、血流、大脑和网络, 以及一国或世界经济等, 这些图均可利用它们的关联矩阵 $bold(A)$ 和 $bold(A)^T$ 来研究.

#subsec[秩 1 矩阵 (回顾)]

设矩阵的每行均为第 1 行的倍数. 请看下例:

#dmath[$ mat(delim: "[", 2, 3, 7, 8; 2a, 3a, 7a, 8a; 2b, 3b, 7b, 8b) = mat(delim: "[", 1; a; b) [2 quad 3 quad 7 quad 8] = bold(u) bold(v)^T. $]

尽管左边矩阵有 3 行, 但它的行空间的维数只有 1. 行向量 $bold(v)^T = [2 quad 3 quad 7 quad 8]$ 是行空间的一组基. 行秩为 1.

再来看列. “列秩等于行秩, 均为 1.” 矩阵各列必为某列的倍数. 读者是否已发现线性代数的这个关键结论是正确的? 列向量 $bold(u) = (1, a, b)$ 分别乘上倍数 2, 3, 7, 8 即得该矩阵各列. 非零向量 $bold(u)$ 是列空间的一组基. 列秩也是 1.

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 22pt), width: 100%, above: 20pt, below: 20pt)[
  #align(center)[每个秩 1 矩阵等于一列左乘一行: $bold(A) = bold(u) bold(v)^T$.]
]

#subsec[秩 2 矩阵 = 秩 1 矩阵 + 秩 1 矩阵]

假设矩阵 $bold(A)$ 的秩为 $r = 2$. 通常, $bold(A)$ 的秩 $r$ 并非能一眼看出. 为此, 利用初等行变换将 $bold(A)$ 化简为 $bold(R)$, 即 $bold(R) = "rref"(bold(A))$, 也即用某个消元矩阵 $bold(E)$ 将 $bold(A)$ 化简到 $bold(R) = bold(E) bold(A)$. 那么逆矩阵 $bold(C) = bold(E)^(-1)$ 又将 $bold(R)$ 还原为 $bold(A) = bold(C) bold(R)$. 例如,

#v(4pt)
#eqnumL([秩 2 矩阵], $ bold(A) = mat(delim: "[", 1, 0, 3; 1, 1, 7; 4, 2, 20) = mat(delim: "[", 1, 0, 0; 1, 1, 0; 4, 2, 1) mat(delim: "[", 1, 0, 3; 0, 1, 4; 0, 0, 0) = bold(C) bold(R) . $, 4)



#pagebreak()
