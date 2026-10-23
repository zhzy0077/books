#import "../theme.typ": *

#hei[房子矩阵]　$bold(H) = mat(delim: "[", -6, -6, -7, 0, 7, 6, 6, -3, -3, 0, 0, -6; -7, 2, 1, 8, 1, 2, -7, -7, -2, -2, -7, -7).$

#figure(image("../assets/fig-p443-1.png", width: 80%), numbering: none, caption: [图 8.2　由 plot2d($bold(A) * bold(H)$) 画出对房子的线性变换.])

#barHead[■ 要点回顾]

#ti[1.][变换 $T$ 将输入空间中的每个向量 $bold(v)$ 映射为输出空间中的 $T(bold(v))$.]

#ti[2.][若 $T(bold(v) + bold(w)) = T(bold(v)) + T(bold(w))$ 且 $T(c bold(v)) = c T(bold(v))$, 则 $T$ 为线性的, 且将直线映成直线.]

#ti[3.][线性变换 $T$ 将线性组合映为线性组合:]

#dmath[$ T(c_1 bold(v)_1 + c_2 bold(v)_2 + dots.c + c_n bold(v)_n) = c_1 T(bold(v)_1) + c_2 T(bold(v)_2) + dots.c + c_n T(bold(v)_n). $]

#ti[4.][设变换 $T$ 为求导运算, $T^+$ 为积分运算, 则它们都是线性的. 对 $m times n$ 矩阵 $bold(A)$, 变换 $T(bold(v)) = bold(A) bold(v)$ 是从 $R^n$ 到 $R^m$ 的线性映射.]

#barHead[■ 范例解析]

#hei[8.1 A]　消元矩阵 $bold(A) = mat(delim: "[", 1, 0; 1, 1)$ 给出从 $(x, y)$ 到 $bold(T)(x, y) = (x, x + y)$ 的一个剪切变换. 如果输入向量填满一个正方形, 画出变换后的图形.

#hei[解]　$x$ 轴上的点 $(1, 0)$ 和 $(2, 0)$ 被 $T$ 变换成直线 $y = x$ 上的点 $(1, 1)$ 和 $(2, 2)$. $y$ 轴上的点没有动: $T(0, y) = (0, y)$, 对应特征值 $lambda = 1$ 的特征向量. 垂直的线向上滑动, 这就是剪切, 因此正方形变成平行四边形 (图 8.3).

#figure(image("../assets/fig-p443-2.png", width: 62%), numbering: none, caption: [图 8.3])

#pagebreak()