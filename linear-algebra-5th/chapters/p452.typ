#import "../theme.typ": *
#set par(spacing: 14pt, leading: 13pt)

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #hei[乘法]　线性变换 $T S$ 将 $U$ 中任一向量 $bold(u)$ 映到 $V$ 中 $S(bold(u))$, 再映到 $W$ 中 $T(S(bold(u)))$. 矩阵 $bold(A) bold(B)$ 作用于 $R^p$ 中任一向量 $bold(x)$ 时, 先得到 $R^n$ 中 $bold(B) bold(x)$, 再得到 $R^m$ 中 $bold(A) bold(B) bold(x)$. 矩阵 $bold(A) bold(B)$ 为变换 $T S$ 的矩阵:

  #dmath[$ T S : U -> V -> W, quad quad bold(A) bold(B) : (m times n)(n times p) = (m times p). $]
]

输入向量为 $bold(u) = x_1 bold(u)_1 + x_2 bold(u)_2 + dots.c + x_p bold(u)_p$. 输出向量 $T(S(bold(u)))$ 对应输出向量 $bold(A) bold(B) bold(x)$. 变换 $T, S$ 的复合对应矩阵 $bold(A), bold(B)$ 的乘积.

研究变换的乘积时, 最重要的情形是空间 $U, V, W$ 均相同, 而且取相同的基向量. 当 $m = n = p$ 时, 对应的矩阵都是方阵, 因此可以相乘.

#hei[例 5]　设变换 $S$ 将平面逆时针旋转 $theta$, 变换 $T$ 也将平面逆时针旋转 $theta$, 则变换 $T S = T^2$ 将平面逆时针旋转 $2 theta$. 再设 $T$ 和 $S$ 的矩阵分别为 $bold(A)$ 和 $bold(B)$, 则变换 $T^2$ 为逆时针旋转 $2 theta$, 其矩阵为旋转矩阵 $bold(A)^2$:

#eqnum($ T = S, quad bold(A) = bold(B) = mat(delim: "[", cos theta, -sin theta; sin theta, cos theta), quad bold(A)^2 = mat(delim: "[", cos 2 theta, -sin 2 theta; sin 2 theta, cos 2 theta) . $, 4)

通过对比 $T T$ 和 $T^2$ 两者的矩阵, 可以得到 $cos 2 theta$ 和 $sin 2 theta$ 的公式. 将 $bold(A)$ 和 $bold(A)$ 相乘:

#eqnum($ mat(delim: "[", cos theta, -sin theta; sin theta, cos theta) mat(delim: "[", cos theta, -sin theta; sin theta, cos theta) = mat(delim: "[", cos^2 theta - sin^2 theta, -2 sin theta cos theta; 2 sin theta cos theta, cos^2 theta - sin^2 theta) . $, 5)

比较 (4) 式和 (5) 式将得到 $cos 2 theta = cos^2 theta - sin^2 theta$, $sin 2 theta = 2 sin theta cos theta$. 这说明三角函数公式 (至少倍角公式) 可由线性代数得到.

#hei[例 6]　设变换 $S$ 表示逆时针旋转 $theta$, 其矩阵为 $bold(A)$; 变换 $T$ 表示逆时针旋转 $-theta$, 其矩阵为 $bold(B)$, 则由 $T S = I$ 可导出 $bold(A) bold(B) = bold(I)$. 此时 $T(S(bold(u))) = bold(u)$, 即先旋转再还原, 故 $bold(A) bold(B) bold(x)$ 必须为 $bold(x)$. 这两个矩阵互为逆矩阵. 将 $cos(-theta) = cos theta$ 和 $sin(-theta) = -sin theta$ 代入旋转矩阵 $bold(A)$ 可检验这一点:

#dmath[$ bold(A) bold(B) &= mat(delim: "[", cos theta, sin theta; -sin theta, cos theta) mat(delim: "[", cos theta, -sin theta; sin theta, cos theta) \ &= mat(delim: "[", cos^2 theta + sin^2 theta, 0; 0, cos^2 theta + sin^2 theta) = bold(I). $]

#v(10pt)
#subsec[选取最佳基]

本节最后一部分内容是选取向量空间的最佳基以使变换的矩阵为对角矩阵. 使用标准基 ($bold(I)$ 的列向量) 时, 由变换 $T$ 可得其矩阵 $bold(A)$——很可能不是对角矩阵. 当使用不同基向量时, 同一个变换 $T$ 可以用不同矩阵表示. 选取基向量时, 两个非常好的选择是特征向量和奇异向量.



#pagebreak()