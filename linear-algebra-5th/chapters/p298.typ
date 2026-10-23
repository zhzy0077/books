#import "../theme.typ": *

#h(1.5em) (a) 设 $bold(A)$ 的前三个主元为 $2, 3, -1$, 则 $bold(L)_1, bold(L)_2, bold(L)_3$ (主对角线上的元素是 1) 的行列式分别是什么? $bold(U)_1, bold(U)_2, bold(U)_3$ 和 $bold(A)_1, bold(A)_2, bold(A)_3$ 的行列式呢?

#h(1.5em) (b) 若 $bold(A)_1, bold(A)_2, bold(A)_3$ 的行列式分别是 $5, 6, 7$, 请利用 (3) 式计算前三个主元.

#hei[25.] 如下所示, 利用分块矩阵消元法从分块矩阵的第二行 $[bold(C) bold(D)]$ 中减去 $bold(C) bold(A)^(-1)$ 左乘第一行 $[bold(A) bold(B)]$, 会在右下角得到舒尔补 $bold(D) - bold(C) bold(A)^(-1) bold(B)$:

$ mat(delim: "[", bold(I), bold(O); -bold(C) bold(A)^(-1), bold(I)) mat(delim: "[", bold(A), bold(B); bold(C), bold(D)) = mat(delim: "[", bold(A), bold(B); bold(O), bold(D) - bold(C) bold(A)^(-1) bold(B)) . $

若 $bold(A)^(-1)$ 存在, 请对上述分块矩阵计算行列式来证明下述正确的结论:

$ "假设" bold(A) bold(C) = bold(C) bold(A), quad "则" quad mat(delim: "|", bold(A), bold(B); bold(C), bold(D)) = |bold(A)| |bold(D) - bold(C) bold(A)^(-1) bold(B)| = |bold(A) bold(D) - bold(C) bold(B)| . $

#hei[26.] 若 $bold(A)$ 是 $m times n$ 矩阵, $bold(B)$ 是 $n times m$ 矩阵, 由分块矩阵乘法可得 $det bold(M) = det bold(A) bold(B)$:

$ bold(M) = mat(delim: "[", bold(O), bold(A); -bold(B), bold(I)) = mat(delim: "[", bold(A) bold(B), bold(A); bold(O), bold(I)) mat(delim: "[", bold(I), bold(O); -bold(B), bold(I)) . $

若 $bold(A)$ 是一个行矩阵 (只有单独一行), $bold(B)$ 是一个列矩阵 (只有单独一列), 请问 $det bold(M)$ 是什么? 若 $bold(A)$ 是一个列矩阵而 $bold(B)$ 是一个行矩阵, 请问 $det bold(M)$ 是什么? 请对这两种情况各举一个 $bold(M)$ 是三阶方阵的例子.

#hei[27.] (微积分问题) 请证明 $det bold(A)$ 关于 $a_(11)$ 的导数是代数余子式 $C_(11)$, 此时其他元素固定不变——只关于 $a_(11)$ 求导.

#hei[28.] 一个三阶行列式可 “从左上到右下” (沿主对角线及平行方向) 得到三个乘积项, 还可 “从右上到左下” (沿反对角线及平行方向) 得到三个带负号的乘积项 (图 5.1). 请按照 $1 dot 5 dot 9 = 45$ 的模式计算这六个乘积项, 然后计算行列式 $D$.

#figure(image("../assets/fig-p298-1.png", width: 52%), numbering: none, caption: [图 5.1　习题 28.])

不使用行列式, 判断图 5.1 对应的矩阵是否可逆.

#hei[29.] 对于习题 15 中的 $E_4$, 基础公式 (8) 中全部 $4! = 24$ 个乘积项中有五项不为零, 请计算出这五项来证明 $E_4 = -1$.

#hei[30.] 对于 4 阶的三对角二阶差分矩阵 (元素是 $-1, 2, -1$), 请计算出基础公式中的五个非零乘积项, 并得出 $det bold(A) = 16 - 4 - 4 - 4 + 1$.



#pagebreak()