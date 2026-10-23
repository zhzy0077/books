#import "../theme.typ": *

用到的乘数分别是 $l_(21) = 4$, $l_(31) = 5$ 和 $l_(32) = 1$. 然后利用主元 $1, -14, -8$ 构造对角矩阵 $bold(D)$, 再将 $bold(U)$ 的每一行分别除以对应的主元得 $bold(L)^T$:

#grid(columns: (auto, 1fr), column-gutter: 18pt,
  align(center, subsec[$bold(S) = bold(S)^T$ 时的对称分解]),
  align(center)[$ bold(S) = bold(L) bold(D) bold(L)^T = mat(delim: "[", 1,0,0;4,1,0;5,1,1) mat(delim: "[", 1,,;,-14,;,, -8) mat(delim: "[", 1,4,5;0,1,1;0,0,1) . $],
)

因为 $bold(S)$ 存在 3 个主元, 因此是可逆矩阵. 它的逆矩阵是 $(bold(L)^T)^(-1) bold(D)^(-1) bold(L)^(-1)$, 且 $bold(S)^(-1)$ 仍然是对称矩阵. 在 $bold(S)^(-1)$ 中数字 14 和 8 要取倒数. $bold(S)$ 的 “行列式” 是全体主元的乘积:

#dmath[$ 1 times (-14) times (-8) = 112. $]

#hei[2.7 C]  设 $bold(A)$ 是 $m times n$ 矩阵, 如下的鞍点矩阵 $bold(S)$ 是一类重要的对称矩阵:

#grid(columns: (auto, 1fr), column-gutter: 18pt,
  align(center, subsec[来自最小二乘法的分块矩阵]),
  align(center)[$ bold(S) = mat(delim: "[", bold(I), bold(A); bold(A)^T, bold(O)) = bold(S)^T $ 是 $m + n$ 阶方阵.],
)

利用分块消元法来计算分块分解 $bold(S) = bold(L) bold(D) bold(L)^T$, 然后检验可逆性:

#dmath[$ bold(S) $ 是可逆矩阵 $<==> bold(A)^T bold(A)$ 是可逆矩阵 $<==>$ 只要 $bold(x) != 0$, 就一定有 $bold(A) bold(x) != 0$.]

解  第一个分块主元是 $bold(I)$. 从第 2 行中减去 $bold(A)^T$ 左乘第 1 行得:

#grid(columns: (auto, 1fr), column-gutter: 18pt,
  align(center, subsec[分块消元]),
  align(center)[$ bold(S) = mat(delim: "[", bold(I), bold(A); bold(A)^T, bold(O)) -> mat(delim: "[", bold(I), bold(A); bold(O), -bold(A)^T bold(A)) = bold(U) . $],
)

分块对角矩阵 $bold(D)$ 包含了分块主元 $bold(I)$ 和 $-bold(A)^T bold(A)$, 而 $bold(L)$ 和 $bold(L)^T$ 分别包含了 $bold(A)^T$ 和 $bold(A)$:

#dingliC[
  #grid(columns: (auto, 1fr), column-gutter: 18pt,
    align(center, subsec[分块分解]),
    align(center)[$ bold(S) = bold(L) bold(D) bold(L)^T = mat(delim: "[", bold(I), bold(O); bold(A)^T, bold(I)) mat(delim: "[", bold(I), bold(O); bold(O), -bold(A)^T bold(A)) mat(delim: "[", bold(I), bold(A); bold(O), bold(I)) . $],
  )
]

显然 $bold(L)$ 可逆, 且主对角线的元素都是 1. $bold(D)$ 的逆矩阵包含了 $(bold(A)^T bold(A))^(-1)$. 第 4.2 节将会回答关于矩阵 $bold(A)^T bold(A)$ 一个关键问题:

#dmath[什么时候 $bold(A)^T bold(A)$ 可逆?]

答案: $bold(A)$ 的各列必须线性无关. 因此当且仅当 $bold(x) = 0$ 才有 $bold(A) bold(x) = 0$. 否则 $bold(A) bold(x) = 0$ 将会导致 $bold(A)^T bold(A) bold(x) = 0$.

#align(center)[#image("../assets/fig-p143-icon.png", width: 3.2%)]

#xiti[习题集 2.7]

习题 1—7 是关于转置矩阵的运算法则的.

#hei[1.] 对如下所示的矩阵 $bold(A)$ 计算 $bold(A)^T$, $bold(A)^(-1)$, $(bold(A)^(-1))^T$ 和 $(bold(A)^T)^(-1)$:



#pagebreak()
