#import "../theme.typ": *

(1) $e^(bold(A) t)$ 总有逆矩阵 $e^(-bold(A) t)$;

(2) $e^(bold(A) t)$ 的特征值总是 $e^(lambda t)$, 其中 $lambda$ 为矩阵 $bold(A)$ 的特征值;

(3) 当 $bold(A)$ 为反称矩阵时, $e^(bold(A) t)$ 是正交矩阵, 其逆与转置均为 $e^(-bold(A) t)$.

反称与 "斜对称" 是一个意思. 反称矩阵有像 $i$ 和 $-i$ 这样的纯虚数特征值, 于是 $e^(bold(A) t)$ 有像 $e^(i t)$ 和 $e^(-i t)$ 这样的特征值. 这些特征值的绝对值为 1, 对应微分方程的解满足: 稳定性为中性、纯振荡、能量守恒. 故 $norm(bold(u)(t)) = norm(bold(u)(0))$.

在本节最后的例子 (例 6) 中, $bold(A)$ 为三角形矩阵. 那么特征向量矩阵 $bold(X)$ 是三角形矩阵, 从而 $bold(X)^(-1)$ 与 $e^(bold(A) t)$ 也是如此. 例子中展示了解的两种形式: 特征向量的线性组合以及简化形式 $e^(bold(A) t) bold(u)(0)$.

#hei[例 6]　求解满足初值条件 $bold(u)(0) = mat(delim: "[", 2; 1)$ 的方程 $(dif bold(u))/(dif t) = bold(A) bold(u) = mat(delim: "[", 1, 1; 0, 2) bold(u)$.

#hei[解]　特征值 1 和 2 是 $bold(A)$ 的对角元素 (因为 $bold(A)$ 是三角形矩阵), 特征向量为 $(1, 0)$ 和 $(1, 1)$. 初值向量 $bold(u)(0)$ 等于 $bold(x)_1 + bold(x)_2$, 于是通解中的组合系数 $c_1 = c_2 = 1$. 那么 $bold(u)(t)$ 可与前式一样表示为纯指数函数的线性组合 (当 $lambda = 1, 2$ 时, 没有 $t e^(lambda t)$ 项):

#dmath[$ bold(u)' = bold(A) bold(u) "的解" quad bold(u)(t) = e^t mat(delim: "[", 1; 0) + e^(2t) mat(delim: "[", 1; 1). $]

这是最为清晰明了的形式. 而利用矩阵指数函数 $e^(bold(A) t)$ 可直接生成满足任意初值条件的 $bold(u)(t)$:

#dmath[$ bold(u)(t) = bold(X) e^(Lambda t) bold(X)^(-1) bold(u)(0) = mat(delim: "[", 1, 1; 0, 1) mat(delim: "[", e^t, ; , e^(2t)) mat(delim: "[", 1, -1; 0, 1) bold(u)(0) = mat(delim: "[", e^t, e^(2t) - e^t; 0, e^(2t)) bold(u)(0). $]

上式最后的矩阵是 $e^(bold(A) t)$, 其性态良好正是由于 $bold(A)$ 为三角形矩阵. 如同解 $bold(A) bold(x) = bold(b)$ 时不是必须要用 $bold(A)^(-1)$ 那样, 也不是必须用 $e^(bold(A) t)$ 才能解出 $(dif bold(u))/(dif t) = bold(A) bold(u)$. 但作为简化的求解公式, $bold(A)^(-1) bold(b)$ 和 $e^(bold(A) t) bold(u)(0)$ 在理论推导中更有优势.

#barHead[■ 要点回顾]

#hei[1.] 方程 $bold(u)' = bold(A) bold(u)$ 是线性的, 其中 $bold(A)$ 为常系数矩阵, 初值向量为 $bold(u)(0)$.

#hei[2.] 上述方程的解通常为含指数函数的线性组合, 涉及每个特征值和特征向量:

#dmath[$ "线性无关的特征向量" quad bold(u)(t) = c_1 e^(lambda_1 t) bold(x)_1 + c_2 e^(lambda_2 t) bold(x)_2 + dots.c + c_n e^(lambda_n t) bold(x)_n . $]

#hei[3.] 上述常系数 $c_1, c_2, dots.c, c_n$ 由 $bold(u)(0) = c_1 bold(x)_1 + c_2 bold(x)_2 + dots.c + c_n bold(x)_n = bold(X) bold(c)$ 所决定.

#hei[4.] 如果每个 $lambda$ 的实部为负数, 那么 $bold(u)(t)$ 趋于零向量 (稳定性): 所有 $e^(lambda t) -> 0$.

#hei[5.] 解有简化形式 $bold(u)(t) = e^(bold(A) t) bold(u)(0)$, 其中 $e^(bold(A) t)$ 为矩阵指数函数.

#hei[6.] 将 $y$ 和 $y'$ 组合为向量 $bold(u)$, 含 $y''$ 的二阶方程就转化为 $bold(u)' = bold(A) bold(u)$.

#pagebreak()