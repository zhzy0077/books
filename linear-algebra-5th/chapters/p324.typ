#import "../theme.typ": *

$ "对" lambda_1 = 1, "由" (bold(A) - bold(I)) bold(x)_1 = mat(delim: "[", 1, -1; -1, 1) mat(delim: "[", x; y) = mat(delim: "[", 0; 0) "得出特征向量" bold(x)_1 = mat(delim: "[", 1; 1) ; $

$ "对" lambda_2 = 3, "由" (bold(A) - 3 bold(I)) bold(x)_2 = mat(delim: "[", -1, -1; -1, -1) mat(delim: "[", x; y) = mat(delim: "[", 0; 0) "得出特征向量" bold(x)_2 = mat(delim: "[", 1; -1) . $

$bold(A)^2$, $bold(A)^(-1)$ 和 $bold(A) + 4 bold(I)$ 与 $bold(A)$ 具有相同的特征向量, 它们的特征值分别为 $lambda^2$ 和 $lambda^(-1)$ 以及 $lambda + 4$:

$bold(A)^2$ 的特征值为 $1^2 = 1$, $3^2 = 9$;

$bold(A)^(-1)$ 的特征值为 $1/1 = 1$, $1/3$;

$bold(A) + 4 bold(I)$ 的特征值为 $1 + 4 = 5$, $3 + 4 = 7$.

关于后续各节的注记: 对称矩阵 $bold(A)$ 有正交的特征向量 (第 6.4 节); 因为 $lambda_1 != lambda_2$, 所以 $bold(A)$ 可对角化 (第 6.2 节); $bold(A)$ 与任意特征值为 1 和 3 的 $2 times 2$ 矩阵相似 (第 6.2 节); 因为 $bold(A) = bold(A)^T$ 且特征值 $lambda$ 均为正数, 所以 $bold(A)$ 为正定矩阵 (第 6.5 节).

#hei[6.1 B]　如何估计任意矩阵 $bold(A)$ 的特征值? 格什戈林 (Gershgorin) 给出了如下回答:

$bold(A)$ 的每一个特征值必然 “靠近” 至少一个对角元素 $a_(i i)$. 所谓 $lambda$ “靠近 $a_(i i)$” 是指 $|a_(i i) - lambda|$ 不超过第 $i$ 行所有其他元素绝对值 $|a_(i j)|$ 之和 $R_i$, 即此时考虑以 $a_(i i)$ 为圆心、$R_i = sum_(j != i) |a_(i j)|$ 为半径的圆 (格什戈林圆).

$ "每个" lambda "均在一个或多个格什戈林圆内, 即存在" i "使得" |a_(i i) - lambda| <= R_i . $

论证过程: 如果 $lambda$ 是特征值, 那么 $bold(A) - lambda bold(I)$ 不可逆, 于是 $bold(A) - lambda bold(I)$ 不可能是严格对角占优矩阵 (第 2.5 节). 因此至少有一个 $a_(i i) - lambda$ 不比 $R_i$ 大, 其中 $R_i$ 为第 $i$ 行所有其他元素 $|a_(i j)|$ (要取绝对值!) 之和.

#hei[第一个例子]　以下矩阵 $bold(A)$ 的每个特征值 $lambda$ 落入一个或两个格什戈林圆内, 圆心分别为 $a$ 和 $d$, 半径分别为 $R_1 = |b|$ 和 $R_2 = |c|$:

$ bold(A) = mat(delim: "[", a, b; c, d) quad mat(delim: #none, "第一个圆:" quad |lambda - a| <= |b|; "第二个圆:" quad |lambda - d| <= |c|) . $

因为 $lambda$ 可能是复数, 所以这两个圆都在复平面中.

#hei[第二个例子]　以下矩阵 $bold(A)$ 的所有特征值位于一个半径 $R = 3$ 的圆内, 该圆环绕着一个或多个对角元素 $d_1, d_2, d_3$:

$ bold(A) = mat(delim: "[", d_1, 1, 2; 2, d_2, 1; -1, 2, d_3) quad mat(delim: #none, |lambda - d_1| <= 1 + 2 = R_1; |lambda - d_2| <= 2 + 1 = R_2; |lambda - d_3| <= 1 + 2 = R_3) . $

这个例子中, “靠近” 是指到 $d_1, d_2$ 或 $d_3$ 的距离不超过 3.



#pagebreak()