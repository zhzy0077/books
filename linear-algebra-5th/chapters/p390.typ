#import "../theme.typ": *

#hei[解]　从 $bold(M)$ 的第 2 行中减去 $bold(B)^T bold(A)^(-1)$ 左乘第 1 行, 得到一个零子块, 同时舒尔补 $bold(S) = bold(C) - bold(B)^T bold(A)^(-1) bold(B)$ 也出现在矩阵的右下角:

#eqnum($ mat(delim: "[", bold(I), bold(O); -bold(B)^T bold(A)^(-1), bold(I)) mat(delim: "[", bold(A), bold(B); bold(B)^T, bold(C)) = mat(delim: "[", bold(A), bold(B); bold(O), bold(C) - bold(B)^T bold(A)^(-1) bold(B)) = mat(delim: "[", bold(A), bold(B); bold(O), bold(S)). $, 4)

当 $bold(M)$ 正定时, $bold(A)$ 和 $bold(S)$ 这两个子块一定是正定的, 因为它们的主元就是 $bold(M)$ 的主元.

#hei[6.5 C]　求出 $n$ 阶 “$-1, 2, -1$” 三对角矩阵 $bold(S)$ (第 5.2 节例 2) 的特征值 (这个矩阵颇受作者偏爱).

#hei[解]　最好的方法是先猜出 $lambda$ 和 $x$, 再用 $bold(S) x = lambda x$ 验证. 对于绝大多数矩阵, 猜测 $lambda$ 和 $x$ 并不起效, 但可使用猜测法的特殊矩阵也是数学 (包括纯数学和应用数学) 领域里重要的一块内容.

要诀隐藏在一个微分方程之中. 二阶差分方程矩阵 $bold(S)$ 可类比二阶导数, 后者的特征值更容易弄清楚:

#dingliC[
  #grid(
    columns: (auto, auto, auto, 1fr, auto),
    column-gutter: 1.5em,
    align: (left + horizon, center + horizon, center + horizon, center + horizon, right + horizon),
    [特征值 $lambda_1, lambda_2, dots.c$,\ 特征函数 $y_1, y_2, dots.c$],
    [$ (dif^2 y)/(dif x^2) = lambda y(x) $],
    [满足],
    [$ cases(y(0) = 0, y(1) = 0.) $],
    [(5)],
  )
]

这里尝试 $y = sin c x$, 它的二阶导数为 $y'' = -c^2 sin c x$. 假设 $y = sin c x$ 满足边值条件 $y(0) = 0 = y(1)$, 那么 (5) 式中的特征值就是 $lambda = -c^2$.

在一端 $x = 0$ 处, 显然 $sin 0 = 0$ (此处不考虑余弦值). 在另一端 $x = 1$ 处, 应有 $y(1) = sin c = 0$, 那么数 $c$ 必为 $pi$ 的倍数 $k pi$, 从而 $lambda$ 为 $-k^2 pi^2$:

#eqnumL([特征值 $lambda = -k^2 pi^2$,\ 特征函数 $y = sin k pi x$], $ (dif^2)/(dif x^2) sin k pi x = -k^2 pi^2 sin k pi x. $, 6)

现在回到矩阵 $bold(S)$, 猜测其特征向量. 它们对应 (5) 式中的 $y(x)$, 故猜测其分量源自 $sin k pi x$ 在 $0$ 和 $1$ 之间的 $n$ 个等间距点 $x = h, 2h, dots.c, n h$ 处的值, 所得向量 $x$ 称为正弦向量. 间距 $Delta x$ 为 $h = 1/(n + 1)$, 即第 $(n + 1)$ 个点为 $(n + 1)h = 1$. 用 $bold(S)$ 乘正弦向量 $x$, 借助三角函数公式可验证 (这里的特征值与 (5) 式中的特征值不同)

#eqnumL([$bold(S)$ 的特征值 $lambda_k$ 为正数,\ 特征向量为正弦向量], [$ bold(S) x = lambda_k x = (2 - 2 cos k pi h) x, $ \ $ x = (sin k pi h, sin 2 k pi h, dots.c, sin n k pi h). $], 7)

#barHead[■ 习题集 6.5]

习题 1—13 是关于正定性判别的.

#ti[1.][设 $2 times 2$ 矩阵 $mat(a, b; b, c)$ 的正定性判别 $a > 0$ 且 $a c - b^2 > 0$ 已通过, 那么 $c > b^2/a > 0$.]

#pagebreak()