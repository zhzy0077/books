#import "../theme.typ": *

以下第一个例子由 $R^2$ 和 $R^3$ 中标准基向量给出线性变换 $T$ 的矩阵 $bold(A)$.

#hei[例 1]　设变换 $T$ 将基向量 $bold(v)_1 = (1, 0)$ 映为 $T(bold(v)_1) = (2, 3, 4)$, 将基向量 $bold(v)_2 = (0, 1)$ 映为 $T(bold(v)_2) = (5, 5, 5)$. 若 $T$ 为 $R^2$ 到 $R^3$ 的线性变换, 则其 “标准矩阵” $bold(A)$ 是 $3 times 2$ 的. 输出向量 $T(bold(v)_1)$ 和 $T(bold(v)_2)$ 组成 $bold(A)$ 的列向量:

#dmath[$ bold(A) = mat(delim: "[", 2, 5; 3, 5; 4, 5), quad c_1 = 1 "和" c_2 = 1 "给出" T(bold(v)_1 + bold(v)_2) = mat(delim: "[", 2, 5; 3, 5; 4, 5) mat(delim: "[", 1; 1) = mat(delim: "[", 7; 8; 9). $]

#subsec[基的变换]

#hei[例 2]　设输入空间 $V = R^2$ 也是输出空间 $W = R^2$, 线性变换 $T(bold(v)) = bold(v)$ 为恒等变换. 读者也许会认为 $T$ 的矩阵为单位矩阵 $bold(I)$, 但这种情形仅在输入基与输出基相同时才发生. 这里将选择不同的基以展示该矩阵是如何构造的.

对于该特殊情形 $T(bold(v)) = bold(v)$, 记 $T$ 的矩阵为 $bold(B)$ 而非 $bold(A)$, 以示区分. 将 $bold(v)_1, bold(v)_2$ 这组基变为另一组基 $bold(w)_1, bold(w)_2$, 其中 $bold(v)_1, bold(v)_2$ 均为 $bold(w)_1$ 和 $bold(w)_2$ 的线性组合.

#dmath[$ "输入基" quad [bold(v)_1 quad bold(v)_2] = mat(delim: "[", 3, 6; 3, 8), quad quad "输出基" quad [bold(w)_1 quad bold(w)_2] = mat(delim: "[", 3, 0; 1, 2), $]

#dmath[$ "基的变换" quad cases(bold(v)_1 = 1 bold(w)_1 + 1 bold(w)_2, bold(v)_2 = 2 bold(w)_1 + 3 bold(w)_2.) $]

请注意! 这里将输入基 $bold(v)_1, bold(v)_2$ 用输出基 $bold(w)_1, bold(w)_2$ 表示. 这是因为按定义, 恒等变换 $T$ 作用于每个输入基向量: $T(bold(v)_1) = bold(v)_1, T(bold(v)_2) = bold(v)_2$, 而输出向量 $bold(v)_1$ 和 $bold(v)_2$ 则可用输出基向量 $bold(w)_1$ 和 $bold(w)_2$ 表示. 这些系数给出基变换矩阵 $bold(B)$ 的第 1 列和第 2 列: $bold(W) bold(B) = bold(V)$, 因此 $bold(B) = bold(W)^(-1) bold(V)$#footnote[译者注: 一些线性代数教材定义的过渡矩阵 $bold(C)$ 满足 $bold(W) = bold(V) bold(C)$, 即 $bold(C) = bold(V)^(-1) bold(W)$, 与这里的不同.].

#eqnumL([基变换矩阵 $bold(B)$], $ [bold(w)_1 quad bold(w)_2] bold(B) = [bold(v)_1 quad bold(v)_2] quad "即" quad mat(delim: "[", 3, 0; 1, 2) mat(delim: "[", 1, 2; 1, 3) = mat(delim: "[", 3, 6; 3, 8) . $, 1)

#yaodian[
  当输入基向量为矩阵 $bold(V)$ 的列向量、输出基向量为矩阵 $bold(W)$ 的列向量时, 恒等变换 $T(bold(v)) = bold(v)$ 的矩阵为 $bold(B) = bold(W)^(-1) bold(V)$.
]

#hei[关键点]　这里给出理解矩阵等式 $bold(B) = bold(W)^(-1) bold(V)$ 的简单方法. 设同一个向量 $bold(u)$ 分别由输入基向量 $bold(v)_i$, $i = 1, 2, dots.c, n$ 和输出基向量 $bold(w)_j$, $j = 1, 2, dots.c, n$ 表示, 有三种写法:

#dmath[$ bold(u) = c_1 bold(v)_1 + c_2 bold(v)_2 + dots.c + c_n bold(v)_n = d_1 bold(w)_1 + d_2 bold(w)_2 + dots.c + d_n bold(w)_n, $]

#pagebreak()