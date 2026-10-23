#import "../theme.typ": *

#hei[对称矩阵的消元]  当 $bold(S)^T = bold(S)$ 时, 只需在半个矩阵 (含主对角线) 上开展分析, 使得消元更加快速. 分解后得到的上三角形矩阵 $bold(U)$ 不太可能是对称的, 对称性体现在三重乘积 $bold(S) = bold(L) bold(D) bold(U)$ 上, 此时利用对角矩阵 $bold(D)$ 使得 $bold(L)$ 和 $bold(U)$ 主对角线上的元素都变成 1. 例如,

$ mat(delim: "[", 1,2;2,7) = mat(delim: "[", 1,0;2,1) mat(delim: "[", 1,2;0,3) , quad quad (bold(L) bold(U) "未能体现" bold(S) "的对称性") $

$ mat(delim: "[", 1,2;2,7) = mat(delim: "[", 1,0;2,1) mat(delim: "[", 1,0;0,3) mat(delim: "[", 1,2;0,1) . quad quad #box(align(left)[($bold(L) bold(D) bold(L)^T$ 体现了对称性,\ 现在 $bold(U)$ 是 $bold(L)$ 的转置)]) $

当 $bold(S)$ 是对称矩阵时, 一般形式的 $bold(A) = bold(L) bold(D) bold(U)$ 变成了 $bold(S) = bold(L) bold(D) bold(L)^T$, 最后的 $bold(U)$ (主对角线元素为 1) 是 $bold(L)$ (主对角线元素也为 1) 的转置, 而包含主元的对角矩阵 $bold(D)$ 本身就是对称矩阵.

若 $bold(S) = bold(S)^T$ 不换行就能分解成 $bold(L) bold(D) bold(U)$, 则 $bold(U)$ 恰好是 $bold(L)^T$.

#align(center)[对称矩阵 $bold(S)$ 的对称分解式是 $bold(S) = bold(L) bold(D) bold(L)^T$.]

注意, $bold(L) bold(D) bold(L)^T$ 的转置是 $(bold(L)^T)^T bold(D)^T bold(L)^T$, 化简后仍是 $bold(L) bold(D) bold(L)^T$. 消元法的计算量可以减少一半, 所用乘法次数从 $n^3/3$ 变成 $n^3/6$. 同样, 存储量也可以减少一半, 因为 $bold(U)$ 就是 $bold(L)^T$, 所以只需保存 $bold(L)$ 和 $bold(D)$.

#subsec[置换矩阵]

转置对置换矩阵起着特殊作用. 置换矩阵 $bold(P)$ 的每一行和每一列都只有一个非零元素 “1”, 故 $bold(P)^T$ 也是置换矩阵——不一定与 $bold(P)$ 相同. 任意置换矩阵 $bold(P)_1, bold(P)_2$ 的乘积 $bold(P)_1 bold(P)_2$ 也是置换矩阵.

通过重新排列单位矩阵 $bold(I)$ 的行可以构造出每一个置换矩阵 $bold(P)$. 最简单的置换矩阵是 $bold(P) = bold(I)$ (不换行), 其次是互换 $bold(I)$ 的第 $i$ 行和第 $j$ 行所得换行矩阵 $bold(P)_(i j)$, 而其他置换矩阵需重排更多的行. 对 $bold(I)$ 执行所有可能的换行就能得到所有可能的置换矩阵:

#gainian[置换矩阵][单位矩阵 $bold(I)$ 的行按任意顺序排列所得矩阵称为置换矩阵, 记为 $bold(P)$.]

#ti[例 3][以下是三阶置换矩阵, 共有 6 个 (只写出了非零元素):]

#dmath[$ bold(I) = mat(delim: "[", 1,,;,1,;,,1) , quad bold(P)_21 = mat(delim: "[", ,1,;1,,;,,1) , quad bold(P)_32 bold(P)_21 = mat(delim: "[", ,,1;,1,;,1,) , $]

#dmath[$ bold(P)_31 = mat(delim: "[", ,,1;,1,;1,,) , quad bold(P)_32 = mat(delim: "[", 1,,;,,1;,1,) , quad bold(P)_21 bold(P)_32 = mat(delim: "[", ,,1;1,,;,1,) . $]



#pagebreak()
