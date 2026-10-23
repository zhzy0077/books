#import "../theme.typ": *

将会是偶置换矩阵, 因为 $n!$ 中一定包含有因子 4, 奇置换矩阵的总数 $n!/2$ 是偶数.

在问题 (3) 中, 对每个元素 $a_(i j)$ 乘 $i/j$, 则基础公式中的乘积项 $a_(1 alpha) a_(2 beta) dots.c a_(n omega)$ 都会乘全体行标 $i = 1, 2, dots.c, n$ 并除以全体列标 $j = 1, 2, dots.c, n$. (列标按照某种次序排列!) 因此每一个乘积项都保持不变, 从而 $det bold(A)$ 保持不变.

还可用另一种方法求解问题 (3): 第 $i$ 行元素乘 $i$ 相当于用对角矩阵 $bold(D) = "diag"(1 ":" n)$ 左乘矩阵 $bold(A)$; 第 $j$ 列元素除以 $j$ 相当于用对角矩阵 $bold(D)^(-1)$ 右乘矩阵 $bold(A)$. 按照乘法性质, $bold(D) bold(A) bold(D)^(-1)$ 的行列式等于 $det bold(A)$.

#xiti[习题集 5.2]

习题 1—10 使用包含 $n!$ 个乘积项的基础公式: $|bold(A)| = sum plus.minus a_(1 alpha) a_(2 beta) dots.c a_(n omega)$, 每个乘积项在每一行、每一列中各选一个元素相乘.

#hei[1.] 利用 6 个乘积项来计算 $bold(A), bold(B), bold(C)$ 的行列式, 请问它们的行线性无关吗?

#dmath[$ bold(A) = mat(delim: "[", 1, 2, 3; 3, 1, 2; 3, 2, 1), quad bold(B) = mat(delim: "[", 1, 2, 3; 4, 4, 4; 5, 6, 7), quad bold(C) = mat(delim: "[", 1, 1, 1; 1, 1, 0; 1, 0, 0) . $]

#hei[2.] 分别计算 $bold(A), bold(B), bold(C), bold(D)$ 的行列式, 请问它们的列线性无关吗?

#dmath[$ bold(A) = mat(delim: "[", 1, 1, 0; 1, 0, 1; 0, 1, 1), quad bold(B) = mat(delim: "[", 1, 2, 3; 4, 5, 6; 7, 8, 9), quad bold(C) = mat(delim: "[", bold(A), bold(O); bold(O), bold(A)), quad bold(D) = mat(delim: "[", bold(A), bold(O); bold(O), bold(B)) . $]

#hei[3.] 请证明无论五个标记成 \* 的非零元素 (\* 表示的元素不一定完全相同) 如何取值都有 $det bold(A) = 0$:

#dmath[$ bold(A) = mat(delim: "[", *, *, *; 0, 0, *; 0, 0, *) . $]

第 1 行元素的代数余子式是什么? $bold(A)$ 的秩是多少? $det bold(A)$ 的六个乘积项是什么?

#hei[4.] 对下列矩阵, 请用两种不同方法从不同行和不同列中选出非零元素:

#dmath[$ bold(A) = mat(delim: "[", 1, 0, 0, 1; 0, 1, 1, 1; 1, 1, 0, 1; 1, 0, 0, 1), quad bold(B) = mat(delim: "[", 1, 0, 0, 2; 0, 3, 4, 5; 5, 4, 0, 3; 2, 0, 0, 1) quad (bold(B) "与" bold(A) "有相同位置的零元") . $]

$det bold(A)$ 等于 $1+1, 1-1$ 还是 $-1-1$? $det bold(B)$ 是什么?

#pagebreak()