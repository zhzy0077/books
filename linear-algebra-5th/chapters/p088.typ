#import "../theme.typ": *

#hei[解]  用 $bold(A)$ 的行左乘 $bold(B)$ 的列就是向量的点积运算, 例如,

#dmath[$ ("第 1 行") dot ("第 1 列") = [3 quad 4] mat(delim: "[", 2; 1) = 10, $]
#dmath[$ ("第 2 行") dot ("第 1 列") = [1 quad 5] mat(delim: "[", 2; 1) = 7, $]

分别为 $bold(A) bold(B)$ 位置 (1,1) 和位置 (2,1) 的元素, 由于需要计算 6 个点积, 每个点积中有 2 个单独的乘法运算, 因此共需 $3 · 2 · 2 = 12$ 次乘法运算. 利用 $bold(A)$ 的列左乘 $bold(B)$ 的行可得相同的 $bold(A) bold(B)$, 一列左乘一行得到一个矩阵:

#dmath[$ bold(A) bold(B) = mat(delim: "[", 3; 1; 2) [2 quad 4] + mat(delim: "[", 4; 5; 0) [1 quad 1] = mat(delim: "[", 6, 12; 2, 4; 4, 8) + mat(delim: "[", 4, 4; 5, 5; 0, 0) . $]

#align(center)[#image("../assets/fig-p088-icon.png", width: 3.2%)]

#xiti[习题集 2.3]

习题 1—15 是关于消元矩阵的.

#hei[1.] 请写出产生以下消元步骤的 $3 times 3$ 矩阵:

(a) $bold(E)_(21)$ 的作用是从第 2 行中减去第 1 行的 5 倍;

(b) $bold(E)_(32)$ 的作用是从第 3 行中减去第 2 行的 $-7$ 倍;

(c) $bold(P)$ 的作用是首先交换第 1 行和第 2 行, 然后交换第 2 行和第 3 行.

#hei[2.] 利用习题 1 中的矩阵, 对 $bold(b) = (1, 0, 0)$ 依次左乘 $bold(E)_(21)$ 和 $bold(E)_(32)$ 得 $bold(E)_(32) bold(E)_(21) bold(b) = #underline[#h(3em)]$. 若先左乘 $bold(E)_(32)$ 再左乘 $bold(E)_(21)$, 则有 $bold(E)_(21) bold(E)_(32) bold(b) = #underline[#h(3em)]$. 当首先左乘 $bold(E)_(32)$ 时, 第 $#underline[#h(2em)]$ 行不会受到来自第 $#underline[#h(2em)]$ 行的影响.

#hei[3.] 请构造三个矩阵 $bold(E)_(21), bold(E)_(31), bold(E)_(32)$ 将如下矩阵 $bold(A)$ 变为上三角形矩阵 $bold(U)$:

#dmath[$ bold(A) = mat(delim: "[", 1, 1, 0; 4, 6, 1; -2, 2, 0) quad text("且") quad bold(E)_(32) bold(E)_(31) bold(E)_(21) bold(A) = bold(U). $]

将上述各消元步骤的矩阵 $bold(E)_(i j)$ 相乘, 求出整体消元的矩阵 $bold(M)$, 即 $bold(M) bold(A) = bold(U)$.

#hei[4.] 在习题 3 的矩阵 $bold(A)$ 中引入第 4 列 $bold(b) = (1, 0, 0)$ 得增广矩阵 $[bold(A) quad bold(b)]$, 请对该矩阵执行上述消元步骤来求解线性方程组 $bold(A) bold(x) = bold(b)$.

#hei[5.] 设矩阵 $bold(A)$ 的元素 $a_(33) = 7$ 且第三个主元是 5, 若将 $a_(33)$ 变成 11, 则第三个主元变成 $#underline[#h(3em)]$; 若将 $a_(33)$ 变成 $#underline[#h(3em)]$, 就没有第三个主元 (主元位置元素为 0).

#hei[6.] 若矩阵 $bold(A)$ 的每一列都是 $(1, 1, 1)$ 的倍数, 则 $bold(A) bold(x)$ 始终是 $(1, 1, 1)$ 的倍数. 请构造一个 $3 times 3$ 矩阵 $bold(A)$ 的例子, 并分析在消元过程中存在多少个主元.



#pagebreak()
