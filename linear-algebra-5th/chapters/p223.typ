#import "../theme.typ": *

每个向量用 $bold(A)$ 左乘后均被映射到列空间! 此外, 列空间中每个向量 $bold(b)$ 均在行空间中有且仅有一个向量 $bold(x)_r$ 与之对应. 理由: 如果 $bold(A) bold(x)_r = bold(A) bold(x)_r'$, 那么差 $bold(x)_r - bold(x)_r'$ 属于零空间. 同时这个差也属于包含 $bold(x)_r$ 与 $bold(x)_r'$ 的行空间. 因为零空间与行空间是正交的, 所以此差必为零向量, 故有 $bold(x)_r = bold(x)_r'$.

#figure(image("../assets/fig-p223-43.png", width: 72%), numbering: none, caption: [图 4.3　更新后的图 4.2 展示了 $bold(A)$ 对 $bold(x) = bold(x)_r + bold(x)_n$ 的真实作用: 行空间向量 $bold(x)_r$ 映射到列空间, 零空间向量 $bold(x)_n$ 映射到零向量.])

如果抛开两个零空间不谈, 那么 $bold(A)$ 中隐匿着一个可逆的 $r times r$ 子矩阵. 当矩阵 $bold(A)$ 将 $r$ 维行空间映射到 $r$ 维列空间时, 该子矩阵为可逆矩阵. 在第 7.4 节中, “广义逆”将反转 $bold(A)$ 中可逆子矩阵产生的效果.

#hei[例 4]  每个秩为 $r$ 的矩阵均含有一个可逆的 $r times r$ 子矩阵:

#dmath[$ bold(A) = mat(delim: "[", 3,0,0,0,0; 0,5,0,0,0; 0,0,0,0,0) $]

包含 $2 times 2$ 可逆子矩阵 $mat(delim: "[", 3,0; 0,5)$. 子矩阵之外的 11 个零元素是零空间的起因. 以下矩阵 $bold(B)$ 的秩 $r$ 也是 2:

#dmath[$ bold(B) = mat(delim: "[", 1,2,3,4,5; 1,2,4,5,6; 1,2,4,5,6) $]

在主元行和主元列上包含 $2 times 2$ 可逆子矩阵 $mat(delim: "[", 1,3; 1,4)$.

一旦在 $R^n$ 与 $R^m$ 中选择合适的基, 每个 $m times n$ 矩阵均可对角化, 这就是矩阵的奇异值分解. 在应用中, 这种分解已成为极其重要的方法.

再次强调, 除非是全零行, 否则 $bold(A)$ 的行向量不可能在 $bold(A)$ 的零空间中. 这是因为唯一的同时属于两个正交子空间的向量是零向量.

#align(center)[如果向量 $bold(v)$ 与自身正交, 那么 $bold(v)$ 是零向量.]

#pagebreak()