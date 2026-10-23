#import "../theme.typ": *

#hei[2.] 请分别对下列 “置换矩阵” $bold(P)_1, bold(P)_2$ 用试错法计算逆矩阵 (用数字 1 和 0 的排列):

#dmath[$ bold(P)_1 = mat(delim: "[", 0,0,1;0,1,0;1,0,0) , quad bold(P)_2 = mat(delim: "[", 0,1,0;0,0,1;1,0,0) . $]

#hei[3.] 求解下列线性方程组来计算系数矩阵逆矩阵的第 1 列 $(x,y)$ 和第 2 列 $(t,z)$:

#dmath[$ mat(delim: "[", 10,20;20,50) mat(delim: "[", x;y) = mat(delim: "[", 1;0) , quad mat(delim: "[", 10,20;20,50) mat(delim: "[", t;z) = mat(delim: "[", 0;1) . $]

#hei[4.] 试通过求解 $bold(A) bold(A)^(-1) = bold(I)$ 得到 $bold(A)^(-1)$ 的第 1 列来证明矩阵 $bold(A) = mat(delim: "[", 1,2;3,6)$ 是不可逆矩阵:

#dmath[$ mat(delim: "[", 1,2;3,6) mat(delim: "[", x;y) = mat(delim: "[", 1;0) . $]

是否存在另外的矩阵 $bold(A)$, 使得 $bold(A)^(-1)$ 的第 1 列有解而第 2 列无解?

#hei[5.] 请求出一个上三角形矩阵 $bold(U)$ (不是对角矩阵) 使得 $bold(U)^2 = bold(I)$, 从而有 $bold(U) = bold(U)^(-1)$.

#hei[6.] (a) 若 $bold(A)$ 为可逆矩阵且 $bold(A) bold(B) = bold(A) bold(C)$, 试快速证明 $bold(B) = bold(C)$;

#hei[(b)] 若 $bold(A) = mat(delim: "[", 1,1;1,1)$, 试求出两个不同的矩阵 $bold(B), bold(C)$ 使得 $bold(A) bold(B) = bold(A) bold(C)$.

#hei[7.] (重要) 若矩阵 $bold(A)$ 的第 1 行与第 2 行之和为第 3 行, 请证明 $bold(A)$ 不可逆:

(a) 利用前两个方程相加来分析为何 $bold(A) bold(x) = (0,0,1)$ 无解;

(b) 常数项向量 $(b_1,b_2,b_3)$ 如何取值可使得 $bold(A) bold(x) = bold(b)$ 有解?

(c) 在消元过程中, 第 3 个方程会如何变化?

#hei[8.] 若矩阵 $bold(A)$ 的第 1 列与第 2 列之和为第 3 列, 请证明 $bold(A)$ 不可逆:

(a) 设 $bold(A)$ 为三阶方阵, 请求出 $bold(A) bold(x) = 0$ 的非零解 $bold(x)$;

(b) 消元过程中始终有第 1 列与第 2 列之和为第 3 列, 试分析为何没有第 3 个主元.

#hei[9.] 设 $bold(A)$ 为可逆矩阵, 交换 $bold(A)$ 的前两行得到矩阵 $bold(B)$. 请问 $bold(B)$ 是否可逆? 若 $bold(B)$ 可逆, 如何从 $bold(A)^(-1)$ 来求出 $bold(B)^(-1)$?

#hei[10.] 请计算下列矩阵的逆矩阵 (不限方法):

#dmath[$ bold(A) = mat(delim: "[", 0,0,0,2;0,0,3,0;0,4,0,0;5,0,0,0) , quad bold(B) = mat(delim: "[", 3,2,0,0;4,3,0,0;0,0,6,5;0,0,7,6) . $]

#hei[11.] (a) 请举例说明存在可逆矩阵 $bold(A)$ 和 $bold(B)$ 使得 $bold(A) + bold(B)$ 不可逆;



#pagebreak()
