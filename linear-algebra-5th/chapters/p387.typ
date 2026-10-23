#import "../theme.typ": *

$bold(S)$ 的特征向量为 $mat(1; 1)$ 和 $mat(1; -1)$, 除以 $sqrt(2)$ 得到单位向量. 从而 $bold(S) = bold(Q) bold(Lambda) bold(Q)^T$:

#grid(
  columns: (auto, auto),
  column-gutter: 2em,
  align: (right + horizon, center + horizon),
  [特征向量在 $bold(Q)$ 中,\ 特征值为 9 和 1],
  [$ mat(5, 4; 4, 5) = 1/sqrt(2) mat(1, 1; 1, -1) mat(9, 0; 0, 1) 1/sqrt(2) mat(1, 1; 1, -1). $],
)

对上述左乘 $x^T = [x quad y]$ 且右乘 $x = mat(x; y)$, 得到 $x^T S x = (x^T Q) bold(Lambda) (Q^T x)$:

#eqnumL([将 $x^T S x$ 写成平方和], $ 5x^2 + 8x y + 5y^2 = 9 ((x + y)/sqrt(2))^2 + 1 ((x - y)/sqrt(2))^2. $, 2)

上式系数并非 $bold(D)$ 中主元 $5$ 和 $9/5$, 而是 $bold(Lambda)$ 中特征值 $9$ 和 $1$. 隐藏在平方项里的是特征向量 $bold(q)_1 = 1/sqrt(2)(1, 1)$ 和 $bold(q)_2 = 1/sqrt(2)(1, -1)$.

#figure(image("../assets/fig-p387-1.png", width: 85%), numbering: none, caption: [图 6.8　(a) 倾斜椭圆 $5x^2 + 8x y + 5y^2 = 1$; (b) 对称轴与坐标轴对齐后变为 $9X^2 + Y^2 = 1$.])

倾斜椭圆的对称轴指向特征向量方向. 这就解释了为什么得到分解式 $bold(S) = bold(Q) bold(Lambda) bold(Q)^T$ 的结论称为 “主轴定理”——它展示了椭圆的对称轴, 不但包括对称轴方向 (通过特征向量), 而且包括对称轴长度 (通过特征值). 为了讲清这一切, 使用大写字母表示对齐椭圆的新坐标:

#align(center)[$ "对齐" quad "设" (x + y)/sqrt(2) = X, quad (x - y)/sqrt(2) = Y, quad "则" quad 9X^2 + Y^2 = 1. $]

$X^2$ 的最大值为 $1/9$, 则短轴一个端点坐标为 $(X, Y) = (1/3, 0)$. 注意: 特征值 $lambda_1$ 较大, 对应较短的对称轴, 其半轴长为 $1/sqrt(lambda_1) = 1/3$; 而较小的特征值 $lambda_2 = 1$ 对应较长的半轴长 $1/sqrt(lambda_2) = 1$.

在 $x y$ 平面中, 对称轴沿矩阵 $bold(S)$ 的特征向量方向. 而在 $X Y$ 平面中, 对称轴沿矩阵 $bold(Lambda)$ 的特征向量方向——坐标轴方向. 所有结论均源自 $bold(S) = bold(Q) bold(Lambda) bold(Q)^T$.



#pagebreak()
