#import "../theme.typ": *

#ti[8.][请问 $bold(D A)$ 和 $bold(E A)$ 的每一行与 $bold(A)$ 的行有何联系? 其中

#align(center, $ bold(D) = mat(3, 0; 0, 5), quad bold(E) = mat(0, 1; 0, 1), quad bold(A) = mat(a, b; c, d) . $)

请问 $bold(A D)$ 与 $bold(A E)$ 的每一列与 $bold(A)$ 的列有何联系?]

#ti[9.][如下所示, $bold(E A)$ 表示将矩阵 $bold(A)$ 的第 1 行加到第 2 行, $(bold(E A)) bold(F)$ 表示将 $bold(E A)$ 的第 1 列加到 2 列:

#align(center, $ bold(E A) = mat(1, 0; 1, 1) mat(a, b; c, d) = mat(a, b; a+c, b+d), $)
#align(center, $ (bold(E A)) bold(F) = (bold(E A)) mat(1, 1; 0, 1) = mat(a, a+b; a+c, a+c+b+d) . $)

(a) 请按照相反的顺序执行上述步骤, 即首先利用 $bold(A F)$ 将矩阵 $bold(A)$ 的第 1 列加到第 2 列, 然后利用 $bold(E (A F))$ 将 $bold(A F)$ 的第 1 行加到第 2 行;\
(b) 将上述结果与 $(bold(E A)) bold(F)$ 进行对比, 这一现象遵守了矩阵乘法的哪一条定律?]

#ti[10.][如下所示, 矩阵 $bold(A), bold(E), bold(F)$ 同第 9 题, $bold(E A)$ 表示将矩阵 $bold(A)$ 的第 1 行加到第 2 行, $bold(F (E A))$ 表示将 $bold(E A)$ 的第 2 行加到 1 行:

#align(center, $ bold(F (E A)) = mat(1, 1; 0, 1) mat(a, b; a+c, b+d) = mat(2a+c, 2b+d; a+c, b+d) . $)

(a) 请按照相反的顺序执行上述步骤, 即首先利用 $bold(F A)$ 将矩阵 $bold(A)$ 的第 2 行加到第 1 行, 然后再将 $bold(F A)$ 的第 1 行加到第 2 行;\
(b) 上述结果中遵守或者没有遵守矩阵乘法的哪一条定律?]

#ti[11.][若首先对矩阵 $bold(A)$ 作一次行变换, 然后作一次列变换, 结果与先作该列变换再作行变换相同, 试分析产生这一现象的原因. (作者对此现象仍感到惊奇.)]

#ti[12.][(三阶方阵) 请选择唯一的矩阵 $bold(B)$ 使得对任意矩阵 $bold(A)$ 分别有

(a) $bold(B A) = 4 bold(A)$;\
(b) $bold(B A) = 4 bold(B)$;\
(c) $bold(B A)$ 的结果是交换 $bold(A)$ 的第 1 行和第 3 行, 第 2 行保持不变;\
(d) $bold(B A)$ 的所有行都与 $bold(A)$ 的第 1 行相同.]

#ti[13.][设对如下矩阵 $bold(A)$ 和两个特定矩阵 $bold(B)$ 和 $bold(C)$ 有 $bold(A B) = bold(B A)$ 且 $bold(A C) = bold(C A)$:

#align(center, $ bold(A) = mat(a, b; c, d), quad bold(B) = mat(1, 0; 0, 0), quad bold(C) = mat(0, 1; 0, 0), $)

请证明 $a = d$ 且 $b = c = 0$, 即 $bold(A)$ 是单位矩阵 $bold(I)$ 的倍数. 能够与 $bold(B)$ 和 $bold(C)$ 以及其他二阶方阵可交换的矩阵只能是 $bold(A) = k bold(I)$.]

#pagebreak()
