#import "../theme.typ": *

#grid(columns: (1fr, auto, 1fr), [],
  align(center)[$ det bold(A) = (det bold(L))(det bold(U)) = 1 dot (d_1 d_2 dots.c d_n) . $],
  align(right)[$(1)$],
)

在第 5.1 节已经学习了这个计算 $det bold(A)$ 的公式. 若进一步考虑换行的情况, 则加入置换矩阵得 $bold(P) bold(A) = bold(L) bold(U)$, 其中置换矩阵 $bold(P)$ 的行列式是 $-1$ 或 $+1$.

#dingliC[
  #grid(columns: (1fr, auto, 1fr), [],
    align(center)[$ (det bold(P))(det bold(A)) = (det bold(L))(det bold(U)) quad "可得" quad det bold(A) = plus.minus(d_1 d_2 dots.c d_n) . $],
    align(right)[$(2)$],
  )
]

#hei[例 1]　经过一次换行可得主元 $4, 2, 1$ 以及重要的负号:

#dmath[$ bold(A) = mat(delim: "[", 0,0,1;0,2,3;4,5,6), quad bold(P) bold(A) = mat(delim: "[", 4,5,6;0,2,3;0,0,1), quad det bold(A) = -(4 times 2 times 1) = -8 . $]

奇数次换行 (本例是一次换行) 意味着 $det bold(P) = -1$.

下一个例题中没有换行, 其中的矩阵是应用了之前学习的 LU 分解的第一个矩阵 (当时是三阶方阵). 值得注意的是相关结论能够直接拓展到 $n$ 阶的情况. 利用主元可以计算行列式, 后续还会学习如何利用行列式计算主元.

#hei[例 2]　以下“$-1, 2, -1$”三对角矩阵 $bold(A)$ 的前几个主元是 $2, 3/2, 4/3$, 然后依次是 $5/4$ 和 $6/5$, 最后一个是 $(n+1)/n$. 对这个 $n$ 阶方阵进行分解能够揭示它的行列式:

#dmath[$ bold(A) = mat(delim: "[", 2,-1,,,;-1,2,-1,,;, -1,2,dots.c,;,,dots.c,dots.c,-1;,,,-1,2) = mat(delim: "[", 1,,,,;-1/2,1,,,;,-2/3,1,,;,,dots.c,dots.c,;,,,-(n-1)/n,1) mat(delim: "[", 2,-1,,,;,3/2,-1,,;,,4/3,-1,;,,,dots.c,dots.c;,,,,(n+1)/n) $]

$bold(U)$ (上式的最后一个矩阵) 的主对角线上是矩阵的主元, 当 $2, 3/2, 4/3$ 以及 $5/4$ 相乘时, 分子、分母可以约分. 因此对应的四阶行列式是 5, 三阶行列式是 4, 归纳可得 $n$ 阶行列式是 $n + 1$:

#dmath[$ "“-1,2,-1”三对角矩阵" quad det bold(A) = 2 dot 3/2 dot 4/3 dot dots.c (n+1)/n = n + 1 . $]

重点: 前几个主元只依赖于原矩阵 $bold(A)$ 左上角对应的子块. 这是所有未换行矩阵都适用的一个性质.

#dmath[前 $k$ 个主元来自 $bold(A)$ 左上角的 $k$ 阶子块 $bold(A)_k$. \
子块 $bold(A)_k$ 的行列式是 $d_1 d_2 dots.c d_k$ (前 $k$ 个主元).]

#pagebreak()