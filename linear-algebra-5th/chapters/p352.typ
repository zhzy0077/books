#import "../theme.typ": *
#set par(spacing: 15.5pt, leading: 13.2pt)
#show math.equation.where(block: true): set block(above: 16pt, below: 16pt)

#eqnum($ cases((dif y)/(dif t) = y', (dif y')/(dif t) = -k y - b y') quad "转换为" quad (dif)/(dif t) mat(delim: "[", y; y') = mat(delim: "[", 0, 1; -k, -b) mat(delim: "[", y; y') = bold(A) bold(u). $, 9)

第一个方程 $(dif y)/(dif t) = y'$ 是平凡的 (显然成立). 第二个方程就是 (8) 式, 它将 $y''$ 与 $y', y$ 联系起来. 两个方程一起将 $bold(u)'$ 与 $bold(u)$ 联系起来. 于是利用 $bold(A)$ 的特征值就可以解 $bold(u)' = bold(A) bold(u)$:

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 22pt), width: 100%, above: 20pt, below: 20pt)[
  #align(center)[$ bold(A) - lambda bold(I) = mat(delim: "[", -lambda, 1; -k, -b - lambda) quad "的行列式为" quad lambda^2 + b lambda + k = 0. $]
]

这个关于 $lambda$ 的方程与 (8) 式一模一样! 由于 $m = 1$, 所以 (8) 式就是 $lambda^2 + b lambda + k = 0$. 它的根就是 $bold(A)$ 的特征值 $lambda_1$ 与 $lambda_2$. 相应地, 特征向量与通解是 (设 $lambda_1 != lambda_2$)

#dmath[$ bold(x)_1 = mat(delim: "[", 1; lambda_1), quad bold(x)_2 = mat(delim: "[", 1; lambda_2), quad bold(u)(t) = c_1 e^(lambda_1 t) mat(delim: "[", 1; lambda_1) + c_2 e^(lambda_2 t) mat(delim: "[", 1; lambda_2) . $]

$bold(u)(t)$ 的第一个分量为 $y = c_1 e^(lambda_1 t) + c_2 e^(lambda_2 t)$——如之前二阶常系数方程的解, 不可能是其他值. $bold(u)(t)$ 的第二个分量表示速度 $(dif y)/(dif t)$. 由上述推导可知, 这里的向量问题与标量问题完全一致. 向量方程中的 $2 times 2$ 矩阵 $bold(A)$ 称为友矩阵——对应于关于 $y''$ 的二阶方程.

#hei[例 3]　设运动方程为 $y'' + y = 0$, 则它的一个解为 $y = cos t$.

这是在上述二阶微分方程中质量取 $m = 1$、刚度取 $k = 1$ 且 $d = 0$: 没有阻尼. 将 $y = e^(lambda t)$ 代入 $y'' + y = 0$ 得到 $lambda^2 + 1 = 0$, 它的根为 $lambda = i$ 和 $lambda = -i$. 那么 $e^(i t) + e^(-i t)$ 的一半就是解 $y = cos t$.

将上述方程改写为一阶方程组, 设初值 $y(0) = 1$, $y'(0) = 0$ 并写成 $bold(u)(0) = (1, 0)$:

#eqnumL(box[利用 $y'' = -y$], $ (dif bold(u))/(dif t) = (dif)/(dif t) mat(delim: "[", y; y') = mat(delim: "[", 0, 1; -1, 0) mat(delim: "[", y; y') = bold(A) bold(u). $, 10)

毫无意外, $bold(A)$ 的特征值是与前面相同的 $lambda = i$ 和 $lambda = -i$. $bold(A)$ 是反称矩阵, 它的特征向量为 $bold(x)_1 = (1, i)$ 和 $bold(x)_2 = (1, -i)$. 与 $bold(u)(0) = (1, 0)$ 相匹配的线性组合为 $1/2 (bold(x)_1 + bold(x)_2)$. 第 2 步分别用 $e^(i t)$ 和 $e^(-i t)$ 乘 $bold(x)_1$ 和 $bold(x)_2$. 第 3 步将纯振荡解组合为 $bold(u)(t)$, 从而像预料的那样解出 $y = cos t$:

#dmath[$ bold(u)(t) = 1/2 e^(i t) mat(delim: "[", 1; i) + 1/2 e^(-i t) mat(delim: "[", 1; -i) = mat(delim: "[", cos t; -sin t), quad "这就是" quad mat(delim: "[", y(t); y'(t)) . $]

此时求解完成. 向量 $bold(u) = (cos t, -sin t)$ 沿圆周运动 (图 6.4). 因为 $cos^2 t + sin^2 t = 1$, 所以圆周半径为 1.

#pagebreak()