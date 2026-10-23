#import "../theme.typ": *

(a) 设向量组 $bold(a)_1, bold(a)_2, bold(a)_3$ 是标准正交的, 证明: $x_1 = bold(a)_1^T bold(b)$;

(b) 设向量组 $bold(a)_1, bold(a)_2, bold(a)_3$ 仅正交, 证明: $x_1 = (bold(a)_1^T bold(b))/(bold(a)_1^T bold(a)_1)$;

(c) 如果向量组 $bold(a)_1, bold(a)_2, bold(a)_3$ 仅线性无关, 那么 $x_1$ 是 $\_\_\_\_$ 左乘 $bold(b)$ 的第一个分量.

习题 13—25 是关于格拉姆-施密特方法以及 $bold(A) = bold(Q) bold(R)$ 的.

#ti[13.][向量 $bold(b) = mat(delim: "[", 4;0)$ 应当减去 $bold(a) = mat(delim: "[", 1;1)$ 的多少倍, 才能得到正交于 $bold(a)$ 的向量 $bold(B)$? 画出草图表示 $bold(a), bold(b)$ 和 $bold(B)$. ]

#ti[14.][在习题 13 中计算 $bold(q)_1 = bold(a)/||bold(a)||$ 和 $bold(q)_2 = bold(B)/||bold(B)||$, 以实现格拉姆-施密特方法, 并进行 $bold(Q) bold(R)$ 分解: ]

#dmath[$ mat(delim: "[", 1,4;1,0) = mat(delim: "[", bold(q)_1, bold(q)_2) mat(delim: "[", ||bold(a)||, ?; 0, ||bold(B)||) . $]

#ti[15.][(a) 求标准正交向量组 $bold(q)_1, bold(q)_2, bold(q)_3$, 使得 $bold(q)_1, bold(q)_2$ 生成以下矩阵的列空间: ]

#dmath[$ bold(A) = mat(delim: "[", 1,1;2,-1;-2,4) ; $]

(b) $bold(A)$ 的四个基本子空间中, 哪个包含 $bold(q)_3$?

(c) 用最小二乘法解方程组 $bold(A) bold(x) = (1,2,7)$.

#ti[16.][向量 $bold(a) = (4,5,2,2)$ 的多少倍距离向量 $bold(b) = (1,2,0,0)$ 最近? 在由向量 $bold(a), bold(b)$ 生成的平面中, 求出标准正交向量 $bold(q)_1$ 和 $bold(q)_2$. ]

#ti[17.][求出向量 $bold(b)$ 在过向量 $bold(a)$ 的直线上的投影 $bold(p)$, 其中 ]

#dmath[$ bold(a) = mat(delim: "[", 1;1;1), quad bold(b) = mat(delim: "[", 1;3;5), $]

并求 $bold(e) = bold(b) - bold(p)$. 计算标准正交向量 $bold(q)_1 = bold(a)/||bold(a)||$ 和 $bold(q)_2 = bold(e)/||bold(e)||$.

#ti[18.][(推荐) 利用格拉姆-施密特方法, 由向量组 $bold(a), bold(b), bold(c)$ 求出正交向量组 $bold(A), bold(B), bold(C)$, 其中 ]

#dmath[$ bold(a) = (1,-1,0,0), quad bold(b) = (0,1,-1,0), quad bold(c) = (0,0,1,-1). $]

向量组 $bold(A), bold(B), bold(C)$ 和 $bold(a), bold(b), bold(c)$ 均为垂直于向量 $bold(d) = (1,1,1,1)$ 的子空间的基.

#ti[19.][如果矩阵 $bold(A) = bold(Q) bold(R)$, 那么 $bold(A)^T bold(A) = bold(R)^T bold(R)$ 为 $\_\_\_\_$ 三角形矩阵左乘 $\_\_\_\_$ 三角形矩阵. 对 $bold(A)$ 施行格拉姆-施密特方法对应 $bold(A)^T bold(A)$ 上的消元法. $bold(A)^T bold(A)$ 的主元必为 $bold(R)$ 的对角线元素的平方. 利用格拉姆-施密特方法求出如下 $bold(A)$ 对应的 $bold(Q)$ 和 $bold(R)$: ]

#dmath[$ bold(A) = mat(delim: "[", -1,1;2,1;2,4), quad bold(A)^T bold(A) = mat(delim: "[", 9,9;9,18) = mat(delim: "[", 1,0;1,1) mat(delim: "[", 9,9;0,9) mat(delim: "[", 1,1;0,1) . $]

#pagebreak()