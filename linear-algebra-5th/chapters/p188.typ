#import "../theme.typ": *

#hei[28.] 对于 $bold(U) bold(x) = 0$ 和 $bold(U) bold(x) = bold(c)$ 分别应用高斯-若尔当消元法, 得到 $bold(R) bold(x) = 0$ 和 $bold(R) bold(x) = bold(d)$:

#dmath[$ [bold(U) quad 0] = mat(delim: "[", 1,2,3,0; 0,0,4,0), quad [bold(U) quad bold(c)] = mat(delim: "[", 1,2,3,5; 0,0,4,8) . $]

#hei[解]  $bold(R) bold(x) = 0$ 得到零空间解 $bold(x)_n$ (令自由变量 $x_2$ 为 1). 解 $bold(R) bold(x) = bold(d)$ 得到特解 $bold(x)_p$ (令自由变量 $x_2$ 为 0).

#hei[29.] 利用高斯-若尔当消元法将以下增广矩阵对应方程组分别化为 $bold(R) bold(x) = 0$ 和 $bold(R) bold(x) = bold(d)$:

#dmath[$ [bold(U) quad 0] = mat(delim: "[", 3,0,6,0; 0,0,2,0; 0,0,0,0), quad [bold(U) quad bold(c)] = mat(delim: "[", 3,0,6,9; 0,0,2,4; 0,0,0,5) . $]

解 $bold(U) bold(x) = 0$ 或 $bold(R) bold(x) = 0$ 得到 $bold(x)_n$ (令自由变量为 1). $bold(R) bold(x) = bold(d)$ 的解是什么?

#hei[30.] 利用高斯-若尔当消元法将以下方程组化为 $bold(U) bold(x) = bold(c)$ (向下消元) 以及 $bold(R) bold(x) = bold(d)$ (向上消元):

#dmath[$ bold(A) bold(x) = mat(delim: "[", 1,0,2,3; 1,3,2,0; 2,0,4,9) mat(delim: "[", x_1; x_2; x_3; x_4) = mat(delim: "[", 2; 5; 10) = bold(b) . $]

求出特解 $bold(x)_p$ 和全部齐次解 $bold(x)_n$.

#hei[31.] 试求出满足以下给定条件的矩阵 $bold(A)$ 与 $bold(B)$, 若不存在, 请给出原因:

#sub[(a) $bold(A) bold(x) = mat(delim: "[", 1; 2; 3)$ 的唯一解是 $bold(x) = mat(delim: "[", 0; 1)$;]
#sub[(b) $bold(B) bold(x) = mat(delim: "[", 0; 1)$ 的唯一解是 $bold(x) = mat(delim: "[", 1; 2; 3)$.]
#hei[32.] 求出 $bold(A)$ 的 LU 分解以及 $bold(A) bold(x) = bold(b)$ 的全解:

#dmath[$ bold(A) = mat(delim: "[", 1,3,1; 1,2,3; 2,4,6; 1,1,5), quad bold(b) = mat(delim: "[", 1; 3; 6; 5) quad "或" quad bold(b) = mat(delim: "[", 1; 0; 0; 0) . $]

#hei[33.] 设 $bold(A) bold(x) = mat(delim: "[", 1; 3)$ 的全解为 $bold(x) = mat(delim: "[", 1; 0) + c mat(delim: "[", 0; 1)$, 求出 $bold(A)$.



#pagebreak()
