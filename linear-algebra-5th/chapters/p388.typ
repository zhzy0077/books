#import "../theme.typ": *

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  当全部 $lambda_i > 0$ 时, $2 times 2$ 对称矩阵 $bold(S) = bold(Q) bold(Lambda) bold(Q)^T$ 是正定的, $x^T S x = 1$ 的图形是椭圆:

  #eqnumL([椭圆], $ [x quad y] bold(Q) bold(Lambda) bold(Q)^T mat(delim: "[", x; y) = [X quad Y] bold(Lambda) mat(delim: "[", X; Y) = lambda_1 X^2 + lambda_2 Y^2 = 1. $, 3)

  对称轴指向 $bold(S)$ 的特征向量方向, 半轴长为 $1/sqrt(lambda_1)$ 和 $1/sqrt(lambda_2)$.
]

特别地, $bold(S) = bold(I)$ 给出圆周 $x^2 + y^2 = 1$. 如果一个特征值为负数, 例如, 将 $bold(S)$ 中 $4$ 和 $5$ 对换, 那么椭圆变成双曲线, 平方和变为平方差: $9X^2 - Y^2 = 1$. 对于像 $bold(S) = -bold(I)$ 这样的负定矩阵, 两个特征值都是负数, 对应的 $-x^2 - y^2 = 1$ 的图形根本不存在.

如果对称矩阵 $bold(S)$ 是 $n times n$ 的, 那么 $x^T S x = 1$ 为 $R^n$ 中的 “椭球面”, 其对称轴沿 $bold(S)$ 的特征向量方向.

#hei[重要应用: 最小值判别]

如果函数 $F(x, y)$ 在点 $(x, y) = (0, 0)$ 处满足 $(dif F)/(dif x) = 0$ 且 $(dif F)/(dif y) = 0$, 那么 $F(x, y)$ 在该点处有最小值吗?

对于 $f(x)$, 判别最小值可用微积分: $(dif f)/(dif x) = 0$ 且 $(dif^2 f)/(dif x^2) > 0$. 判别 $F(x, y)$ 的最小值时, 考虑其对应的如下对称矩阵 $bold(S)$ (黑塞 (Hesse) 矩阵):

#dmath[$ "二阶偏导数" quad bold(S) = mat(delim: "[", (dif^2 F)/(dif x^2), (dif^2 F)/(dif x dif y); (dif^2 F)/(dif y dif x), (dif^2 F)/(dif y^2)), $]

它包含四个二阶导数. 此时要判别 $bold(S)$ 的正定性, 结论见图 6.9.

#figure(image("../assets/fig-p388-1.png", width: 55%), numbering: none, caption: [图 6.9　如果 $(dif F)/(dif x) = (dif F)/(dif y) = 0$ 且 $bold(S)$ 是正定的, 那么 $F(x, y)$ 有最小值.])

理由简述: $bold(S)$ 暗含了在点 $(x, y) = (0, 0)$ 附近 $F(x, y)$ 的泰勒 (Taylor) 展开式中起主要作用的项为 $a x^2 + 2 b x y + c y^2$, 其中

#dmath[$ a = (dif^2 F)/(dif x^2), quad b = (dif^2 F)/(dif x dif y), quad c = (dif^2 F)/(dif y^2), $]

#pagebreak()