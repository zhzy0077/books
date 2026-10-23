#import "../theme.typ": *

#ti[20.][用初等行变换将以下各矩阵 $bold(A)$ 化为行阶梯形矩阵 $bold(U)$, 并求出一个满足 $bold(A) = bold(L) bold(U)$ 的三角形矩阵 $bold(L)$:]

#align(center)[#grid(columns: (auto, auto), column-gutter: 3em, align: horizon,
  [(a) $bold(A) = mat(delim: "[", 3,4,1,0; 6,5,2,1)$,],
  [(b) $bold(A) = mat(delim: "[", 1,0,1,0; 2,2,0,3; 0,6,5,4) .$],
)]

#ti[21.][求解以下满秩线性方程组, 并将全解写成 $bold(x)_p + bold(x)_n$ 的形式:]

#align(center)[#grid(columns: (auto, auto), column-gutter: 4em, align: horizon,
  [(a) $x + y + z = 4$;],
  [(b) $cases(x + y + z = 4, x - y + z = 4.)$],
)]

#ti[22.][设 $bold(A) bold(x) = bold(b)$ 有无穷多解. 当右侧的 $bold(b)$ 换为 $bold(b)'$ 时, 为什么新的方程组 $bold(A) bold(x) = bold(b)'$ 不可能有唯一解? $bold(A) bold(x) = bold(b)'$ 会无解吗?]

#ti[23.][选取适当的参数 $q$, 使得以下各矩阵的秩分别为 1, 2, 3 (如可行):]

#dmath[$ bold(A) = mat(delim: "[", 6,4,2; -3,-2,-1; 9,6,q), quad quad bold(B) = mat(delim: "[", 3,1,3; q,2,q) . $]

#ti[24.][举出矩阵 $bold(A)$ 的例子, 使得 $bold(A) bold(x) = bold(b)$ 解的个数分别为以下情形:

#sub[(a) 0 或 1, 取决于 $bold(b)$ 的值;]

#sub[(b) $oo$, 无论 $bold(b)$ 为何值;]

#sub[(c) 0 或 $oo$, 取决于 $bold(b)$ 的值;]

#sub[(d) 1, 无论 $bold(b)$ 为何值.]]

#ti[25.][对秩为 $r$ 的 $m times n$ 矩阵 $bold(A)$, 当 $bold(A) bold(x) = bold(b)$ 的解分别为以下情形时, 写出 $r$, $m$ 和 $n$ 之间的大小关系:

#sub[(a) 对于某些 $bold(b)$, 方程组无解;]

#sub[(b) 对于任意 $bold(b)$, 方程组有无穷多解;]

#sub[(c) 对于某些 $bold(b)$, 方程组只有一解, 而对于其余 $bold(b)$, 方程组无解;]

#sub[(d) 对于任意 $bold(b)$, 方程组只有一个解.]]

习题 26—33 是关于高斯-若尔当消元法 (向下消元及向上消元) 与最简行阶梯形矩阵 $bold(R)$ 的.

#ti[26.][对 $bold(U)$ 继续进行消元, 得到 $bold(R)$. 首先将主元行除以各自主元, 使得新主元全部化为 1. 然后向上消元, 使得主元上方元素化为 0, 从而得到 $bold(R)$:]

#align(center)[#grid(columns: (auto, auto), column-gutter: 3em, align: horizon,
  [(a) $bold(U) = mat(delim: "[", 2,4,4; 0,3,6; 0,0,0) ; $],
  [(b) $bold(U) = mat(delim: "[", 2,4,4; 0,3,6; 0,0,5) . $],
)]

#ti[27.][设 $bold(A)$ 为三角形矩阵, $R = "rref"(bold(A))$ 什么时候等于 $bold(I)$?]



#pagebreak()
