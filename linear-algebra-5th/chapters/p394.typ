#import "../theme.typ": *

(b) 由 $bold(S) = mat(delim: "[", 4, 8; 8, 25)$ 求出 $"C=chol"(bold(S))$.

#hei[26.]　在楚列斯基因子分解 $bold(S) = bold(C)^T bold(C)$ 中, $bold(C) = sqrt(bold(D)) bold(L)^T$, 主元的平方根在 $bold(C)$ 的主对角线上. 求出以下矩阵 $bold(S)$ 对应的上三角形矩阵 $bold(C)$:

(a) $bold(S) = mat(delim: "[", 9, 0, 0; 0, 1, 2; 0, 2, 8)$; #h(2em) (b) $bold(S) = mat(delim: "[", 1, 1, 1; 1, 2, 2; 1, 2, 7)$.

#hei[27.]　对称的因子分解 $bold(S) = bold(L) bold(D) bold(L)^T$ 意味着 $bold(x)^T bold(S) bold(x) = bold(x)^T bold(L) bold(D) bold(L)^T bold(x)$:

#dmath[$ [x quad y] mat(delim: "[", a, b; b, c) mat(delim: "[", x; y) = [x quad y] mat(delim: "[", 1, 0; b/a, 1) mat(delim: "[", a, 0; 0, (a c - b^2)/a) mat(delim: "[", 1, b/a; 0, 1) mat(delim: "[", x; y). $]

上式左边为 $a x^2 + 2 b x y + c y^2$, 而右边为 $a (x + b/a y)^2 + \_\_\_\_ y^2$. 用第二个主元配方! 将 $a = 2$, $b = 4$, $c = 10$ 代入, 验证上述结论.

#hei[28.]　不将 $bold(S) = mat(delim: "[", cos theta, -sin theta; sin theta, cos theta) mat(delim: "[", 2, 0; 0, 5) mat(delim: "[", cos theta, sin theta; -sin theta, cos theta)$ 乘开, 求

(a) $bold(S)$ 的行列式; #h(2em) (b) $bold(S)$ 的特征值;

(c) $bold(S)$ 的特征向量; #h(2em) (d) 一个判别 $bold(S)$ 是对称正定矩阵的理由.

#hei[29.]　对 $F_1(x, y) = 1/4 x^4 + x^2 y + y^2$ 和 $F_2(x, y) = x^3 + x y - x$, 求出对应的二阶导数矩阵 $bold(S)_1$ 和 $bold(S)_2$:

#dmath[$ "判别最小值" quad bold(S) = mat(delim: "[", (dif^2 F)/(dif x^2), (dif^2 F)/(dif x dif y); (dif^2 F)/(dif y dif x), (dif^2 F)/(dif y^2)) quad "是正定的." $]

$bold(S)_1$ 是正定的, 故 $F_1$ 是向上凹的 (即凸的). 求出 $F_1$ 的最小值点. 求出 $F_2$ 的鞍点 (只需观察使一阶偏导数均为零的点).

#hei[30.]　函数 $z = x^2 + y^2$ 的图形是 “开口向上的碗”, 函数 $z = x^2 - y^2$ 的图形是 “马鞍”; 函数 $z = -x^2 - y^2$ 的图形是 “开口向下的碗”. 函数 $z = a x^2 + 2 b x y + c y^2$ 的系数 $a, b, c$ 满足什么条件时, 点 $(x, y) = (0, 0)$ 为其鞍点?

#hei[31.]　考虑函数 $z = 4x^2 + 12x y + c y^2$ 的图形. 当 $c$ 取何值时, 该图形是碗形? 当 $c$ 取何值时, 图形有一个鞍点? 描述在 $c$ 取前两个范围的边界值时的图形.

#hei[补充材料: 函数 $F(x, y, z)$ 的最小值]

最小值点的判别条件是什么? 首先一阶偏导数要为零: 在最小值点处一阶偏导数为零, 即

#dmath[$ (dif F)/(dif x) = (dif F)/(dif y) = (dif F)/(dif z) = 0. $]

#pagebreak()