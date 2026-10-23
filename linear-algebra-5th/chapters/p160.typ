#import "../theme.typ": *

#ti[24.][$bold(A) bold(B)$ 的列向量是 $bold(A)$ 各列向量的线性组合, 意即: $bold(A) bold(B)$ 的列空间含于 (很可能等于) $bold(A)$ 的列空间. 举出一个 $bold(A)$ 的列空间与 $bold(A) bold(B)$ 的列空间不等的例子.]

#ti[25.][设 $bold(A) bold(x) = bold(b)$ 与 $bold(A) bold(y) = bold(b)^*$ 均可解, 则 $bold(A) bold(z) = bold(b) + bold(b)^*$ 也是可解的. 这里的 $bold(z)$ 是什么? 前述结论等价于: 若 $bold(b)$ 与 $bold(b)^*$ 均在列空间 $bold(C) (bold(A))$ 中, 则 $bold(b) + bold(b)^*$ 也在 $bold(C) (bold(A))$ 中.]

#ti[26.][若 $bold(A)$ 为任意的 $5 times 5$ 可逆矩阵, 则 $bold(A)$ 的列空间为 \_\_\_\_. 为什么?]

#ti[27.][判断正误 (如果错误, 请举反例):

#sub[(a) 不在列空间 $bold(C) (bold(A))$ 中的向量 $bold(b)$ 构成子空间;]
#sub[(b) 若 $bold(C) (bold(A))$ 仅含零向量, 则 $bold(A)$ 为零矩阵;]
#sub[(c) $2 bold(A)$ 的列空间等于 $bold(A)$ 的列空间;]
#sub[(d) $bold(A) - bold(I)$ 的列空间等于 $bold(A)$ 的列空间.]]

#ti[28.][构造一个 $3 times 3$ 矩阵, 使得其列空间包含 $(1,1,0)$ 与 $(1,0,1)$, 但不包含 $(1,1,1)$. 构造一个 $3 times 3$ 矩阵, 使得其列空间仅为一条直线.]

#ti[29.][若对于每个 $bold(b)$, $9 times 12$ 线性方程组 $bold(A) bold(x) = bold(b)$ 均是可解的, 那么 $bold(C) (bold(A)) =$ \_\_\_\_.]

#xiti[挑 战 题]

#ti[30.][设 $S$ 与 $T$ 是向量空间 $V$ 的两个子空间.

#sub[(a) 定义: 和 $S + T$ 为全部向量求和 $bold(s) + bold(t)$ 构成的集合, 其中 $bold(s)$ 与 $bold(t)$ 分别属于 $S$ 与 $T$. 证明 $S + T$ 满足向量空间 (关于加法与数乘) 的必备条件.]

#sub[(b) 若 $S$ 与 $T$ 是 $R^m$ 中直线, 则 $S + T$ 与 $S union T$ 的差异何在? 并集包括来自 $S$ 或 $T$ 或同时来自这两者的所有向量. 验证: $S union T$ 生成 $S + T$. (第 3.5 节将重提 “生成” 这个词.)]]

#ti[31.][若 $S$ 与 $T$ 分别是 $bold(A)$ 与 $bold(B)$ 的列空间, 则 $S + T$ 为哪个矩阵 $bold(M)$ 的列空间? 这里设 $bold(A)$ 与 $bold(B)$ 以及 $bold(M)$ 的列全都在 $R^m$ 中. ($bold(M)$ 并非一定是 $bold(A) + bold(B)$.)]

#ti[32.][证明矩阵 $bold(A)$ 与 $[bold(A) quad bold(A) bold(B)]$ (额外多了几列) 具有相同的列空间. 再找出一个方阵 $bold(A)$, 使得 $bold(C) (bold(A)^2)$ 含于 $bold(C) (bold(A))$. 关键点:]

#align(center, dingli[当 $n times n$ 矩阵 $bold(A)$ 恰为 \_\_\_\_ 矩阵时, 其列空间 $bold(C) (bold(A)) = R^n$.])



#pagebreak()
