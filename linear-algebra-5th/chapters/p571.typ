#import "../theme.typ": *

#ti[18.][向量范数也应满足 $norm(c bold(x)) = |c| norm(bold(x))$. 当 $bold(x) != 0$ 时, 向量的范数都为正. 下列哪些式子可定义 $R^2$ 中向量 $(x_1, x_2)$ 的范数?]

#dmath[$ norm(bold(x))_A = |x_1| + 2|x_2|, quad quad norm(bold(x))_B = min {|x_1|, |x_2|}, $]

#dmath[$ norm(bold(x))_C = norm(bold(x)) + norm(bold(x))_infinity, quad quad norm(bold(x))_D = norm(bold(A) bold(x)) quad ("结论取决于具体的" bold(A)) . $]

#align(center)[#image("../assets/fig-p571-icon.png", width: 5.5%)]
#line(length: 100%)
#align(center, subsec[挑 战 题])

#ti[19.][对 $n$ 维向量 $bold(x), bold(y)$, 通过选取分量 $y_i = plus.minus 1$ 使 $bold(x)^T bold(y)$ 尽可能大, 并证明 $bold(x)^T bold(y) <= norm(bold(x))_1 norm(bold(y))_infinity$.]

#ti[20.][“$-1, 2, -1$” 三对角差分矩阵 $bold(K)$ 的特征值为 $lambda = 2 - 2 cos (j pi)/(n+1)$. 估计 $lambda_min, lambda_max$, 以及 $c = "cond"(bold(K)) = lambda_max/lambda_min$. 随着 $n$ 的增加, 条件数 $c approx C n^2$, 其中的常数 $C$ 为多少? 使用命令 #raw("eig(K)") 和 #raw("cond(K)"), 分别取 $n = 10, 100, 1 000$ 验证上面的估计.]

#pagebreak()