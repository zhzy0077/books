#import "../theme.typ": *

#hei[20.] 判断对错 (在以下两种情形下分别举例说明):

(a) 当 $bold(Q)$ 为正交矩阵时, $bold(Q)^(-1)$ 也是正交矩阵;

(b) 如果 $3 times 2$ 矩阵 $bold(Q)$ 的各列标准正交, 那么 $||bold(Q) bold(x)||$ 总是等于 $||bold(x)||$.

#hei[21.] 设矩阵 $bold(A)$ 和向量 $bold(b)$ 分别为

#dmath[$ bold(A) = mat(delim: "[",1,-2;1,0;1,1;1,3), quad bold(b) = mat(delim: "[",-4;-3;3;0), $]

先求出 $bold(A)$ 的列空间的一组标准正交基, 然后计算 $bold(b)$ 在该列空间上的投影.

#hei[22.] 利用格拉姆-施密特方法, 由向量组

#dmath[$ bold(a) = mat(delim: "[",1;1;2), quad bold(b) = mat(delim: "[",1;-1;0), quad bold(c) = mat(delim: "[",1;0;4) $]

求出正交向量组 $bold(A), bold(B), bold(C)$.

#hei[23.] 求出标准正交向量组 $bold(q)_1, bold(q)_2, bold(q)_3$, 使得它们是矩阵

#dmath[$ bold(A) = mat(delim: "[",1,2,4;0,0,5;0,3,6) $]

的线性无关列 $bold(a), bold(b), bold(c)$ 的线性组合, 再将 $bold(A)$ 写为 $bold(Q) bold(R)$ 分解形式.

#hei[24.] (a) 设 $R^4$ 的子空间 $S$ 由方程

#dmath[$ x_1 + x_2 + x_3 - x_4 = 0 $]

的全部解生成, 求 $S$ 的一组基;

(b) 求出正交补 $S^perp$ 的一组基;

(c) 在 $S$ 和 $S^perp$ 中分别求出 $bold(b)_1$ 和 $bold(b)_2$, 使得 $bold(b)_1 + bold(b)_2 = bold(b) = (1,1,1,1)$.

#hei[25.] 如果矩阵 $bold(A) = mat(delim: "[",a,b;c,d)$ 满足 $a d - b c > 0$, 那么分解式 $bold(A) = bold(Q) bold(R)$ 为

#dmath[$ mat(delim: "[",a,b;c,d) = (mat(delim: "[",a,-c;c,a))/(sqrt(a^2+c^2)) (mat(delim: "[",a^2+c^2, a b + c d; 0, a d - b c))/(sqrt(a^2+c^2)) . $]

当 $a,b,c,d$ 分别为 $2,1,1,1$ 或 $1,1,1,1$ 时, 写出对应的分解式 $bold(A) = bold(Q) bold(R)$. 当矩阵 $bold(A)$ 的两列线性相关时, $bold(R)$ 的哪个元素为零, 从而导致格拉姆-施密特方法失效?

#pagebreak()