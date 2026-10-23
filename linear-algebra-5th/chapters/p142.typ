#import "../theme.typ": *

#v(6pt)
#grid(
  columns: (1fr, auto),
  align: (right + horizon, right + horizon),
  [#line(length: 100%, stroke: 0.8pt)],
  barHead[■ 要点回顾],
)

#v(6pt)
#enum(numbering: "1.", tight: false,
  [转置将 $bold(A)$ 的行变成 $bold(A)^T$ 的列, 因此 $bold(A)^T (i, j) = bold(A) (j, i)$.],
  [$bold(A) bold(B)$ 的转置是 $bold(B)^T bold(A)^T$. $bold(A)^(-1)$ 的转置是 $bold(A)^T$ 的逆矩阵.],
  [向量 $bold(x), bold(y)$ 的点积是 $bold(x) dot bold(y) = bold(x)^T bold(y)$, 而 $(bold(A) bold(x))^T bold(y)$ 等于点积 $bold(x)^T (bold(A)^T bold(y))$.],
  [当 $bold(S)$ 是对称矩阵时 ($bold(S)^T = bold(S)$), 它的 $bold(L) bold(D) bold(U)$ 分解是对称的: $bold(S) = bold(L) bold(D) bold(L)^T$.],
  [置换矩阵 $bold(P)$ 的每一行、每一列都只有一个非零元素 1, 且 $bold(P)^T = bold(P)^(-1)$.],
  [$n$ 阶置换矩阵共有 $n!$ 个, 其中一半是偶置换矩阵, 一半是奇置换矩阵.],
  [若 $bold(A)$ 为可逆矩阵, 则存在置换矩阵 $bold(P)$ 将行重新排列以得到分解式 $bold(P) bold(A) = bold(L) bold(U)$.],
)

#v(16pt)
#grid(
  columns: (1fr, auto),
  align: (right + horizon, right + horizon),
  [#line(length: 100%, stroke: 0.8pt)],
  barHead[■ 范例解析],
)

#v(6pt)
#hei[2.7 A]  利用如下所示的 $bold(P)$ 对 $bold(S)$ 换行可破坏其对称性:

#dmath[$ bold(P) = mat(delim: "[", 0,1,0;0,0,1;1,0,0) , quad bold(S) = mat(delim: "[", 1,4,5;4,2,6;5,6,3) , quad bold(P) bold(S) = mat(delim: "[", 4,2,6;5,6,3;1,4,5) . $]

请求出置换矩阵 $bold(Q)$, 将其应用于 $bold(P) bold(S)$ 的列使得 $bold(P) bold(S) bold(Q)$ 恢复对称性, 其中数字 1,2,3 应回到主对角线上 (不一定按照原次序). 说明 $bold(Q) = bold(P)^T$ 使得 $bold(P) bold(S) bold(P)^T$ 能保持对称性.

解  为恢复对称性, 可将 “2” 换回到主对角线上, 需互换 $bold(P) bold(S)$ 的第 2 列与第 1 列; 再互换第 3 列 (包含 “3”) 与第 2 列, 此时 “1” 位于位置 (3,3). 施行上述列交换的置换矩阵是如下 $bold(Q)$:

#dmath[$ bold(P) bold(S) = mat(delim: "[", 4,2,6;5,6,3;1,4,5) , quad bold(Q) = mat(delim: "[", 0,0,1;1,0,0;0,1,0) , quad bold(P) bold(S) bold(Q) = mat(delim: "[", 2,6,4;6,3,5;4,5,1) quad "是对称矩阵" . $]

上述矩阵 $bold(Q)$ 恰好是 $bold(P)^T$, 这一选择始终可以恢复对称性, 因为 $bold(P) bold(S) bold(P)^T$ 一定是对称矩阵. (它的转置仍然是 $bold(P) bold(S) bold(P)^T$.) 矩阵 $bold(Q)$ 也是 $bold(P)^(-1)$, 因为每一个置换矩阵的逆矩阵都是自身的转置.

  若 $bold(D)$ 是对角矩阵, 则由类似的分析可知 $bold(P) bold(D) bold(P)^T$ 也是对角矩阵. 当 $bold(P)$ 互换第 1 行和第 3 行时, 右边的 $bold(P)^T$ 互换第 1 列和第 3 列, 这样位置 (1,1) 的元素先交换到位置 (3,1) 然后再交换到位置 (3,3).

#hei[2.7 B]  请求出上例中矩阵 $bold(S)$ 的对称分解式 $bold(S) = bold(L) bold(D) bold(L)^T$.

解  为将 $bold(S)$ 分解成 $bold(L) bold(D) bold(L)^T$, 首先使用消元法得到 $bold(U)$:

#dmath[$ bold(S) = mat(delim: "[", 1,4,5;4,2,6;5,6,3) -> mat(delim: "[", 1,4,5;0,-14,-14;0,-14,-22) -> mat(delim: "[", 1,4,5;0,-14,-14;0,0,-8) = bold(U) , $]



#pagebreak()
