#import "../theme.typ": *

#hei[14.] 请判断以下哪些矩阵一定等于 $(bold(A) - bold(B))^2$:


#align(center)[$ bold(A)^2 - bold(B)^2, quad (bold(B) - bold(A))^2, quad bold(A)^2 - 2 bold(A) bold(B) + bold(B)^2, $]
#align(center)[$ bold(A)(bold(A) - bold(B)) - bold(B)(bold(A) - bold(B)), quad bold(A)^2 - bold(A) bold(B) - bold(B) bold(A) + bold(B)^2 . $]


#hei[15.] 请对以下结论判断正误:

(a) 若 $bold(A)^2$ 有意义, 则 $bold(A)$ 必须是方阵;

(b) 若 $bold(A) bold(B)$ 和 $bold(B) bold(A)$ 都有意义, 则 $bold(A)$ 和 $bold(B)$ 都是方阵;

(c) 若 $bold(A) bold(B)$ 和 $bold(B) bold(A)$ 都有意义, 则 $bold(A) bold(B)$ 和 $bold(B) bold(A)$ 都是方阵;

(d) 若 $bold(A) bold(B) = bold(B)$, 则 $bold(A) = bold(I)$.

#hei[16.] 若 $bold(A)$ 是 $m times n$ 矩阵, 请分别确定下列运算中包含多少次单独的乘法运算:

(a) 用 $bold(A)$ 左乘一个 $n$ 维列向量 $bold(x)$;

(b) 用 $bold(A)$ 左乘一个 $n times p$ 矩阵 $bold(B)$;

(c) $bold(A)^2$, 此时 $m = n$.

#hei[17.] 令 $bold(A) = mat(2, -1; 3, -2), quad bold(B) = mat(1, 0, 4; 1, 0, 6)$, 请计算下列结果:

(a) $bold(A) bold(B)$ 的第 2 列;

(b) $bold(A) bold(B)$ 的第 2 行;

(c) $bold(A)^2$ (即 $bold(A A)$) 的第 2 行;

(d) $bold(A)^3$ (即 $bold(A A A)$) 的第 2 行.

习题 18—20 中的 $a_(i j)$ 表示矩阵 $bold(A)$ 第 $i$ 行第 $j$ 列的元素.

#hei[18.] 请分别写出满足下列条件的三阶方阵 $bold(A)$:

(a) $a_(i j) = min \{i, j\}$; (b) $a_(i j) = (-1)^(i+j)$; (c) $a_(i j) = i/j$.

#hei[19.] 请描述下列每一类矩阵 $bold(A)$ 的特点, 并对每种类型写出一个三阶方阵的示例:

(a) 当 $i != j$ 时, $a_(i j) = 0$;

(b) 当 $i < j$ 时, $a_(i j) = 0$;

(c) $a_(i j) = a_(j i)$;

(d) $a_(i j) = a_(1 j)$.

哪个矩阵同时属于这四个类型?

#hei[20.] 将 $bold(A)$ 的元素记为 $a_(i j)$, 假设所有元素都不为零, 请问

(a) 第一个主元是什么?

(b) 从第 3 行中减去第 1 行时所需的乘数 $ell_(31)$ 是什么?

(c) 完成上述减法后 $a_(32)$ 变成什么?

(d) 第二个主元是什么?

习题 21—24 是关于方阵 $bold(A)$ 的幂的.



#pagebreak()
