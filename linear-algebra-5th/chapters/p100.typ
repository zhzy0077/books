#import "../theme.typ": *

由此可知

#dmath[$ bold(S)^2 = mat(delim: "[", 2, 1, 1, 2; 1, 3, 2, 1; 1, 2, 3, 1; 2, 1, 1, 2) , quad bold(S)^3 = mat(delim: "[", 2, 5, 5, 2; 5, 4, 5, 5; 5, 5, 4, 5; 2, 5, 5, 2) . $]

矩阵 $bold(S)^2$ 的一个应用价值是 $(bold(S)^2)(i, j)$ 表示顶点 $i$ 与顶点 $j$ 之间步长为 2 的路径数量. 例如, 图中顶点 2 与顶点 3 之间有两条步长为 2 的路径: 经过顶点 1 或顶点 4; 从顶点 1 到顶点 1 也有两条步长为 2 的路径: $1 -> 2 -> 1$ 和 $1 -> 3 -> 1$. 同理, 请尝试在顶点 1 和顶点 2 之间找到 5 条步长为 3 的路径.

为什么 $bold(S)^N$ 能够计算出一对顶点之间步长为 $N$ 的路径数量呢? 下面从 $bold(S)^2$ 开始, 基于点积的矩阵乘法来分析:

#eqnum($ (bold(S)^2)(i, j) = (bold(S) "的第" i "行") dot (bold(S) "的第" j "列") = s_(i 1) s_(1 j) + s_(i 2) s_(2 j) + s_(i 3) s_(3 j) + s_(i 4) s_(4 j) . $, 7)

若存在一条步长为 2 的路径 $i -> 1 -> j$, 则上式中第一个乘积项是 $s_(i 1) s_(1 j) = 1 times 1 = 1$. 若 $i -> 1 -> j$ 不是有效路径, 则不是 $i -> 1$ 缺失就是 $1 -> j$ 缺失, 此时乘积项 $s_(i 1) s_(1 j) = 0$. $(bold(S)^2)_(i j)$ 就是将全部步长为 2 的路径 $i -> k -> j$ 所对应的 1 相加, 因此可以计算出总路径数量.

同理 $bold(S)^(N-1) bold(S)$ 能够计算出步长为 $N$ 的路径数量, 因为 $bold(S)^(N-1)$ 中包含了顶点 $i$ 到 $k$ 且步长为 $N-1$ 的路径数量, 而 $bold(S)$ 包含了从顶点 $k$ 到 $j$ 且步长为 1 的路径数量. 矩阵乘法非常适合计算一个图中的路径数量——如公司员工之间的通信频道数量.

#hei[2.4 B]  对三个矩阵

#dmath[$ bold(A) = mat(delim: "[", p, 0; q, r) , quad bold(B) = mat(delim: "[", 1, 1; 0, 1) , quad bold(C) = mat(delim: "[", 0, z; 0, 0) , $]

请分析什么情况下 $bold(A) bold(B) = bold(B) bold(A)$? 什么情况下 $bold(B) bold(C) = bold(C) bold(B)$? 什么情况下 $bold(A) (bold(B) bold(C)) = (bold(A) bold(B)) bold(C)$? 请分别给出矩阵元素 $p, q, r, z$ 满足的条件. 若 $p, q, r, 1, z$ 是 $4 times 4$ 子块而不是数字, 上述问题的答案是否会改变?

#hei[解]  首先由运算定律可知, $bold(A) (bold(B) bold(C)) = (bold(A) bold(B)) bold(C)$ 始终成立, 且可不写括号, 即

#dmath[$ bold(A) (bold(B) bold(C)) = (bold(A) bold(B)) bold(C) = bold(A) bold(B) bold(C) . $]

但是矩阵乘法运算必须保持相乘的左右顺序:

#dmath[$ ("通常" bold(A) bold(B) != bold(B) bold(A)) quad quad bold(A) bold(B) = mat(delim: "[", p, p; q, q + r) , quad bold(B) bold(A) = mat(delim: "[", p + q, r; q, r) ; $]
#dmath[$ ("本例碰巧有" bold(B) bold(C) = bold(C) bold(B)) quad quad bold(B) bold(C) = mat(delim: "[", 0, z; 0, 0) , quad bold(C) bold(B) = mat(delim: "[", 0, z; 0, 0) . $]



#pagebreak()
