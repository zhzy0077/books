#import "../theme.typ": *
#set par(spacing: 14pt, leading: 12.8pt)

#ti[36.][(看似傻傻的问题) 描述 $2 times 3$ 矩阵 $bold(A)_1$ 与 $bold(A)_2$, 及对应的最简行阶梯形矩阵 $bold(R)_1$ 与 $bold(R)_2$, 使得 $bold(R)_1 + bold(R)_2$ 为 $bold(A)_1 + bold(A)_2$ 的最简行阶梯形矩阵. 此情形下, $bold(R)_1 = bold(A)_1$ 且 $bold(R)_2 = bold(A)_2$ 正确吗? $bold(R)_1 - bold(R)_2$ 是 $bold(A)_1 - bold(A)_2$ 的最简行阶梯形矩阵吗?]

#ti[37.][若 $bold(A)$ 有 $r$ 个主元列, 如何获知 $bold(A)^T$ 有 $r$ 个主元列? 举出一个 $3 times 3$ 矩阵 $bold(A)$ 的例子, 使得 $bold(A)$ 与 $bold(A)^T$ 具有不同的主元列标号.]

#ti[38.][对于以下矩阵 $bold(R)$, $bold(R) bold(x) = 0$ 和 $bold(y)^T bold(R) = 0$ 的特殊解分别是什么?

$ (a) quad bold(R) = mat(delim: "[", 1,0,2,3; 0,1,4,5; 0,0,0,0) wide (b) quad bold(R) = mat(delim: "[", 0,1,2; 0,0,0; 0,0,0) . $]

#ti[39.][填充以下矩阵, 使得它们是秩 1 的:

$ bold(A) = mat(delim: "[", 1,2,4; 2,,; 4,,) , quad bold(B) = mat(delim: "[", ,9,; 1,,; 2,6,-3) , quad bold(M) = mat(delim: "[", a,b; c,) . $]

#ti[40.][若 $bold(A)$ 为秩 1 的 $m times n$ 矩阵, 则其各列为某列的倍数, 且各行是某行的倍数. 列空间为 $R^m$ 中的 \_\_\_\_. 零空间为 $R^n$ 中的 \_\_\_\_, 其中矩阵 $bold(N)$ 的形状为 \_\_\_\_.]

#ti[41.][选取向量 $bold(u)$ 与 $bold(v)$, 使得如下 $bold(A)$ 为列左乘 $bold(u) bold(v)^T$:

$ (a) quad bold(A) = mat(delim: "[", 3,6,6; 1,2,2; 4,8,8) wide (b) quad bold(A) = mat(delim: "[", 2,2,6,4; -1,-1,-3,-2) . $

$bold(A) = bold(u) bold(v)^T$ 是每个秩 1 矩阵的自然形式.]

#ti[42.][若 $bold(A)$ 为秩 1 矩阵, 则最简行阶梯形矩阵 $bold(R)$ 的第 2 行是 \_\_\_\_. 举个例子验证结论.]

#exerciseNote[习题 43—45 是关于矩阵 $bold(A)$ 中 $r times r$ 可逆子矩阵的.]

#ti[43.][若 $m times n$ 矩阵 $bold(A)$ 的秩为 $r$, 则 $bold(A)$ 存在 $r times r$ 可逆子矩阵 $bold(S)$. 在以下 $bold(A), bold(B)$ 和 $bold(C)$ 中划去 $m - r$ 行和 $n - r$ 列, 得到一个可逆子矩阵 $bold(S)$ (提示: 保留下主元行和主元列):

$ bold(A) = mat(delim: "[", 1,2,3; 1,2,4) , quad bold(B) = mat(delim: "[", 1,2,3; 2,4,6) , quad bold(C) = mat(delim: "[", 0,1,0; 0,0,0; 0,0,1) . $]

#ti[44.][假设子矩阵 $bold(P)$ 仅包含 $m times n$ 矩阵的 $r$ 个主元列, 解释为什么该 $m times r$ 子矩阵 $bold(P)$ 的秩为 $r$.]

#ti[45.][对习题 44 中的矩阵 $bold(P)$ 进行转置, 找出 $r times m$ 矩阵 $bold(P)^T$ 的 $r$ 个主元列; 再转置回来, 这样就得到了 $bold(P)$ 和 $bold(A)$ 中的一个 $r times r$ 可逆子矩阵 $bold(S)$. 对于矩阵

$ bold(A) = mat(delim: "[", 1,2,3; 2,4,6; 2,4,7) , $]



#pagebreak()
