#import "../theme.typ": *

#chapterHead("assets/fig-p219-chapter.png")[正交性]

#secBracket[4.1  四个子空间的正交性]

#v(8pt)
#yaodian[
  #set enum(numbering: "1.", tight: false)
  1. 正交向量 $bold(v), bold(w)$ 满足 $bold(v)^T bold(w) = 0$, 进而有 $norm(bold(v))^2 + norm(bold(w))^2 = norm(bold(v) + bold(w))^2 = norm(bold(v) - bold(w))^2$.
  2. 子空间 $V$ 与 $W$ 正交是指对于 $V$ 中任意向量 $bold(v)$ 和 $W$ 中任意向量 $bold(w)$, 总有 $bold(v)^T bold(w) = 0$.
  3. $bold(A)$ 的行空间与零空间正交, 列空间与左零空间 $N(bold(A)^T)$ 正交.
  4. 对于秩为 $r$ 的 $m times n$ 矩阵 $bold(A)$, 上述第一对子空间维数之和为 $r + (n - r) = n$, 第二对子空间维数之和为 $r + (m - r) = m$.
  5. 上述行空间与零空间互为正交补, 即 $R^n$ 中任意向量 $bold(x)$ 均可分解为 “行空间向量 $+$ 零空间向量” 的形式.
  6. 设空间 $S$ 的维数为 $d$, 则 $S$ 的每组基中包含 $d$ 个向量.
  7. 在 $d$ 维空间 $S$ 中, 如果 $d$ 个向量线性无关, 那么它们生成 $S$; 如果 $d$ 个向量生成 $S$, 那么它们线性无关.
]

#v(6pt)
当两个向量 $bold(v), bold(w)$ 的点积为零, 即 $bold(v) dot bold(w) = bold(v)^T bold(w) = 0$ 时, 它们正交. 本章转为讨论正交子空间、正交基以及正交矩阵. 两个正交子空间中的向量、一组正交基中的向量以及正交矩阵 $bold(Q)$ 中的列向量都分别两两正交. 对于一个以 $bold(v)$ 和 $bold(w)$ 为直角边的直角三角形, 考虑勾股定理.

#v(6pt)
#boxEq[正交向量][$ bold(v)^T bold(w) = 0, quad norm(bold(v))^2 + norm(bold(w))^2 = norm(bold(v) + bold(w))^2. $]

#v(6pt)
第二个等式右边为 $(bold(v) + bold(w))^T (bold(v) + bold(w))$. 当 $bold(v)^T bold(w) = bold(w)^T bold(v) = 0$ 时, 右边又等于 $bold(v)^T bold(v) + bold(w)^T bold(w)$ .

第 3 章引入的子空间可帮助我们认识 $bold(A) bold(x) = bold(b)$ 的本质, 其中 $bold(A)$ 为 $m times n$ 矩阵. 最先上场的是列空间与零空间, 而后焦点转向 $bold(A)^T$, 挖掘出两个新的子空间. 这样得到的四个基本子空间揭示了矩阵的真正功用.

对于矩阵乘向量, 即 $bold(A)$ 左乘 $bold(x)$, 有不同层面的理解. 在第一层面上, 这些只是一堆数的运算. 在第二层面上, $bold(A) bold(x)$ 是列向量的线性组合. 第三层面考虑的是子空间. 只有研究过下



#pagebreak()