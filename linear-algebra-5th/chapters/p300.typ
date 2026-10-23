#import "../theme.typ": *

#align(center, subsec[5.3　克拉默法则、逆矩阵与体积])

#yaodian[
  #hei[1.] $bold(A)^(-1)$ 等于 $bold(C)^T/(det bold(A))$, 故 $(bold(A)^(-1))_(i,j) = ("代数余子式" C_(j i))/(bold(A) "的行列式")$.

  #hei[2.] 克拉默法则通过 $x_j = (det("将" bold(A) "的第" j "列换成" bold(b)))/(det bold(A))$ 来计算 $bold(x) = bold(A)^(-1) bold(b)$.

  #hei[3.] 当一个平行四边形四个顶点是 $(0,0), (a,b), (c,d)$ 和 $(a+c, b+d)$ 时, 它的面积为 $|a d - b c|$.

  #hei[4.] 若 $bold(A)$ 的行 (或 $bold(A)$ 的列) 表示一个平行六面体过同一顶点的三条棱, 则它的体积为 $|det bold(A)|$.

  #hei[5.] 叉积 $bold(w) = bold(u) times bold(v)$ 就是
  #align(center)[$ det mat(delim: "|", bold(i), bold(j), bold(k); u_1, u_2, u_3; v_1, v_2, v_3) . $]
  注意, $w_1, w_2, w_3$ 是第 1 行元素的代数余子式, $bold(v) times bold(u) = -(bold(u) times bold(v))$, $bold(w)^T bold(u) = 0$ 且 $bold(w)^T bold(v) = 0$.
]

本节学习通过代数公式而不是消元法来求解 $bold(A) bold(x) = bold(b)$ 和计算 $bold(A)^(-1)$. 所有的公式中都含除以行列式 $det bold(A)$ 的运算——$bold(A)^(-1)$ 和 $bold(A)^(-1) bold(b)$ 的每一个元素都是一个行列式除以 $bold(A)$ 的行列式. 下面从克拉默法则开始本节的内容.

克拉默法则用于求解 $n times n$ 方程组 $bold(A) bold(x) = bold(b)$. 可用一个简洁的方法来计算解的第一个分量 $x_1$. 将单位矩阵 $bold(I)$ 的第 1 列元素换成 $bold(x)$ 就得到了行列式为 $x_1$ 的一个矩阵, 当用 $bold(A)$ 左乘这个矩阵时, 第 1 列变成 $bold(A) bold(x)$, 也就是 $bold(b)$. 乘积 $bold(B)_1$ 的其他列等于 $bold(A)$ 中对应的列 (取 $n = 3$):

#dmath[$ "关键原理" quad bold(A) mat(delim: "[", x_1, 0, 0; x_2, 1, 0; x_3, 0, 1) = mat(delim: "[", b_1, a_12, a_13; b_2, a_22, a_23; b_3, a_32, a_33) = bold(B)_1 . $ (1)]

对上式中的三个矩阵取行列式来计算 $x_1$:

#dingliC[$ "乘法法则" quad (det bold(A)) dot x_1 = det bold(B)_1, quad "或" quad x_1 = (det bold(B)_1)/(det bold(A)) . $ (2)]

这是克拉默法则中 $bold(x)$ 的第一个分量! 其中 $bold(B)_1$ 是将 $bold(A)$ 的第 1 列换成 $bold(b)$ 后所得的矩阵.

为计算 $x_2$ 和 $bold(B)_2$, 用向量 $bold(x)$ 和 $bold(b)$ 分别替换 $bold(I)$ 和 $bold(A)$ 的第 2 列:

#dmath[$ "同理" quad mat(delim: "[", bold(a)_1, bold(a)_2, bold(a)_3) mat(delim: "[", 1, x_1, 0; 0, x_2, 0; 0, x_3, 1) = mat(delim: "[", bold(a)_1, bold(b), bold(a)_3) = bold(B)_2 . $ (3)]

对上式两边取行列式有 $(det bold(A)) dot x_2 = det bold(B)_2$, 可知 $x_2 = (det bold(B)_2)/(det bold(A))$.



#pagebreak()