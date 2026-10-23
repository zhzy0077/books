#import "../theme.typ": *

同理, 利用第一个主元消去第三个方程中的 $-2x$ ——简捷方法是将第一个方程加到第三个方程上, 这样 $2x$ 与 $-2x$ 相互抵消. 当然, 按照本书中的消元规则应该是减而不是加, 此时乘数为 $ell_(31) = (-2)/2 = -1$, 减去一个方程的 $-1$ 倍就等同于加上该方程:

#hei[第二步]  从第三个方程减去第一个方程的 $-1$ 倍, 得到 $y + 5z = 12$.

两个新的方程中只包含未知数 $y$ 和 $z$. 第二个主元是 1:

#eqL[已消去 $x$][$ cases(1y + 1z = 4, 1y + 5z = 12) $]

这样得到一个 $2 times 2$ 方程组. 最后一步是在新方程组中消去 $y$ 来得到一个 $1 times 1$ 方程组.

#hei[第三步]  从新方程组的后一个方程中减去前一个方程, 得到 $4z = 8$, 此时的乘数为 $1/1 = 1$.

原方程组 $bold(A) bold(x) = bold(b)$ 就变成一个上三角形方程组 $bold(U) bold(x) = bold(c)$.

#dingliC[
  #grid(columns: (auto, auto, auto, auto), column-gutter: 1.4em,
    align(center + horizon)[$ cases(2x + 4y - 2z = 2, 4x + 9y - 3z = 8, -2x - 3y + 7z = 10) $],
    align(center + horizon)[$bold(A) bold(x) = bold(b)$ \ 变成 \ $bold(U) bold(x) = bold(c)$],
    align(center + horizon)[$ cases(2x + 4y - 2z = 2, 1y + 1z = 4, 4z = 8) $],
    align(center + horizon)[(1)],
  )
]

至此完成了将 $bold(A)$ 变为 $bold(U)$ 的向前消元步骤. 注意, 在矩阵 $bold(U)$ 的对角线上是主元 2, 1, 4, 且需经过消元才能得到原方程组中隐藏的主元 1 和 4. 对 $bold(U) bold(x) = bold(c)$ 已经能够应用回代来快速求解:

由 $4z = 8$ 解得 $2z = 2$;

代入 $y + z = 4$ 得 $y = 2$;

再代入第一个方程得 $x = -1$.

方程组的解是 $(x, y, z) = (-1, 2, 2)$. 行图中由三个方程所确定的平面都经过这个点. 原始的平面是倾斜的 (不平行于坐标平面), 而消元所得最后一个平面 $4z = 8$ 是水平的 (平行于 $x y$ 平面).

列图显示的是利用列向量的线性组合 $bold(A) bold(x)$ 来生成右侧的向量 $bold(b)$, 组合系数为 $-1, 2, 2$ (方程组的解):

#eqnum($ bold(A) bold(x) = (-1) mat(delim: "[", 2; 4; -2) + 2 mat(delim: "[", 4; 9; -3) + 2 mat(delim: "[", -2; -3; 7) = mat(delim: "[", 2; 8; 10) = bold(b). $, 2)

在 $bold(A) bold(x) = bold(b)$ 与三角形的 $bold(U) bold(x) = bold(c)$ 中都是用数字 $x, y, z$ 分别乘第 1—3 列.

#subsec[从 $bold(A)$ 到 $bold(U)$ 的消元法]

同理, 对于一个 $4 times 4$ 方程组或者更一般的 $n times n$ 方程组可按相同流程执行消元法, 此时可以只关注系数矩阵的变化. 以下就是高斯消元法成功执行时逐列将系数矩阵 $bold(A)$ 变为 $bold(U)$ 的基本过程:



#pagebreak()
