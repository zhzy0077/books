#import "../theme.typ": *

#hei[25.]　比值 $(x^T bold(S) x)/(x^T x)$ 和 $(norm(bold(A) x)^2)/(norm(x)^2)$ 的最小值分别是什么? 达到最值时, 应取 $bold(S)$ 的哪个特征向量为 $x$? 此时, $x$ 一定是 $bold(A)$ 的特征向量吗?

#hei[26.]　每个矩阵 $bold(A) = bold(U) bold(Sigma) bold(V)^T$ 可将圆转化为椭圆. $bold(A) bold(V) = bold(U) bold(Sigma)$ 表明半径向量为 $v_1$ 和 $v_2$ 的圆变为半轴向量为 $sigma_1 u_1$ 和 $sigma_2 u_2$ 的椭圆. 当 $theta = 30 degree$ 时, 画出对应的圆和椭圆:

#dmath[$ bold(V) = mat(delim: "[", 0, 1; 1, 0), quad bold(U) = mat(delim: "[", cos theta, -sin theta; sin theta, cos theta), quad bold(Sigma) = mat(delim: "[", 2, 0; 0, 1). $]

对于 $2 times 2$ 矩阵, 第 7.4 节将揭示 SVD 的一个重要几何意义:

#dmath[$ text("矩阵") bold(A) = ("旋转")("伸缩")("旋转"), quad text("对称矩阵") bold(S) = ("旋转")("伸缩")("旋回"). $]

#hei[27.]　设矩阵 $bold(A)$ 的列空间在 $R^m$ 中, 行空间在 $R^n$ 中, 且均为定值, 本题将求出所有这样的矩阵 $bold(A)$. 设两个空间的基分别为 $c_1, c_2, dots.c, c_r$ 和 $b_1, b_2, dots.c, b_r$, 以它们为列分别构造矩阵 $bold(C)$ 与 $bold(B)$. 证明 $bold(A)$ 有以下形式:

#dmath[$ bold(A) = bold(C) bold(M) bold(B)^T, $]

其中 $bold(M)$ 为 $r times r$ 可逆矩阵, $r$ 为 $bold(A)$ 的秩. 提示: 由 $bold(A) = bold(U) bold(Sigma) bold(V)^T$ 入手. $bold(U)$ 与 $bold(V)$ 的前 $r$ 列一定分别与 $bold(C)$ 和 $bold(B)$ 通过可逆矩阵相关联, 这是因为它们与 $bold(U)$ 和 $bold(V)$ 一样, 包含着前述为定值的列空间、行空间之基.

#pagebreak()