#import "../theme.typ": *

直向量 $bold(e)$, 即三个方程对应的误差向量 $bold(e) = bold(b) - bold(A) hat(bold(x)) = (1,-2,1)$. 它是三个点到最优直线的距离. 图 4.8 的两个子图都暗含了基本方程 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$.

#figure(image("../assets/fig-p245-48.png", width: 100%), numbering: none, caption: [图 4.8　最优直线与投影: 两幅图描述同一问题. 该直线在高度 $bold(p) = (5,2,-1)$ 处的误差为 $bold(e) = (1,-2,1)$. 由方程组 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 解出 $hat(bold(x)) = (5,-3)$. 一样的结果! 最优直线是 $b = 5 - 3t$, 而最近点是 $bold(p) = 5 bold(a)_1 - 3 bold(a)_2$.])

注意, 误差 $1, -2, 1$ 之和为零. 原因: 误差 $bold(e) = (e_1,e_2,e_3)$ 垂直于 $bold(A)$ 的首列 $(1,1,1)$, 由两者的点积得到 $e_1 + e_2 + e_3 = 0$.

微积分方法　大多数函数均可用微积分方法求最小值! 此时图形见底, 且各方向导数为零. 而误差函数 $E$ (即各方程中误差的平方和 $e_1^2 + e_2^2 + e_3^2$) 取最小值:

#grid(columns: (1fr, auto),
  align(center)[$E = ||bold(A) bold(x) - bold(b)||^2 = (C + D dot.op 0 - 6)^2 + (C + D dot.op 1)^2 + (C + D dot.op 2)^2 ,$],
  [(3)],
)

其中自变量为 $C$ 和 $D$. 关于这两个自变量有两个偏导数——函数取最小值时, 它们均为零. 由于求 $(partial E)/(partial C)$ 时将 $D$ 看成常数, 而求 $(partial E)/(partial D)$ 时将 $C$ 看成常数, 因此它们称为“偏导数”:

#dmath[$ cases(
  (partial E)/(partial C) = 2(C + D dot.op 0 - 6) dot.op 1 + 2(C + D dot.op 1) dot.op 1 + 2(C + D dot.op 2) dot.op 1 = 0,
  (partial E)/(partial D) = 2(C + D dot.op 0 - 6) dot.op 0 + 2(C + D dot.op 1) dot.op 1 + 2(C + D dot.op 2) dot.op 2 = 0.
) $]

根据链式法则, $(partial E)/(partial D)$ 包含额外的因子 $0,1,2$. (来自 $(C + 2D)^2$ 的最后一个偏导数为 $2(C + 2D)$, 再乘额外的 2.) 而在 $(partial E)/(partial C)$ 中, 这样的因子就是 $1,1,1$.

对 $||bold(A) bold(x) - bold(b)||^2$ 求偏导时, 偏导数中的因子 $1,1,1$ 和 $0,1,2$ 构成 $bold(A)$ 的两列, 这绝非偶然. 现在消去每项中的 2, 再合并 $C$ 与 $D$ 的所有同类项:

#grid(columns: (auto, 1fr, auto), column-gutter: 1.5em, align: (right + horizon, center + horizon, left + horizon),
  [关于 $C$ 的偏导数为零, \ 关于 $D$ 的偏导数为零],
  [$ cases(3C + 3D = 6, 3C + 5D = 0) $],
  [系数矩阵 $mat(delim: "[", 3, 3; 3, 5)$ 为 $bold(A)^T bold(A)$ . #h(1.5em) (4)],
)

上述方程组与 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 一致. 最优的 $C$ 与 $D$ 是 $hat(bold(x))$ 的分量. 由微积分方法得到的方程组与由线性代数方法得到的“正规方程”是一样的. 它们是最小二乘法的关键方程:

#pagebreak()