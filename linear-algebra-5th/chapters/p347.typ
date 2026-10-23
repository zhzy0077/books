#import "../theme.typ": *

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #grid(columns: (auto, 1fr),
    align(horizon)[#hei[秩 1 矩阵之和]],
    align(center)[$ bold(A) = bold(X) bold(Lambda) bold(X)^(-1) = lambda_1 bold(x)_1 bold(y)_1^T + lambda_2 bold(x)_2 bold(y)_2^T + dots.c + lambda_n bold(x)_n bold(y)_n^T . $],
  )
]

#ti[36.][$n$ 阶方阵 $bold(A) = "eye"(n) + "ones"(n)$ 的逆矩阵为 $bold(A)^(-1) = "eye"(n) + C * "ones"(n)$. 计算 $bold(A) bold(A)^(-1)$, 从而求出数值 $C$ (依赖于阶数 $n$).]

#ti[37.][设 $bold(A)_1$ 和 $bold(A)_2$ 均为 $n times n$ 可逆矩阵. 什么矩阵 $bold(B)$ 满足 $bold(A)_2 bold(A)_1 = bold(B)(bold(A)_1 bold(A)_2) bold(B)^(-1)$? 此时 $bold(A)_2 bold(A)_1$ 相似于 $bold(A)_1 bold(A)_2$: 两者有相同的特征值.]

#ti[38.][$n$ 阶方阵 $bold(A)$ 何时相似于它的特征值矩阵 $bold(Lambda)$?

#sub[$bold(A)$ 和 $bold(Lambda)$ 总有相同的特征值, 但相似关系要求满足 $bold(A) = bold(B) bold(Lambda) bold(B)^(-1)$ 的矩阵 $bold(B)$ 存在. 那么 $bold(B)$ 是 \_\_\_\_ 矩阵, 且 $bold(A)$ 必有 $n$ 个线性无关的 \_\_\_\_.]]

#ti[39.][(Pavel Grinfeld 提供) 不写下任何计算过程, 求出以下矩阵 $bold(A)$ 的特征值, 进而求出 $bold(A)$ 的 2017 次幂 $bold(A)^(2017)$:

#dmath[$ bold(A) = mat(delim: "[", 110, 55, -164; 42, 21, -62; 88, 44, -131) . $]]

#subsec[补充材料: $bold(A) bold(B)$ 与 $bold(B) bold(A)$ 的特征值]

如果 $bold(A)$ 是 $m times n$ 矩阵, $bold(B)$ 是 $n times m$ 矩阵, 那么 $bold(A) bold(B)$ 与 $bold(B) bold(A)$ 有相同的非零特征值.

#h(1.5em) 证　考虑以下关于两个方阵的恒等式 (容易验证):

#dmath[$ mat(delim: "[", bold(I), -bold(A); bold(O), bold(I)) mat(delim: "[", bold(A) bold(B), bold(O); bold(B), bold(O)) mat(delim: "[", bold(I), bold(A); bold(O), bold(I)) = mat(delim: "[", bold(O), bold(O); bold(B), bold(B) bold(A)) quad mat(delim: "[", m times m, m times n; n times m, n times n) , $]

其中, 左边第一个和第三个矩阵互逆, 分别记为 $bold(D)^(-1)$ 与 $bold(D)$; 左边第二个矩阵、右边的矩阵分别记为 $bold(E)$ 和 $bold(F)$; 恒等式两边各分块矩阵的大小可用最右边的 “尺寸矩阵” 表示.

由等式 $bold(D)^(-1) bold(E) bold(D) = bold(F)$ 可知 $bold(F)$ 相似于 $bold(E)$——它们有相同的 $m + n$ 个特征值:

#dmath[$ bold(E) = mat(delim: "[", bold(A) bold(B), bold(O); bold(B), bold(O)) quad "包括" bold(A) bold(B) "的" m "个特征值, 外加" n "个零特征值;" $]

#dmath[$ bold(F) = mat(delim: "[", bold(O), bold(O); bold(B), bold(B) bold(A)) quad "包括" bold(B) bold(A) "的" n "个特征值, 外加" m "个零特征值," $]

因此, 除了 $|n - m|$ 个零之外, $bold(A) bold(B)$ 和 $bold(B) bold(A)$ 有相同的特征值.

例如, 当 $bold(A) = mat(delim: "[", 1, 1)$, $bold(B) = bold(A)^T$ 时,

#dmath[$ bold(A)^T bold(A) = mat(delim: "[", 1, 1; 1, 1) quad ("注意," lambda = 2 "和" 0), quad "而" quad bold(A) bold(A)^T = mat(delim: "[", 2) . $]

#pagebreak()