#import "../theme.typ": *

#ti[26.][对如下 $4 times 4$ 矩阵 $bold(A)$ 分块:

$ bold(A) = mat(delim: "[", bold(B), bold(C); bold(O), bold(D)) = mat(delim: "[", 0, 1, 3, 0; -2, 3, 0, 4; 0, 0, 6, 1; 0, 0, 1, 6) , $

子块 $bold(B)$ 的特征值为 $1, 2$, 子块 $bold(C)$ 的特征值为 $3, 4$, 子块 $bold(D)$ 的特征值为 $5, 7$. 求出矩阵 $bold(A)$ 的特征值.]

#ti[27.][求出如下矩阵 $bold(A)$ 和 $bold(C)$ 各自的秩和四个特征值:

$ bold(A) = mat(delim: "[", 1, 1, 1, 1; 1, 1, 1, 1; 1, 1, 1, 1; 1, 1, 1, 1) , quad bold(C) = mat(delim: "[", 1, 0, 1, 0; 0, 1, 0, 1; 1, 0, 1, 0; 0, 1, 0, 1) . $]

#ti[28.][对如下矩阵 $bold(B)$ 与 $bold(C)$, 求出它们各自的特征值以及行列式:

$ bold(B) = bold(A) - bold(I) = mat(delim: "[", 0, 1, 1, 1; 1, 0, 1, 1; 1, 1, 0, 1; 1, 1, 1, 0) , quad bold(C) = bold(I) - bold(A) = mat(delim: "[", 0, -1, -1, -1; -1, 0, -1, -1; -1, -1, 0, -1; -1, -1, -1, 0) . $]

#ti[29.][(回顾) 求出如下矩阵 $bold(A)$, $bold(B)$ 和 $bold(C)$ 的特征值:

$ bold(A) = mat(delim: "[", 1, 2, 3; 0, 4, 5; 0, 0, 6) , quad bold(B) = mat(delim: "[", 0, 0, 1; 0, 2, 0; 3, 0, 0) , quad bold(C) = mat(delim: "[", 2, 2, 2; 2, 2, 2; 2, 2, 2) . $]

#ti[30.][对矩阵 $bold(A) = mat(delim: "[", a, b; c, d)$, 当 $a + b = c + d$ 时, 证明 $(1, 1)$ 为 $bold(A)$ 的特征向量, 并求出 $bold(A)$ 的两个特征值.]

#ti[31.][如果互换第 1, 2 行以及第 1, 2 列, 那么特征值不变. 求出如下矩阵 $bold(A)$ 和 $bold(B)$ 对应于 $lambda = 11$ 的特征向量 (秩 1 推出 $lambda_2 = lambda_3 = 0$):

$ bold(A) = mat(delim: "[", 1, 2, 1; 3, 6, 3; 4, 8, 4) , quad bold(B) = bold(P) bold(A) bold(P)^T = mat(delim: "[", 6, 3, 3; 2, 1, 1; 8, 4, 4) . $]

#ti[32.][设三阶方阵 $bold(A)$ 的特征值为 $0, 3, 5$, 分别对应线性无关的特征向量 $bold(u), bold(v), bold(w)$.

#sub[(a) 分别给出 $bold(A)$ 的零空间与列空间的一组基;]

#sub[(b) 求出 $bold(A) bold(x) = bold(v) + bold(w)$ 的一个特解, 再求出所有解;]

#sub[(c) $bold(A) bold(x) = bold(u)$ 无解: 如果它有解, 那么 \_\_\_\_ 将在列空间中.]]

#pagebreak()