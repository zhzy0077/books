#import "../theme.typ": *

$X$ 与 $Y$ 的相关系数就是 $X'$ 与 $Y'$ 的协方差. 若 $X$ 与 $Y$ 的协方差是 $sigma_(X Y)$, 则标准化所得 $X'$ 与 $Y'$ 的协方差要除以 $sigma_X$ 和 $sigma_Y$:

#dmath[$ "相关系数" rho_(X Y) = sigma_(X Y)/(sigma_X sigma_Y) = X/sigma_X "与" Y/sigma_Y "的协方差," quad "始终有" -1 <= rho_(X Y) <= 1. $]

零协方差表明零相关, 对相互独立的随机变量 $X, Y$ 有 $rho_(X Y) = 0$.

已知始终有 $sigma_(X Y)^2 <= sigma_X^2 sigma_Y^2$ (协方差矩阵 $bold(V)$ 至少是半正定矩阵), 则 $rho_(X Y)^2 <= 1$. 相关系数接近 $rho = +1$ 意味着随机变量在同一方向的强相关性: 随机变量呈现相同的变化趋势. 负相关系数意味着当 $X$ 大于其均值时, $Y$ 倾向于小于其均值, 即随机变量呈现相反的变化趋势.

#hei[例 3] 假设 $Y$ 就是 $-X$. 抛一枚硬币时, 结果是 $X = 0$ 或 1, 同样的抛掷试验结果也记成 $Y = 0$ 或 $-1$. 对一枚均匀的硬币而言, 均值 $m_X$ 是 $1/2$, 均值 $m_Y$ 是 $-1/2$. 协方差 $sigma_(X Y) = -sigma_X sigma_Y$, 然后除以 $sigma_X sigma_Y$ 得 $rho_(X Y) = -1$. 在这种情况下, 相关系数矩阵 $bold(R)$ 的行列式为零 (奇异且半正定):

#dmath[$ "相关系数矩阵" quad bold(R) = mat(delim: "[", 1, rho_(X Y); rho_(X Y), 1); quad quad "当" Y = -X "时," quad bold(R) = mat(delim: "[", 1, -1; -1, 1). $]

因为已经标准化得 $sigma_(X')^2 = sigma_(Y')^2 = 1$, 因此 $bold(R)$ 的对角元素始终是 1. $bold(R)$ 是 $X$ 和 $Y$ 的相关系数矩阵, 也是 $X' = X/sigma_X$ 和 $Y' = Y/sigma_Y$ 的协方差矩阵.

数字 $rho_(x y)$ 也称为皮尔逊 (Pearson) 系数.

#hei[例 4] 设随机变量 $X, Y, Z$ 是相互独立的. 请问对应的相关系数矩阵 $bold(R)$ 是什么?

#hei[解] $bold(R)$ 是单位矩阵: 按照定义, $rho_(X X), rho_(Y Y), rho_(Z Z)$ 这三个相关系数都是 1; 根据独立性, $rho_(X Y), rho_(X Z), rho_(Y Z)$ 这三个交叉相关系数都是零.

对协方差矩阵 $bold(V)$ 的第 $i$ 行和第 $i$ 列除以第 $i$ 个标准差 $sigma_i$, 可得对应的相关系数矩阵 $bold(R)$.

(a) $bold(R) = bold(D) bold(V) bold(D)$, 其中对角矩阵 $bold(D)$ 的对角元素为 $1/sigma_1, 1/sigma_2, dots.c, 1/sigma_M$;

(b) 若协方差矩阵 $bold(V)$ 是正定矩阵, 则相关系数矩阵 $bold(R) = bold(D) bold(V) bold(D)$ 也是正定矩阵.

#barHead[■ 范例解析]

#hei[12.2 A] 设随机变量 $X$ 和 $Y$ 相互独立, 且均值都为 0, 方差都为 1, 则随机向量 $bold(X) = (X, Y)$ 的协方差矩阵 $bold(V)_X$ 是一个 2 阶单位矩阵. 请问对于包含 3 个分量的随机向量 $bold(Z) = (X, Y, a X + b Y)$, 均值 $bold(m)_Z$ 和协方差矩阵 $bold(V)_Z$ 分别是什么?

#hei[解] $bold(Z)$ 可通过如下矩阵 $bold(A)$ 与 $bold(X)$ 建立联系:

#dmath[$ bold(Z) = mat(delim: "[", X; Y; a X + b Y) = mat(delim: "[", 1, 0; 0, 1; a, b) mat(delim: "[", X; Y) = bold(A) bold(X). $]

#pagebreak()