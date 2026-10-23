#import "../theme.typ": *

#hei[求出 $3 times 2$ 子矩阵 $bold(P)$, 进而求出 $2 times 2$ 可逆子矩阵 $bold(S)$.]

#hei[习题 46—51 表明 $bold(A) bold(B)$ 的秩不大于 $bold(A)$ 的秩或 $bold(B)$ 的秩.]

#ti[46.][分别求出两个秩 1 矩阵的乘积 $bold(A) bold(B)$ 与 $bold(A) bold(C)$ 的秩:]

#dmath[$ bold(A) = mat(1,2; 2,4) , quad bold(B) = mat(2,1,4; 3,1.5,6) , quad bold(C) = mat(1,b; c,b c) . $]

#ti[47.][秩 1 矩阵 $bold(u) bold(v)^T$ 左乘秩 1 矩阵 $bold(w) bold(z)^T$, 结果为 $bold(u) bold(z)^T$ 乘数值 \_\_\_\_. 除非 \_\_\_\_ $= 0$, 该乘积 $bold(u) bold(v)^T bold(w) bold(z)^T$ 也是秩 1 的.]

#ti[48.][(a) 设矩阵 $bold(B)$ 的第 $j$ 列是 $bold(B)$ 的前 $j - 1$ 列的线性组合, 证明 $bold(A) bold(B)$ 的第 $j$ 列也是 $bold(A) bold(B)$ 的前 $j - 1$ 列的相同系数的线性组合. 那么 $bold(A) bold(B)$ 不可能有新的主元列, 从而 $bold(A) bold(B)$ 的秩不大于 $bold(B)$ 的秩.]

#sub[(b) 对于矩阵 $bold(B) = mat(1,1; 1,1)$, 求 $bold(A)_1$ 与 $bold(A)_2$, 使得 $bold(A)_1 bold(B)$ 的秩为 1, 且 $bold(A)_2 bold(B)$ 的秩为 0.]

#ti[49.][习题 48 证明了 $bold(A) bold(B)$ 的秩不大于 $bold(B)$ 的秩. 类似推导可得 $bold(B)^T bold(A)^T$ 的秩不大于 $bold(A)^T$ 的秩. 接下来如何推导 $bold(A) bold(B)$ 的秩不大于 $bold(A)$ 的秩?]

#ti[50.][(重要) 设 $bold(A)$ 与 $bold(B)$ 均为 $n times n$ 矩阵, 且 $bold(A) bold(B) = bold(I)$. 根据 $bold(A) bold(B)$ 的秩不大于 $bold(A)$ 的秩, 证明 $bold(A)$ 的秩为 $n$. 故 $bold(A)$ 可逆, 且 $bold(B)$ 为其左逆和右逆 (见第 2.5 节). 因此 $bold(B) bold(A) = bold(I)$ (此结论并非那么显然!).]

#ti[51.][设 $bold(A)$ 与 $bold(B)$ 分别为 $2 times 3$ 和 $3 times 2$ 矩阵, 且 $bold(A) bold(B) = bold(I)$. 根据秩的情况, 证明 $bold(B) bold(A) != bold(I)$. 给出一组 $bold(A)$ 与 $bold(B)$ 的例子, 使得 $bold(A) bold(B) = bold(I)$. 当 $m < n$ 时, $m times n$ 矩阵 $bold(A)$ 的右逆不等于左逆.]

#ti[52.][假设 $bold(A)$ 与 $bold(B)$ 有相同的最简行阶梯形矩阵 $bold(R)$.]

#sub[(a) 证明 $bold(A)$ 与 $bold(B)$ 有相同的零空间与行空间;]

#sub[(b) 已知 $bold(E)_1 bold(A) = bold(R)$ 且 $bold(E)_2 bold(B) = bold(R)$, 故 $bold(A)$ 等于一个 \_\_\_\_ 矩阵左乘 $bold(B)$.]

#ti[53.][将以下矩阵 $bold(A)$ 与 $bold(B)$ 分别表示为两个秩 1 矩阵之和的形式:]

#dmath[$ bold("秩为 2") quad bold(A) = mat(1,1,0; 1,1,4; 1,1,8) , quad bold(B) = mat(2,2; 2,3) . $]

#ti[54.][针对以下矩阵, 回答范例解析 3.2 C 中相同的问题:]

#dmath[$ bold(A) = mat(1,1,2,2; 2,2,4,4; 1,c,2,2) , quad bold(B) = mat(1-c,2; 0,2-c) . $]

#ti[55.][针对以下分块矩阵 $bold(A), bold(B), bold(C)$, 零空间 $bold(N)$ (各列为特殊解) 分别是什么?]

#dmath[$ bold(A) = mat(bold(I) bold(I)) , quad bold(B) = mat(bold(I), bold(I); bold(O), bold(O)) , quad bold(C) = mat(bold(I) bold(I) bold(I)) . $]



#pagebreak()
