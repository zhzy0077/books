#import "../theme.typ": *
#set par(spacing: 14pt, leading: 12.8pt)

#ti[9.][矩阵 $bold(A)$ 和 $bold(B)$ 是以主对角线为对称轴的对称矩阵 (因为 $4 = 4$), 请计算它们的三因子分解式 $bold(L) bold(D) bold(U)$, 并说明这些对称矩阵对应的 $bold(U)$ 如何与 $bold(L)$ 建立联系:

#eqL[对称矩阵][$ bold(A) = mat(delim: "[", 2,4;4,11) , quad bold(B) = mat(delim: "[", 1,4,0;4,12,4;0,4,0) . $]]

#ti[10.][(推荐) 对如下所示的对称矩阵 $bold(A)$ 计算 $bold(L)$ 和 $bold(U)$:

$ bold(A) = mat(delim: "[", a,a,a,a;a,b,b,b;a,b,c,c;a,b,c,d) . $

对于 $a,b,c,d$, 请找出四个条件使得 $bold(A) = bold(L) bold(U)$ 有四个主元.]

#ti[11.][如下所示的非对称矩阵 $bold(A)$ 与习题 10 中的矩阵 $bold(A)$ 有相同的 $bold(L)$:

#dmath[$ bold(A) = mat(delim: "[", a,r,r,r;a,b,s,s;a,b,c,t;a,b,c,d) quad ("计算" bold(L) "和" bold(U)) . $]

对于 $a,b,c,d,r,s,t$, 请找出四个条件使得 $bold(A) = bold(L) bold(U)$ 有四个主元.]

#exerciseNote[习题 12—13 利用 $bold(L)$ 和 $bold(U)$ (无需 $bold(A)$) 来求解 $bold(A) bold(x) = bold(b)$.]

#ti[12.][请首先求解三角形方程组 $bold(L) bold(c) = bold(b)$ 得到 $bold(c)$, 然后求解 $bold(U) bold(x) = bold(c)$ 得到 $bold(x)$, 其中

$ bold(L) = mat(delim: "[", 1,0;4,1) , quad bold(U) = mat(delim: "[", 2,4;0,1) , quad bold(b) = mat(delim: "[", 2;11) . $

为保险起见, 也可先计算 $bold(L) bold(U)$, 然后求解 $bold(A) bold(x) = bold(b)$. 当出现 $bold(c)$ 时请圈出来.]

#ti[13.][请首先求解 $bold(L) bold(c) = bold(b)$ 得到 $bold(c)$, 然后求解 $bold(U) bold(x) = bold(c)$ 得到 $bold(x)$, 其中

$ bold(L) = mat(delim: "[", 1,0,0;1,1,0;1,1,1) , quad bold(U) = mat(delim: "[", 1,1,1;0,1,1;0,0,1) , quad bold(b) = mat(delim: "[", 4;5;6) . $

请问 $bold(A)$ 是什么?]

#ti[14.][(a) 将常规的消元步骤应用于矩阵

$ bold(L) = mat(delim: "[", 1,0,0;l_21,1,0;l_31,l_32,1) $]



#pagebreak()
