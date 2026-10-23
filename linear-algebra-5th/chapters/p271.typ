#import "../theme.typ": *

#hei[36.] 如果 $m times n$ 矩阵 $bold(A)$ 的秩为 $n$, 指令 qr(A) 生成方阵 $bold(Q)$ 和对角线下元素全为零的矩阵 (即上三角形矩阵) $bold(R)$:

#grid(columns: (auto, 1fr), column-gutter: 24pt,
  align(right + horizon)[由 MATLAB 得到的分解式 #linebreak() 形状为 $(m times m)(m times n)$],
  align(left + horizon)[$ bold(A) = mat(bold(Q)_1, bold(Q)_2) mat(bold(R); bold(O)) , $],
)

其中 $bold(Q)_1$ 的 $n$ 列是 $bold(A)$ 的哪个基本子空间的标准正交基? $bold(Q)_2$ 的 $m - n$ 列又是 $bold(A)$ 的哪个基本子空间的标准正交基?

#hei[37.] 已知 $bold(P) = bold(Q) bold(Q)^T$ 为到 $m times n$ 矩阵 $bold(Q)$ (各列正交) 列空间上的投影矩阵. 现在对 $bold(Q)$ 增补一列 $bold(a)$ 得到 $bold(A) = mat(bold(Q), bold(a))$. 在格拉姆-施密特方法中, 由向量 $bold(a)$ 生成的向量 $bold(q)$ 是什么? 将 $bold(a)$ 减去 $\_\_\_\_$, 再除以 $\_\_\_\_$, 从而得到 $bold(q)$.



#pagebreak()