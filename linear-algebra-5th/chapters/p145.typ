#import "../theme.typ": *

#hei[10.] 4 阶置换矩阵中有 12 个 “偶” 置换矩阵, 即进行了偶数次换行. 将 4 阶单位矩阵简记成 (1,2,3,4)(数字表示行标), 则置换矩阵 (1,2,3,4) 没有换行, (4,3,2,1) 经过了两次换行, 请写出其余 10 个偶置换矩阵. (只需写出行标数字的排列, 无须写成方阵.)

#hei[11.] 对矩阵

#align(center)[$ bold(A) = mat(0,0,6;1,2,3;0,4,5) , $]

请问什么样的置换矩阵 $bold(P)$ 使得 $bold(P) bold(A)$ 是上三角形矩阵? 什么样的置换矩阵 $bold(P)_1, bold(P)_2$ 使得 $bold(P)_1 bold(A) bold(P)_2$ 是下三角形矩阵? 用 $bold(P)_2$ 右乘矩阵 $bold(A)$ 是交换 $bold(A)$ 的 \_\_\_\_.

#hei[12.] 设 $bold(P)$ 是任意置换矩阵, 请分析为何 $bold(x)$ 与 $bold(y)$ 的点积等于 $bold(P) bold(x)$ 与 $bold(P) bold(y)$ 的点积. 此时, 由 $(bold(P) bold(x))^T (bold(P) bold(y)) = bold(x)^T bold(y)$ 可知对任意置换矩阵 $bold(P)$ 都有 $bold(P)^T bold(P) = bold(I)$. 设 $bold(x) = (1, 2, 3)$, $bold(y) = (1, 4, 2)$, 请选择合适的置换矩阵 $bold(P)$ 来证明 $bold(P) bold(x) dot bold(y)$ 并不一定等于 $bold(x) dot bold(P) bold(y)$.

#hei[13.] (a) 请求出一个 3 阶置换矩阵 $bold(P)$, 使得 $bold(P)^3 = bold(I)$ (但是 $bold(P) != bold(I)$);

(b) 请求出一个 4 阶置换矩阵 $hat(bold(P))$, 使得 $hat(bold(P))^4 != bold(I)$.

#hei[14.] 若 $n$ 阶置换矩阵 $bold(P)$ 中位置 $(1, n)$ 至位置 $(n, 1)$ 的反对角线上元素都是 1, 请描述 $bold(P) bold(A) bold(P)$ 的形式 (与 $bold(A)$ 相比). 注意 $bold(P) = bold(P)^T$.

#hei[15.] 所有换行矩阵 $bold(P)$ 都是对称矩阵: $bold(P)^T = bold(P)$, 则 $bold(P)^T bold(P) = bold(I)$ 变成 $bold(P)^2 = bold(I)$. 但是其他置换矩阵不一定是对称矩阵.

(a) 若左乘 $bold(P)$ 的作用是互换第 1 行与第 4 行, 则左乘 $bold(P)^T$ 的作用是互换第 \_\_\_\_ 行与第 \_\_\_\_ 行. 当 $bold(P)^T = bold(P)$ 时, 换行会成对出现, 但是不会同时发生.

(b) 求出一个 4 阶置换矩阵 $bold(P)$, 使得 $bold(P)^T = bold(P)$, 且左乘 $bold(P)$ 的作用是移动全部 4 行.

习题 16—21 是关于对称矩阵及其分解的.

#hei[16.] 若 $bold(A) = bold(A)^T$, $bold(B) = bold(B)^T$, 请问下列哪些矩阵一定是对称矩阵?

(a) $bold(A)^2 - bold(B)^2$;  (b) $(bold(A) + bold(B))(bold(A) - bold(B))$;  (c) $bold(A) bold(B) bold(A)$;  (d) $bold(A) bold(B) bold(A) bold(B)$.

#hei[17.] 请分别依照下列特性求出一个二阶对称矩阵 $bold(S)$:

(a) $bold(S)$ 不可逆;

(b) $bold(S)$ 是可逆矩阵但不能直接分解成 $bold(L) bold(U)$ (即必须换行后才能分解);

(c) $bold(S)$ 能够分解成 $bold(L) bold(D) bold(L)^T$ 但是不能分解成 $bold(L) bold(L)^T$ (因为 $bold(D)$ 中元素有负数).

#hei[18.] (a) 若 $bold(S) = bold(S)^T$ 是 5 阶对称矩阵, 则在 $bold(S)$ 中可以独立选择多少个元素?

(b) 5 阶方阵 $bold(L) bold(D) bold(L)^T$ 中可独立选择的元素个数与 (a) 中相同, 在 $bold(L)$ 与 $bold(D)$ 中各可以独立选择多少个元素?

(c) 若 $bold(A)$ 是反称矩阵, 即 $bold(A)^T = -bold(A)$, 则在 $bold(A)$ 中可以独立选择多少个元素?

#hei[19.] 设 $bold(A)$ 是 $m times n$ 矩阵, $bold(S)$ 是 $m$ 阶对称矩阵.

(a) 请利用转置来证明 $bold(A)^T bold(S) bold(A)$ 的对称性, 并描述这个矩阵的形状;

(b) 证明 $bold(A)^T bold(A)$ 主对角线上的元素都是非负值.



#pagebreak()
