#import "../theme.typ": *

以 $bold(a), bold(b), bold(c) = bold(a)_1, bold(a)_2, bold(a)_3$ 为例, 该代码将依次构造 $bold(q)_1, bold(B), bold(q)_2, bold(C), bold(q)_3$:

#dmath[$ bold(q)_1 = bold(a)_1/||bold(a)_1||, quad bold(B) = bold(a)_2 - (bold(q)_1^T bold(a)_2) bold(q)_1, quad bold(q)_2 = bold(B)/||bold(B)||, $]
#dmath[$ bold(C)^* = bold(a)_3 - (bold(q)_1^T bold(a)_3) bold(q)_1, quad bold(C) = bold(C)^* - (bold(q)_2^T bold(C)^*) bold(q)_2, quad bold(q)_3 = bold(C)/||bold(C)||. $]

如上述计算 $bold(C)^*$ 和 $bold(C)$ 的过程所示, (11) 式表示一次减去一个投影. 变更后的方法称为改进的格拉姆-施密特方法. 相比一次性减去所有投影的 (8) 式, 该代码更具有数值稳定性.

为了恢复 $bold(A)$ 的第 $j$ 列, 可撤销代码的最后一步和中间步骤:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ bold(R)(j,j) bold(q)_j &= (bold(v) "减去其在" bold(q)_1, bold(q)_2, dots.c, bold(q)_(j-1) "方向上的投影") \
  &= (bold(A) "的第" j "列") - sum_(i=1)^(j-1) bold(R)(i,j) bold(q)_i . $],
  align(bottom)[$(12)$],
)

将连加求和移到最左端, 得到乘积 $bold(Q) bold(R) = bold(A)$ 的第 $j$ 列.

注　诸如 MATLAB, Julia 和 Python 等常见软件中得到分解式 $bold(A) = bold(Q) bold(R)$ 的软件包 (如 LAPACK) 并不使用格拉姆-施密特方法. 现在有更好的方法: 用 “豪斯霍尔德 (Householder) 反射” 作用在 $bold(A)$ 上生成上三角形矩阵 $bold(R)$. 该方法一次变换一列, 这和用消元法生成 LU 分解中的上三角形矩阵 $bold(U)$ 的方式相同.

上述反射对应的反射矩阵 $bold(I) - 2 bold(u) bold(u)^T$ 将在第 11 章 “数值线性代数” 中予以详述. 如果 $bold(A)$ 为三对角矩阵, 那么利用 $2 times 2$ 旋转矩阵甚至能简化到更好情形, 但结果总是 $bold(A) = bold(Q) bold(R)$ 的形式. MATLAB 正交化 $bold(A)$ 的指令为 [Q,R]=qr(A). 即便使用反射矩阵或旋转矩阵可以引出更完美的 $bold(Q)$, 但格拉姆-施密特方法依旧是易于理解的好方法.

#barHead[■ 要点回顾]

#hei[1.] 如果标准正交向量组 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$ 是 $bold(Q)$ 的各列, 那么 $bold(q)_i^T bold(q)_j = 0$ 且 $bold(q)_i^T bold(q)_i = 1$. 转换成矩阵乘法语言就是 $bold(Q)^T bold(Q) = bold(I)$.

#hei[2.] 如果上述 $bold(Q)$ 为方阵 (即正交矩阵), 那么 $bold(Q)^T = bold(Q)^(-1)$, 即转置 = 逆.

#hei[3.] $bold(Q) bold(x)$ 的长度等于 $bold(x)$ 的长度, 即 $||bold(Q) bold(x)|| = ||bold(x)||$.

#hei[4.] $bold(Q)$ 的列空间由 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$ 生成, 到该空间上的投影矩阵为 $bold(P) = bold(Q) bold(Q)^T$.

#hei[5.] 如果 $bold(Q)$ 为方阵, 那么上述 $bold(P) = bold(Q) bold(Q)^T = bold(I)$ 且每个 $bold(b)$ 等于 $sum_(i=1)^n bold(q)_i (bold(q)_i^T bold(b))$.

#hei[6.] 利用格拉姆-施密特方法可由线性无关向量组 $bold(a), bold(b), bold(c)$ 生成标准正交向量组 $bold(q)_1, bold(q)_2, bold(q)_3$. 写成矩阵分解式就是 $bold(A) = bold(Q) bold(R)$, 其中 $bold(Q)$ 为正交矩阵, $bold(R)$ 为三角形矩阵.

#barHead[■ 范例解析]

#hei[4.4 A]  将如下 $4 times 4$ 矩阵 $bold(H)_4$ 后两列中的元素 $*$ 改为 1 或 $-1$ (不全相同), 使得所得得到的 $4 times 4$ “阿达马 (Hadamard) 矩阵” 各列正交:

#pagebreak()