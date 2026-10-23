#import "../theme.typ": *

一般的规律是 "当 $bold(B)$ 可逆时, 线性无关的 $bold(w)_i$ 生成线性无关的 $bold(v)_j$", 并且如果这些向量在 $R^3$ 中, 它们不只线性无关——它们还是 $R^3$ 的一组基. 因此 "当基变换矩阵 (第 8.2 节) $bold(B)$ 可逆时, 基 $bold(w)_i$ 生成基 $bold(v)_j$."

#hei[3.4 C]  (重要例子) 设 $bold(v)_1, bold(v)_2, ..., bold(v)_n$ 为 $R^n$ 的一组基, 且 $n times n$ 矩阵 $bold(A)$ 可逆. 证明 $bold(A) bold(v)_1, bold(A) bold(v)_2, ..., bold(A) bold(v)_n$ 也是 $R^n$ 的一组基.

#hei[解]  用矩阵语言分析: 以基向量 $bold(v)_1, bold(v)_2, ..., bold(v)_n$ 为列组成一个可逆 (!) 矩阵 $bold(V)$, 那么 $bold(A) bold(v)_1, bold(A) bold(v)_2, ..., bold(A) bold(v)_n$ 就是 $bold(A) bold(V)$ 的各列. 由于 $bold(A)$ 可逆, 则 $bold(A) bold(V)$ 也可逆, 且 $bold(A) bold(V)$ 的各列构成一组基.

用向量语言分析: 设

#dmath[$ c_1 bold(A) bold(v)_1 + c_2 bold(A) bold(v)_2 + ... + c_n bold(A) bold(v)_n = 0. $]

令 $bold(v) = c_1 bold(v)_1 + c_2 bold(v)_2 + ... + c_n bold(v)_n$, 上式化为 $bold(A) bold(v) = 0$. 再用 $bold(A)^(-1)$ 左乘, 得到 $bold(v) = 0$. 根据 $bold(v)_i$ 线性无关, 可知所有系数 $c_i = 0$. 这就证明了 $bold(A) bold(v)_i$ 线性无关.

为了证明 $bold(A) bold(v)_i$ 生成了 $R^n$, 下面说明对于 $R^n$ 中任意向量 $bold(b)$, 关于 $c_i$ 的方程

#dmath[$ c_1 bold(A) bold(v)_1 + c_2 bold(A) bold(v)_2 + ... + c_n bold(A) bold(v)_n = bold(b) $]

均有解, 这等价于

#dmath[$ c_1 bold(v)_1 + c_2 bold(v)_2 + ... + c_n bold(v)_n = bold(A)^(-1) bold(b) $]

有解. 既然 $bold(v)_i$ 是一组基, 因而该方程必然可解.

#xiti[习题集 3.4]

习题 1—10 是关于线性无关和线性相关的.

#ti[1.][证明以下 $bold(v)_1, bold(v)_2, bold(v)_3$ 线性无关, 但 $bold(v)_1, bold(v)_2, bold(v)_3, bold(v)_4$ 线性相关:]

#dmath[$bold(v)_1 = mat(delim: "[", 1;0;0), quad bold(v)_2 = mat(delim: "[", 1;1;0), quad bold(v)_3 = mat(delim: "[", 1;1;1), quad bold(v)_4 = mat(delim: "[", 2;3;4).$]

求解 $c_1 bold(v)_1 + c_2 bold(v)_2 + c_3 bold(v)_3 + c_4 bold(v)_4 = 0$ 或 $bold(A) bold(x) = 0$, 其中 $bold(v)_i$ 是矩阵 $bold(A)$ 的列.

#ti[2.][(推荐) 求出以下向量中线性无关向量可能的最大个数:]

#dmath[$bold(v)_1 = mat(delim: "[", 1;-1;0;0), quad bold(v)_2 = mat(delim: "[", 1;0;-1;0), quad bold(v)_3 = mat(delim: "[", 1;0;0;-1),$]
#dmath[$bold(v)_4 = mat(delim: "[", 0;1;-1;0), quad bold(v)_5 = mat(delim: "[", 0;1;0;-1), quad bold(v)_6 = mat(delim: "[", 0;0;1;-1).$]



#pagebreak()
