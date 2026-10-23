#import "../theme.typ": *

#secBracket[2.3  利用矩阵进行消元]

#dingli[
  #hei[1.] 第一步用矩阵 $bold(E)_(21)$ 左乘方程组 $bold(A) bold(x) = bold(b)$ 得 $bold(E)_(21) bold(A) bold(x) = bold(E)_(21) bold(b)$. \
  #hei[2.] 矩阵 $bold(E)_(21) bold(A)$ 第 2 行第 1 列的元素为 0, 因为第 2 个方程中 $x_1$ 已被消去. \
  #hei[3.] 将单位矩阵 (对角线上都是 1) 的第 2 行第 1 列减去乘数 $a_(21)/a_(11)$ 得 $bold(E)_(21)$. \
  #hei[4.] 矩阵-矩阵乘法包含 $n$ 个矩阵-向量乘法: $bold(E) bold(A) = [bold(E) bold(a)_1 quad bold(E) bold(a)_2 quad dots.c quad bold(E) bold(a)_n]$. \
  #hei[5.] 还需计算 $bold(E) bold(b)$! 所以是用 $bold(E)$ 左乘增广矩阵 $[bold(A) quad bold(b)] = [bold(a)_1 quad bold(a)_2 quad dots.c quad bold(a)_n quad bold(b)]$. \
  #hei[6.] 消元时依次用 $bold(E)_(21), bold(E)_(31), dots.c, bold(E)_(n 1)$ 左乘 $bold(A) bold(x) = bold(b)$, 然后再用 $bold(E)_(32), bold(E)_(42), dots.c, bold(E)_(n 2)$ 依次左乘, 以此类推. \
  #hei[7.] 换行矩阵是 $bold(P)_(i j)$ 而不是 $bold(E)_(i j)$. 交换单位矩阵 $bold(I)$ 的第 $i$ 行与第 $j$ 行可得 $bold(P)_(i j)$.
]

本节将给出矩阵乘法的第一个示例. 先从有很多零元素的矩阵开始学习, 以便了解在这个过程中矩阵如何变化. $bold(E)$ 作用于 (左乘) 向量 $bold(b)$ 或者矩阵 $bold(A)$, 得到一个新的向量 $bold(E) bold(b)$ 或新的矩阵 $bold(E) bold(A)$.

第一个例子将是“消元矩阵” $bold(E)_(i j)$, 用于执行消元步骤: 从第 $i$ 个方程中减去第 $j$ 个方程的 $ell_(i j)$ 倍 (即从第 $i$ 个方程中消去 $x_j$). 显然主对角线下方每一个需消去的非零元素都对应了一个消元矩阵, 因此需要很多个简单的 $bold(E)_(i j)$ (主对角线上的元素全为 1, 第 $i$ 行第 $j$ 列的元素是 $-ell_(i j)$, 其余元素为 0).

幸运的是在后续章节中不必展示所有的 $bold(E)_(i j)$, 它们是学习本节时很好的入门材料, 但是数量太多. 将消元中用到的 $bold(E)_(i j)$ 合并 (即依次左乘) 为一个矩阵 $bold(E)$, 即可一次性完成所有的消元步骤, 此外还可将所有的逆矩阵 $(bold(E)_(i j))^(-1)$ (主对角线上的元素全为 1, 第 $i$ 行第 $j$ 列的元素是 $ell_(i j)$, 其余元素为 0) 合并为一个矩阵 $bold(L) = bold(E)^(-1)$. 以下是后续内容的学习目标:

#hei[1.] 了解每一个消元步骤如何对应一个矩阵乘法;

#hei[2.] 将所有步骤的 $bold(E)_(i j)$ 合并为一个消元矩阵 $bold(E)$;

#hei[3.] 了解每个 $bold(E)_(i j)$ 的作用如何通过逆矩阵 $bold(E)_(i j)^(-1)$ 逆转;

#hei[4.] 将所有步骤的逆矩阵 $bold(E)_(i j)^(-1)$ (按照正确次序) 合并为 $bold(L)$.

$bold(L)$ 的特别之处在于所有的乘数 $ell_(i j)$ 排列得有条不紊. 这些乘数经适当运算才得到 $bold(E)$ 的元素 (从 $bold(A)$ 到 $bold(U)$ 的向前消元), 但在 $bold(L)$ 中却直接按顺序罗列 (撤销消元, 从 $bold(U)$ 返回到 $bold(A)$). 撤销消元的步骤使得各 $bold(E)_(i j)^(-1)$ 左乘的顺序与 $bold(E)_(i j)$ 左乘的顺序相反, 因此所有乘数 $ell_(i j)$ (未经额外运算) 直接在 $bold(L)$ 中出现 (见后续内容).

本节主要学习如何求得 $bold(E)_(i j)$, 第 2.4 节学习矩阵相乘的四种方法, 第 2.5 节学习每一步骤的逆运算 (对消元矩阵可得 $bold(E)_(i j)^(-1)$), 然后合并这些逆矩阵得到 $bold(L)$.

#subsec[矩阵左乘向量与 $bold(A) bold(x) = bold(b)$]

上一节例题的线性方程组可写成简洁的矩阵形式 $bold(A) bold(x) = bold(b)$:

#align(center, grid(columns: (auto, auto, auto, auto), column-gutter: 1.6em, align: horizon,
  [$ cases(2x_1 + 4x_2 - 2x_3 = 2, 4x_1 + 9x_2 - 3x_3 = 8, -2x_1 - 3x_2 + 7x_3 = 10) $],
  [等同于],
  [$ mat(delim: "[", 2, 4, -2; 4, 9, -3; -2, -3, 7) mat(delim: "[", x_1; x_2; x_3) = mat(delim: "[", 2; 8; 10) . $],
  [(1)],
))



#pagebreak()
