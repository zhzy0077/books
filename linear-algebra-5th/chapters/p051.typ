#import "../theme.typ": *

上述三个向量（线性无关）（线性相关）, 落在一个 \_\_\_\_\_\_, 以它们为列向量构成的矩阵 $W$ 不可逆.

#hei[5.] 习题 4 中的矩阵 $W$ 的三个行向量为（本题写成列向量的形式）

#dmath[$ bold(r)_1 = mat(delim: "[", 1;4;7), quad bold(r)_2 = mat(delim: "[", 2;5;8), quad bold(r)_3 = mat(delim: "[", 3;6;9) . $]

由线性代数知识可知, 这些向量必定也在一个平面内, 即必定存在多个线性组合使得 $y_1 bold(r)_1 + y_2 bold(r)_2 + y_3 bold(r)_3 = 0$. 请写出满足此要求的两个 $bold(y)$.

#hei[6.] 下列矩阵中的数字 $c$ 分别为何值时, 矩阵的列向量组线性相关（存在列向量组的线性组合等于零向量）?

#dmath[$ mat(delim: "[", 1,1,0; 3,2,1; 7,4,c), quad mat(delim: "[", 1,0,c; 1,1,0; 0,1,1), quad mat(delim: "[", c,c,c; 2,1,5; 3,3,6) . $]

当 $c != 0$ 时, 第三个矩阵的列向量组是否始终线性无关?

#hei[7.] 如果由矩阵 $A$ 的列向量 $bold(alpha)_1, bold(alpha)_2, bold(alpha)_3$ 的线性组合可得 $A bold(x) = 0$, 则矩阵 $A$ 的每一行 $bold(r)$ 都满足 $bold(r) dot bold(x) = 0$, 即

#dmath[$ mat(delim: "[", bold(alpha)_1, bold(alpha)_2, bold(alpha)_3) mat(delim: "[", x_1; x_2; x_3) = mat(delim: "[", 0;0;0), quad mat(delim: "[", bold(r)_1 dot bold(x); bold(r)_2 dot bold(x); bold(r)_3 dot bold(x)) = mat(delim: "[", 0;0;0) quad "（逐行计算）." $]

三个行向量 $bold(r)_1, bold(r)_2, bold(r)_3$ 在一个平面内, 试分析这个平面为什么与向量 $bold(x)$ 垂直?

#hei[8.] 考虑一个 $4 times 4$ 差分方程

#dmath[$ A bold(x) = mat(delim: "[", 1,0,0,0; -1,1,0,0; 0,-1,1,0; 0,0,-1,1) mat(delim: "[", x_1; x_2; x_3; x_4) = mat(delim: "[", b_1; b_2; b_3; b_4) = bold(b) . $]

首先求解四个分量 $x_1, x_2, x_3, x_4$, 然后将解写成 $bold(x) = A^(-1) bold(b)$ 的形式以求出逆矩阵.

#hei[9.] 首先写出 $4 times 4$ 循环差分矩阵 $C$, 它的每一行、每一列都有分量 1 和 $-1$, 然后求出 $C bold(x) = 0$ 的全体解 $bold(x) = (x_1, x_2, x_3, x_4)$, 再证明矩阵 $C$ 的四个列向量位于四维空间的一个“三维超平面”内.

#hei[10.] 向前差分矩阵 $Delta$ 是上三角形矩阵:

#dmath[$ Delta bold(z) = mat(delim: "[", -1,1,0; 0,-1,1; 0,0,-1) mat(delim: "[", z_1; z_2; z_3) = mat(delim: "[", z_2 - z_1; z_3 - z_2; 0 - z_3) = mat(delim: "[", b_1; b_2; b_3) = bold(b) . $]

利用 $b_1, b_2, b_3$ 求解 $z_1, z_2, z_3$, 并写出逆矩阵 $Delta^(-1)$.



#pagebreak()
