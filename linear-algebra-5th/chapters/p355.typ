#import "../theme.typ": *

$lambda$ 的实部 $r$ 决定了 $e^(lambda t)$ 的模是增长 ($r > 0$) 还是衰减 ($r < 0$).

由此前述解的稳定性问题变成: 哪些实矩阵的特征值为负数? 更准确地提法是, 何时 $lambda$ 的实部都是负数? 对于 $2 times 2$ 矩阵, 这个问题有明确的答案.

#gainian[稳定性][当全部特征值 $lambda$ 有负数实部时, $bold(A)$ 是稳定的且 $bold(u)(t) -> 0$. 此时 $2 times 2$ 实矩阵 $bold(A) = mat(delim: "[", a, b; c, d)$ 必须满足两个判别条件:

$ cases(lambda_1 + lambda_2 < 0, & "迹" T = a + d "必为负数", lambda_1 lambda_2 > 0, & "行列式" D = a d - b c "必为正数") $]

#hei[理由]　如果特征值 $lambda_1, lambda_2$ 均为负实数, 那么它们的和是负数, 这就是迹 $T$ 满足的条件; 而它们的积为正数, 这就是行列式 $D$ 满足的条件. 反向推导也是成立的. 如果 $D = lambda_1 lambda_2$ 为正数, 那么 $lambda_1$ 与 $lambda_2$ 正负号相同. 如果还有 $T = lambda_1 + lambda_2$ 为负数, 那么 $lambda_1, lambda_2$ 的符号就是负号. 由此可转为分析 $T$ 和 $D$.

如果两个特征值 $lambda_1, lambda_2$ 为复数, 那么它们一定具有 $r + i s$ 和 $r - i s$ 的形式, 否则 $T$ 和 $D$ 不会是实数. 行列式 $D$ 显然取正数, 因为 $(r + i s)(r - i s) = r^2 + s^2$. 而迹 $T$ 为 $r + i s + r - i s = 2r$, 因此负值迹 $T$ 意味着实部 $r$ 是负数, 此时矩阵是稳定的. 证毕.

图 6.6 表明抛物线 $T^2 = 4D$ 将实特征值 $lambda$ 与复特征值 $lambda$ 区分开. 解 $lambda^2 - T lambda + D = 0$ 要用到平方根 $sqrt(T^2 - 4D)$. 抛物线下方对应该平方根为实数, 而上方对应虚数平方根. 稳定区域是图中左上角区域 (即第二象限)——其中迹 $T$ 为负数, 行列式 $D$ 为正数.

#figure(image("../assets/fig-p355-66.png", width: 85%), numbering: none, caption: [图 6.6　当迹小于 0 且行列式大于 0 时, $2 times 2$ 实矩阵 $bold(A) = mat(delim: "[", a, b; c, d)$ 是稳定的 ($bold(u)(t) -> 0$).])

#subsec[矩阵指数函数]

本段将解 $bold(u)(t)$ 写为新的形式 $e^(bold(A) t) bold(u)(0)$. 首先介绍 $e^(bold(A) t)$ 的涵义, 该式的指数包含矩阵. 为了定义含矩阵指数的 $e^(bold(A) t)$, 需要借用指数函数 $e^x$ 的级数展开式.

利用无穷级数 $1 + x + 1/2 x^2 + 1/6 x^3 + dots.c$ 可直接定义 $e^x$. 将 $x$ 换成方阵 $bold(A) t$, 对应的级数就是矩阵指数函数 $e^(bold(A) t)$:

#pagebreak()