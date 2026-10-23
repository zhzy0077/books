#import "../theme.typ": *

#align(center)[#image("../assets/fig-p134-icon.png", width: 3.2%)]
#line(length: 100%)
#align(center, subsec[挑 战 题])

#ti[21.][请问哪些可逆矩阵 $bold(A)$ 存在分解式 $bold(A) = bold(L) bold(U)$ (消元法无需换行)? 这是一个很好的问题! 考虑矩阵 $bold(A)$ 左上角所有阶数的子矩阵 $bold(A)_k$:

左上角所有 $k$ 阶子矩阵 $bold(A)_k$ 必须可逆 (阶数 $k = 1,2,dots,n$).

解释这个答案: $bold(A)_k$ 能分解成 \_\_\_\_\_\_ 是因为 $bold(L) bold(U) = mat(bold(L)_k, bold(O); *, *) mat(bold(U)_k, *; bold(O), *)$.]

#ti[22.][分解如下 $6 times 6$ 二阶差分常数对角矩阵 $bold(K)$:

“$-1,2,-1$” 三对角矩阵

$ bold(K) = mat(delim: "[", 2,-1,0,0,0,0;-1,2,-1,0,0,0;0,-1,2,-1,0,0;0,0,-1,2,-1,0;0,0,0,-1,2,-1;0,0,0,0,-1,2) , $

将主元和乘数置于 $bold(K) = bold(L) bold(U)$ 中, $bold(K)$ 可由 #raw("toeplitz([2  -1  0  0  0  0])") 生成. (因为 $bold(K)$ 为三对角形式, 所以 $bold(L)$ 和 $bold(U)$ 的非零元均只分布在两条对角线上.) 请求出计算 $bold(L)^(-1)$ 中位置 $(i,j)$ 元素的公式, 可借助 MATLAB 中的 #raw("inv(L)") 指令或自行寻找一个好的取值模式.]

#ti[23.][对上题中的矩阵 $bold(K)$, 如果直接输出 $bold(K)^(-1)$, 看起来并不那么美好 (各元素为分数的 $6 times 6$ 矩阵). 但是如果输出 $7 bold(K)^(-1)$, 那么矩阵就会非常美观. 请按照下列模式写出 $7 bold(K)^(-1)$:

#sub[#hei[1.] 第 1 行和第 1 列是 $(6,5,4,3,2,1)$;]
#sub[#hei[2.] 在主对角线及其上方, 第 $i$ 行的元素是 $i$ 乘第 1 行的同列元素;]
#sub[#hei[3.] 在主对角线及其下方, 第 $j$ 列的元素是 $j$ 乘第 1 列的同列元素.]

用 $bold(K)$ 左乘 $7 bold(K)^(-1)$ 的积是 $7 bold(I)$. 如下所示是 $n = 3$ 时的 $4 bold(K)^(-1)$:

$ (bold(K))(4 bold(K)^(-1)) = mat(delim: "[", 2,-1,0;-1,2,-1;0,-1,2) mat(delim: "[", 3,2,1;2,4,2;1,2,3) = mat(delim: "[", 4;4;4) , $

其中 $3 times 3$ 矩阵 $bold(K)$ 的行列式是4]



#pagebreak()
