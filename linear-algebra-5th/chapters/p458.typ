#import "../theme.typ": *

#hei[27.]　每个可逆线性变换 $T$ 都可以用 $I$ 作为自身的矩阵: 选择任意输入的基 $bold(v)_1, bold(v)_2, dots.c, bold(v)_n$, 且选择 $bold(w)_i = T(bold(v)_i)$ 作为输出基. 请问 $T$ 为什么必须可逆 (才有上述结论成立)?

#hei[28.]　利用基向量 $bold(v)_1 = bold(w)_1$ 与 $bold(v)_2 = bold(w)_2$ (输入基与输出基相同) 来求解下列变换 $T$ 的标准矩阵:

#sub[(a) $T(bold(v)_1) = bold(0)$ 与 $T(bold(v)_2) = 3 bold(v)_1$;]

#sub[(b) $T(bold(v)_1) = bold(v)_1$ 与 $T(bold(v)_1 + bold(v)_2) = bold(v)_1$.]

#hei[29.]　设变换 $T$ 是将 $x y$ 平面关于 $x$ 轴反射, 而变换 $S$ 是关于 $y$ 轴反射. 若 $bold(v) = (x, y)$, 则 $S(T(bold(v)))$ 的结果是什么? 请对乘积 $S T$ 进行简要的描述.

#hei[30.]　设变换 $T$ 是关于直线 $y = x$ 反射, 而变换 $S$ 是关于 $y$ 轴反射. 若 $bold(v) = (2, 1)$, 则 $T(bold(v)) = (1, 2)$. 请求解 $S(T(bold(v)))$ 与 $T(S(bold(v)))$. 通常 $S T != T S$.

#hei[31.]　两个反射变换的乘积是旋转变换. 请将下列反射矩阵相乘来求解旋转角:

#dmath[$ mat(delim: "[", cos 2 theta, sin 2 theta; sin 2 theta, -cos 2 theta), quad quad mat(delim: "[", cos 2 alpha, sin 2 alpha; sin 2 alpha, -cos 2 alpha). $]

#hei[32.]　设 $bold(A)$ 是一个秩为 $r = 2$ 的 $3 times 4$ 矩阵, 且 $T(bold(v)) = bold(A) bold(v)$. 请从 $bold(A)$ 的行空间中选择 $bold(v)_1, bold(v)_2$, 从零空间中选择 $bold(v)_3, bold(v)_4$ 作为输入基向量, 从列空间中选择 $bold(w)_1 = bold(A) bold(v)_1$, $bold(w)_2 = bold(A) bold(v)_2$ 以及 $bold(A)^T$ 零空间中的 $bold(w)_3$ 作为输出基向量. 使用这些特殊的基, 请问变换 $T$ 的矩阵为什么特殊矩阵?

#hei[33.]　在范例 8.2 A 中, 二阶方阵空间 $M$ 的基为 $bold(v)_1, bold(v)_2, bold(v)_3, bold(v)_4$. 设变换 $T$ 是用矩阵 $mat(delim: "[", a, b; c, d)$ 左乘 $M$ 中的每个矩阵. 请问当输出基也为 $bold(v)_1, bold(v)_2, bold(v)_3, bold(v)_4$ 时, 什么样的 4 阶方阵 $bold(A)$ 能够表示矩阵空间 $M$ 中的这个变换?

#hei[34.]　判断正误: 对线性变换 $T$, 若已知 $R^n$ 中 $n$ 个相异非零向量 $bold(v)_i$ 的输出向量 $T(bold(v)_i)$, $i = 1, 2, dots.c, n$, 则能求出 $R^n$ 中每个向量 $bold(v)$ 的输出向量 $T(bold(v))$.

#pagebreak()