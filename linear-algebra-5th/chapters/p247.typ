#import "../theme.typ": *

当 $bold(A) bold(x) = bold(b)$ 恰好有解时, 解对应的直线通过这 $m$ 个点. 一般情形下这是无法做到的. 两个未知系数 $C$ 和 $D$ 确定一条直线, 于是 $bold(A)$ 的列数 $n = 2$. 为了拟合这 $m$ 个点, 我们需要解出 $m$ 个方程 (而未知数只有 2 个!):

#grid(columns: (1fr, auto),
  align(center)[$bold(A) bold(x) = bold(b) quad "即" quad cases(C + D t_1 = b_1, C + D t_2 = b_2, dots.v, C + D t_m = b_m) , quad "其中" quad bold(A) = mat(delim: "[", 1, t_1; 1, t_2; dots.v, dots.v; 1, t_m) .$],
  [(5)],
)

$bold(A)$ 的列空间过于稀薄 (维数较低), 几乎可以肯定 $bold(b)$ 在列空间之外. 当 $bold(b)$ 恰好落在列空间中时, 上述那些点应恰好共线. 此时 $bold(b) = bold(p)$, 且 $bold(A) bold(x) = bold(b)$ 可解, 而误差为 $bold(e) = (0,0,dots.c,0)$.

最优直线 $b = C + D t$ 在各横坐标处的高度为 $p_1, p_2, dots.c, p_m$, 误差为 $e_1, e_2, dots.c, e_m$. 求解 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 得到 $hat(bold(x)) = (C,D)$, 误差为 $e_i = b_i - C - D t_i$.

用直线拟合各点十分重要, 此时总可以列出方程组 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ (含两个方程). 由于 $bold(A)$ 的两列线性无关 (除非所有横坐标 $t_i$ 都相同), 因此 $bold(A)^T bold(A)$ 可逆, 方程组 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 有唯一解, 这就是最小二乘法.

#grid(columns: (auto, 1fr, auto), column-gutter: 1.5em, align: (right + horizon, center + horizon, right + horizon),
  [用点积计算 \ 矩阵乘积],
  [$bold(A)^T bold(A) = mat(delim: "[", 1, 1, dots.c, 1; t_1, t_2, dots.c, t_m) mat(delim: "[", 1, t_1; 1, t_2; dots.v, dots.v; 1, t_m) = mat(delim: "[", m, sum t_i; sum t_i, sum t_i^2) .$],
  [(6)],
)

正规方程的右边是二维向量 $bold(A)^T bold(b)$:

#grid(columns: (1fr, auto),
  align(center)[$bold(A)^T bold(b) = mat(delim: "[", 1, 1, dots.c, 1; t_1, t_2, dots.c, t_m) mat(delim: "[", b_1; b_2; dots.v; b_m) = mat(delim: "[", sum b_i; sum t_i b_i) .$],
  [(7)],
)

在具体问题中, 上述字母均为已知数. 最优解 $hat(bold(x)) = (C,D)$ 为 $(bold(A)^T bold(A))^(-1) bold(A)^T bold(b)$.

#yaodian[
  当 $hat(bold(x)) = (C,D)$ 满足 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 时, 直线 $b = C + D t$ 最小化 $e_1^2 + e_2^2 + dots.c + e_m^2 = ||bold(A) bold(x) - bold(b)||^2$:

  #grid(columns: (1fr, auto),
    align(center)[$bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b) quad mat(delim: "[", m, sum t_i; sum t_i, sum t_i^2) mat(delim: "[", C; D) = mat(delim: "[", sum b_i; sum t_i b_i) .$],
    [(8)],
  )
]

(6)—(8) 式中求和号均表示关于 $i = 1,2,dots.c,m$ 求和. $m$ 个点在最优直线上的竖直误差是 $bold(e) = bold(b) - bold(p)$ 的各个分量. 从几何角度看, 误差向量 (即残差) $bold(b) - bold(A) hat(bold(x))$ 垂直于 $bold(A)$ 的各列. 从线性代数角度看, 误差在 $bold(A)$ 的左零空间中. 从微积分角度看, 最优解 $hat(bold(x)) = (C,D)$ 最小化



#pagebreak()