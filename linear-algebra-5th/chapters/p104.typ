#import "../theme.typ": *

#ti[21.][请计算 $bold(A)^2, bold(A)^3, bold(A)^4$ 以及 $bold(A) bold(v), bold(A)^2 bold(v), bold(A)^3 bold(v), bold(A)^4 bold(v)$, 其中

#dmath[$ bold(A) = mat(delim: "[", 0, 2, 0, 0; 0, 0, 2, 0; 0, 0, 0, 2; 0, 0, 0, 0), quad bold(v) = mat(delim: "[", x; y; z; t) . $]]

#ti[22.][通过试错法找到满足如下条件的非零二阶方阵 $bold(A), bold(B), bold(C), bold(D), bold(E)$:

#dmath[$ bold(A)^2 = -bold(I), quad bold(B) bold(C) = bold(O), quad bold(D) bold(E) = -bold(E) bold(D) (bold(D) bold(E) != bold(O)) . $]]

#ti[23.][(a) 试找到一个非零方阵 $bold(A)$ 使得 $bold(A)^2 = bold(O)$;

(b) 试找到一个方阵 $bold(A)$ 使得 $bold(A)^2 != bold(O)$ 但是 $bold(A)^3 = bold(O)$.]

#ti[24.][分别计算下列方阵的 2 次幂和 3 次幂, 并利用计算结果推测对应方阵的 $n$ 次幂:

#dmath[$ bold(A)_1 = mat(delim: "[", 2, 1; 0, 1), quad bold(A)_2 = mat(delim: "[", 1, 1; 1, 1), quad bold(A)_3 = mat(delim: "[", a, b; 0, 0) . $]]

习题 25—31 练习使用列-行乘法和分块矩阵的乘法.

#ti[25.][使用 $3 times 3$ 矩阵 $bold(A)$ 的列左乘 $bold(I)$ 的行来计算 $bold(A) bold(I)$.]

#ti[26.][使用列左乘行来计算 $bold(A) bold(B)$:

#dmath[$ bold(A) bold(B) = mat(delim: "[", 1, 0; 2, 4; 2, 1) mat(delim: "[", 3, 3, 0; 1, 2, 1) = mat(delim: "[", 1; 2; 2) mat(delim: "[", 3, 3, 0) + #underline[#h(4em)] = #underline[#h(5em)] . $]]

#ti[27.][证明上三角形矩阵的乘积始终是上三角形矩阵 (式中的各个 $*$ 不必相同):

#dmath[$ bold(A) bold(B) = mat(delim: "[", *, *, *; 0, *, *; 0, 0, *) mat(delim: "[", *, *, *; 0, *, *; 0, 0, *) = mat(delim: "[", " ", " ", " "; 0, " ", " "; 0, 0, " ") . $]

利用点积证明 (行左乘列) $quad (bold(A) "的第 2 行") dot (bold(B) "的第 1 列") = 0$. 还有哪些其他的点积为零?

利用整个矩阵证明 (列左乘行) $quad$ 写出 $(bold(A) "的第 2 列")$ 左乘 $(bold(B) "的第 2 行")$ 中的 $*$ 和 0. 类似可写出 $(bold(A) "的第 3 列")$ 左乘 $(bold(B) "的第 3 行")$ 的结果.]

#ti[28.][请对 $2 times 3$ 矩阵 $bold(A)$, $3 times 4$ 矩阵 $bold(B)$ 和 $bold(A) bold(B)$ 进行合理的分块来说明下列四种乘法法则本质上是分块矩阵的乘法:

(1) 用矩阵 $bold(A)$ 左乘 $bold(B)$ 的列, 得到 $bold(A) bold(B)$ 的列;

(2) 用矩阵 $bold(A)$ 的行左乘矩阵 $bold(B)$, 得到 $bold(A) bold(B)$ 的行;

(3) 用矩阵 $bold(A)$ 的行左乘 $bold(B)$ 的列, 得到内积 ($bold(A) bold(B)$ 中的元素);]



#pagebreak()
