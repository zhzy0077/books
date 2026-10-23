#import "../theme.typ": *

能够得到什么矩阵?

(b) 将相同的消元步骤应用于 $bold(I)$, 能够得到什么矩阵?

(c) 将相同的消元步骤应用于 $bold(L) bold(U)$, 能够得到什么矩阵?

#ti[15.][若矩阵 $bold(A) = bold(L) bold(D) bold(U)$ 且 $bold(A) = bold(L)_1 bold(D)_1 bold(U)_1$, 其中所有因子都可逆, 则 $bold(L) = bold(L)_1$, $bold(D) = bold(D)_1$ 且 $bold(U) = bold(U)_1$, 即 “这三个分解因子是唯一的.”]

推导可得等式 $bold(L)_1^(-1) bold(L) bold(D) = bold(D)_1 bold(U)_1 bold(U)^(-1)$, 请问等式两边是三角形形式还是对角形式?

进一步推导可得 $bold(L) = bold(L)_1$ 且 $bold(U) = bold(U)_1$ (它们对角元素都是 1), 从而 $bold(D) = bold(D)_1$.

#ti[16.][三对角矩阵除主对角线和两条相邻的对角线之外其余元素都为 0, 请将下列三对角矩阵 $bold(A)$ 分解成 $bold(A) = bold(L) bold(U)$ 和 $bold(A) = bold(L) bold(D) bold(L)^T$:]

#align(center)[(a) $bold(A) = mat(delim: "[",1,1,0;1,2,1;0,1,2)$;　(b) $bold(A) = mat(delim: "[",a,a,0;a,a+b,b;0,b,b+c)$. ]

#ti[17.][当 $bold(T)$ 为三对角矩阵时, 其分解因子 $bold(L)$ 和 $bold(U)$ 的非零元均只分布在两条对角线上. 在关于高斯消元法的代码中如何利用 $bold(T)$ 中已知的元素 0? 请对如下三对角矩阵 $bold(T)$ 计算 $bold(L)$ 和 $bold(U)$:]

#eqLd[三对角矩阵][$ bold(T) = mat(delim: "[",1,2,0,0;2,3,1,0;0,1,2,3;0,0,3,4) . $]

#ti[18.][若如下所示的矩阵 $bold(A)$ 和 $bold(B)$ 在 $*$ 标记的位置是非零元素, 试分析哪些位置的元素 0 (已标记成 0) 在分解因子 $bold(L)$ 和 $bold(U)$ 中仍然是 0?]

#dmath[$ bold(A) = mat(delim: "[",*,*,*,*;*,*,*,0;0,*,*,*;0,0,*,*) , quad bold(B) = mat(delim: "[",*,*,*,0;*,*,0,*;*,0,*,*;0,*,*,*) . $]

#ti[19.][假设自下而上进行消元 (并不常见): 首先使用最后一行将最后一列中其余元素化为 0 (主元是 1), 然后使用第 2 行将第 2 个主元上方的元素化为 0. 请对如下矩阵 $bold(A)$ 计算这种非正常顺序的分解式 $bold(A) = bold(U) bold(L)$:]

#eqLd[上三角形矩阵左乘下三角形矩阵][$ bold(A) = mat(delim: "[",5,3,1;3,3,1;1,1,1) . $]

#ti[20.][(简单但很重要) 若矩阵 $bold(A)$ 的主元为 5,9,3 且消元时没有换行, 那么左上角的 $2 times 2$ 子块 $bold(A)_2$ (划去第 3 行和第 3 列后剩下的部分) 的主元是什么?]



#pagebreak()
