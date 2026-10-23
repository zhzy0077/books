#import "../theme.typ": *
#set par(spacing: 15pt, leading: 13pt)

$bold(Q)_(i j)$ 的逆矩阵为 $bold(Q)_(i j)^T$ (逆时针旋转 $-theta$), 仍为正交矩阵. 与之相比, $bold(E)_(i j)$ 的逆矩阵不是正交矩阵! $bold(L) bold(U)$ 和 $bold(Q) bold(R)$ 形式相似, 但 $bold(L)$ 和 $bold(Q)$ 的性质却不同.

再考虑豪斯霍尔德矩阵, 由于每一次豪斯霍尔德反射变换可消去对角线下的一整列元素, 因此计算速度比利用旋转变换更快. 观察 $bold(A)$ 的第 1 列 $bold(a)_1$ 是如何变成 $bold(R)$ 的第 1 列 $bold(r)_1$ 的:

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 36pt), width: 100%, above: 22pt, below: 24pt)[
  #grid(
    columns: (auto, 1fr, auto),
    column-gutter: 14pt,
    align: (left + horizon, center + horizon, right + bottom),
    [
      #hei[反射矩阵]\
      #v(6pt)
      $bold(H)_1 = bold(I) - 2 bold(u)_1 bold(u)_1^T$
    ],
    [
      #set math.mat(row-gap: 0.6em)
      $bold(H)_1 bold(a)_1 = mat(delim: "[", norm(bold(a)_1); 0; dots.v; 0) quad "或" quad mat(delim: "[", -norm(bold(a)_1); 0; dots.v; 0) quad "均记为" quad bold(r)_1.$
    ],
    [#align(bottom)[$(4)$]],
  )
]

变换后长度不变, 且 $bold(u)_1$ 与 $bold(a)_1 - bold(r)_1$ 具有相同的方向. 利用单位向量 $bold(u)_1$ 中的 $n - 1$ 个元素得到 $bold(r)_1$ 中的 $n - 1$ 个零元. (吉文斯方法中旋转一个角度 $theta$ 只能得到一个零元). 当处理第 $k$ 列时, 单位向量 $bold(u)_k$ 中有 $n - k$ 个待定元素, 以得到 $bold(r)_k$ 中的 $n - k$ 个零. 我们只需要存储相应的 $bold(u)$ 和 $bold(r)$ 就可以得到最后的 $bold(Q)$ 和 $bold(R)$: $bold(H)_i$ 的逆矩阵仍为 $bold(H)_i$, 则

#eqnum($ (bold(H)_(n-1) dots.c bold(H)_2 bold(H)_1) bold(A) = bold(R), quad "即" quad bold(A) = (bold(H)_1 bold(H)_2 dots.c bold(H)_(n-1)) bold(R) = bold(Q) bold(R). $, 5)

以上为 LAPACK 软件在出现于 19 世纪的格拉姆-施密特方法基础上的改进结果. $bold(Q)$ 的确是正交矩阵.

第 11.3 节将介绍分解式 $bold(A) = bold(Q) bold(R)$ 在另一个大规模数值线性代数问题 (特征值问题) 中的应用. 现简要介绍其思想: 将分解式 $bold(Q) bold(R)$ 颠倒, 得到 $bold(A)_1 = bold(R) bold(Q)$, 即 $bold(Q)^(-1) bold(A) bold(Q)$. 由于 $bold(A)_1$ 与 $bold(A)$ 相似, 因此两者特征值相同. 然后将 $bold(A)_1$ 分解为 $bold(Q)_1 bold(R)_1$, 再颠倒分解式得到 $bold(A)_2$. 可以发现 $bold(A)_1, bold(A)_2, bold(A)_3, dots.c$ 中对角线下方的元素的绝对值会变小, 最终特征值可确定出来. 这就是求解 $bold(A) bold(x) = lambda bold(x)$ 的“QR 方法”, 也是数值线性代数的一大成功应用范例.

#v(14pt)
#align(center)[#image("../assets/fig-p544-icon.png", width: 4%)]
#v(4pt)
#line(length: 100%, stroke: 0.5pt)
#v(6pt)
#align(center)[#text(font: ("SimHei",), size: 16pt)[习题集 11.1]]

#v(8pt)
#ti[1.][分别通过行交换和行不交换使下列矩阵的两个主元最大化:

$ bold(A) = mat(delim: "[", 0.001, 0; 1, 1 thin 000). $]

#sub[利用行交换使主元最大化时, 为什么下三角形矩阵 $bold(L)$ 中的元素不超过 1? 构造一个 $3 times 3$ 矩阵 $bold(A)$, 满足所有 $|a_(i j)| <= 1$ 以及 $|l_(i j)| <= 1$, 但是第三个主元为 4.]

#v(12pt)
#ti[2.][试通过消元法计算如下三阶希尔伯特矩阵 $bold(A)$ (可用命令 hilb(3) 生成) 的逆矩阵,]

#pagebreak()