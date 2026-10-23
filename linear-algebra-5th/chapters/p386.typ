#import "../theme.typ": *

可逆矩阵):

$ bold(S) = mat(delim: "[", 1, 2; 2, 4), quad bold(T) = mat(delim: "[", 2, -1, -1; -1, 2, -1; -1, -1, 2) quad "都是半正定的." $

$bold(S)$ 的特征值为 $5$ 和 $0$, 左上角行列式为 $1$ 和 $0$, 秩仅为 $1$. 矩阵 $bold(S)$ 可以分解为 $bold(A)^T bold(A)$, 其中 $bold(A)$ 的各列线性相关:

#grid(
  columns: (auto, auto),
  column-gutter: 2em,
  align: (right + horizon, center + horizon),
  [A 的各列线性相关,\ S 半正定],
  [$ mat(delim: "[", 1, 2; 2, 4) = mat(delim: "[", 1, 0; 2, 0) mat(delim: "[", 1, 2; 0, 0) = bold(A)^T bold(A). $],
)

如果将 $4$ 加上任意微小正数, 矩阵 $bold(S)$ 将变为正定的.

循环矩阵 $bold(T)$ 的行列式也为零 (对应例 1 中 $b = -1$ 的情形), 因此 $bold(T)$ 是奇异的. 特征向量 $x = (1, 1, 1)$ 满足 $bold(T) x = bold(0)$, 于是能量 $x^T T x = 0$. 在所有其他方向上的向量 $x$ 给出正的能量值. 该矩阵 $bold(T)$ 可用多种方式写成 $bold(A)^T bold(A)$, 但 $bold(A)$ 的各列总是线性相关的, 而 $(1, 1, 1)$ 在 $bold(A)$ 的其零空间中:

$ mat(delim: "[", 2, -1, -1; -1, 2, -1; -1, -1, 2) = mat(delim: "[", 1, -1, 0; 0, 1, -1; -1, 0, 1) mat(delim: "[", 1, 0, -1; -1, 1, 0; 0, -1, 1), $

#align(center)[源自一阶差分矩阵 $bold(A)$ 的二阶差分矩阵 $bold(T)$,
源自循环矩阵 $bold(A)$ 的循环矩阵 $bold(T)$.]

半正定矩阵 $bold(S)$ 的全部特征值 $lambda >= 0$, 且对任意向量 $x$, $x^T S x >= 0$. 满足这些较弱不等式 (用 $>=$ 代替 $>$) 的矩阵 $bold(S)$ 既包括正定矩阵, 也包括 “边缘” 情形的半正定 (奇异) 矩阵.

椭圆　$a x^2 + 2 b x y + c y^2 = 1$

对正定矩阵 $bold(S) = mat(delim: "[", a, b; b, c)$ 和 $x = (x, y)$, 考虑倾斜椭圆 $x^T S x = 1$ (对称轴不在坐标轴上), 其中心为点 $(0, 0)$, 如图 6.8(a) 所示. 旋转该椭圆, 使其对称轴与坐标轴 ($X$ 轴与 $Y$ 轴) 对齐, 并简称为对齐椭圆, 如图 6.8(b) 所示. 这两幅图表明了分解式 $bold(S) = bold(Q) bold(Lambda) bold(Q)^(-1) = bold(Q) bold(Lambda) bold(Q)^T$ 的几何背景:

(1) 倾斜椭圆与 $bold(S)$ 相关, 它的方程为 $x^T S x = 1$;

(2) 对齐椭圆与 $bold(Lambda)$ 相关, 它的方程为 $bold(X)^T bold(Lambda) bold(X) = 1$;

(3) 将椭圆对称轴与坐标轴对齐的旋转矩阵就是特征向量矩阵 $bold(Q)$.

#hei[例 2]　求出倾斜椭圆 $5x^2 + 8x y + 5y^2 = 1$ 的对称轴.

#hei[解]　先求出与椭圆方程对应的正定矩阵:

$ "方程为" quad [x quad y] mat(delim: "[", 5, 4; 4, 5) mat(delim: "[", x; y) = 1, quad "矩阵为" quad bold(S) = mat(delim: "[", 5, 4; 4, 5). $



#pagebreak()