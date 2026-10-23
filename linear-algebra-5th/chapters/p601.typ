#import "../theme.typ": *

注意, $bold(X) bold(X)^T$ 和 $overline(bold(X)) overline(bold(X))^T$ 均为列向量左乘行向量, 故是 $M$ 阶方阵.

对于 $M = 1$ (单个随机变量), $overline(bold(X))$ 是均值 $m$, 而 $bold(V)$ 是 $sigma^2$ (第 12.1 节). 对于 $M = 2$ (如两枚硬币), $overline(bold(X))$ 是 $(m_1, m_2)$, 而 $bold(V)$ 满足 (10) 式. 数学期望始终是每个可能的结果乘对应发生的概率后再求和. 对于随机向量 (年龄, 身高, 体重) 而言, 出现的结果可以是 $bold(X) = (5$ 岁, 110 cm, 20 kg$)$ 且它发生的概率是 $p_(5, 110, 20)$.

现在考虑一个新的问题. 取任意线性组合 $bold(c)^T bold(X) = c_1 X_1 + c_2 X_2 + dots.c + c_M X_M$. 在上述 (年龄, 身高, 体重) 情况下, 对于 $bold(c) = (6, 2, 5)$, 该线性组合就是

$ bold(c)^T bold(X) = 6 ("年龄") + 2 ("身高") + 5 ("体重"). $

利用线性性质可知它的数学期望 $"E"[bold(c)^T bold(X)]$ 是 $bold(c)^T "E"[bold(X)] = bold(c)^T overline(bold(X))$:

$ "E"[bold(c)^T bold(X)] = bold(c)^T "E"[bold(X)] = 6 ("期望年龄") + 2 ("期望身高") + 5 ("期望体重"). $

进一步可以得到 $bold(c)^T bold(X)$ 的方差 $sigma^2$:

#eqnum([$ bold(c)^T bold(X) "的方差" = "E"[(bold(c)^T bold(X) - bold(c)^T overline(bold(X)))(bold(c)^T bold(X) - bold(c)^T overline(bold(X)))^T] \
= bold(c)^T "E"[(bold(X) - overline(bold(X)))(bold(X) - overline(bold(X)))^T] bold(c) = bold(c)^T bold(V) bold(c)! $], 11)

现在是关键点: $bold(c)^T bold(X)$ 的方差不可能为负值, 因此 $bold(c)^T bold(V) bold(c) >= 0$, 由能量判别法 (第 6.5 节) 可知协方差矩阵 $bold(V)$ 是半正定矩阵.

协方差矩阵 $bold(V)$ 开启了概率论与线性代数之间的联系: $bold(V)$ 可以分解为 $bold(Q) bold(Lambda) bold(Q)^T$, 其中 $bold(Lambda)$ 为对角矩阵, 对应的特征值 $lambda_i >= 0$, $bold(Q)$ 的列向量 $bold(q)_1, bold(q)_2, dots.c, bold(q)_M$ 是正交的特征向量.

将协方差矩阵对角化意味着通过原始 $M$ 个试验的组合找到 $M$ 个独立的试验.

坦白说, 对于 $bold(c)^T bold(V) bold(c) >= 0$ 的证明并不是很完美. 期望符号 $"E"$ 掩盖了联合概率这个关键概念. 可以直接证明 $bold(V)$ 是半正定矩阵 (至少是针对 (年龄, 身高, 体重) 这个例子). 证明很简单: $bold(V)$ 是每个 (年龄, 身高, 体重) 对应的联合概率 $p_(a h w)$ 乘半正定矩阵 $bold(u) bold(u)^T$ 之和. 这里的 $bold(u)$ 是 $bold(X) - overline(bold(X))$:

#eqnum($ bold(V) = sum_("全部" a, h, w) p_(a h w) bold(u) bold(u)^T, quad "其中" quad bold(u) = mat("年龄"; "身高"; "体重") - mat("年龄均值"; "身高均值"; "体重均值") . $, 12)

这类似于 (7) 式中抛硬币试验的二阶方阵 $bold(V)$, 但是现在 $M = 3$.

数学期望的值也能由概率密度 (例如, 连续型随机变量 $X, Y$ 和 $Z$ 的概率密度 $p(x, y, z)$) 求出. 如果允许年龄、身高和体重取任意实数而不是限制它们为自然数, 则需用 $p(x, y, z)$ 来代替 $p_(a h w)$, 同时将求和运算改成积分运算, 但在本质上仍然有 $bold(V) = "E"[bold(u) bold(u)^T]$:

#eqnumL([协方差矩阵], $ bold(V) = integral.triple p(x, y, z) bold(u) bold(u)^T dif x dif y dif z, quad "其中" quad bold(u) = mat(x - overline(x); y - overline(y); z - overline(z)) . $, 13)



#pagebreak()
