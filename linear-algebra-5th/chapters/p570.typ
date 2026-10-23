#import "../theme.typ": *

#ti[7.][(a) 利用哪个著名的不等式可以证明任意 $bold(x)$ 均满足 $norm((bold(A) + bold(B)) bold(x)) <= norm(bold(A) bold(x)) + norm(bold(B) bold(x))$?
(b) 证明由矩阵范数的定义 (3) 可推出 $norm(bold(A) + bold(B)) <= norm(bold(A)) + norm(bold(B))$.]

#ti[8.][若 $lambda$ 是矩阵 $bold(A)$ 的任一特征值, 证明 $|lambda| <= norm(bold(A))$. 可从 $bold(A) bold(x) = lambda bold(x)$ 开始考虑.]

#ti[9.][“谱半径” $rho(bold(A)) = |lambda_max|$ 是特征值取绝对值之后的最大值. 列举两个二阶矩阵的例子说明, $rho(bold(A) + bold(B)) <= rho(bold(A)) + rho(bold(B))$ 及 $rho(bold(A) bold(B)) <= rho(bold(A)) rho(bold(B))$ 均不成立. 因此谱半径不能视为矩阵的某种范数.]

#ti[10.][(a) 解释为什么矩阵 $bold(A)$ 和 $bold(A)^(-1)$ 的条件数相等;
(b) 考虑 $lambda(bold(A)^T bold(A))$ 和 $lambda(bold(A) bold(A)^T)$, 解释为什么矩阵 $bold(A)$ 和 $bold(A)^T$ 的范数相等.]

#ti[11.][试估计病态矩阵 $bold(A) = mat(1, 1; 1, 1.0001)$ 的条件数.]

#ti[12.][为什么 $bold(A)$ 的行列式不能视为 $bold(A)$ 的某种范数, 也不能作为 $bold(A)$ 的条件数?]

#ti[13.][(莫勒 (Moler) 和 文·罗恩推荐) 计算 $bold(b) - bold(A) bold(y)$ 和 $bold(b) - bold(A) bold(z)$, 其中,

#dmath[$ bold(b) = mat(delim: "[", 0.217; 0.254), quad bold(A) = mat(delim: "[", 0.780, 0.563; 0.913, 0.659), quad bold(y) = mat(delim: "[", 0.341; -0.087), quad bold(z) = mat(delim: "[", 0.999; -1.0) . $]

$bold(y)$ 是否比 $bold(z)$ 更接近 $bold(A) bold(x) = bold(b)$ 的真解? 两种途径可以回答该问题: 比较残差 $bold(b) - bold(A) bold(y)$ 与 $bold(b) - bold(A) bold(z)$; 或者将 $bold(y)$ 和 $bold(z)$ 与真解 $bold(x) = (1, -1)$ 比较. 我们有时希望残差更小, 有时希望 $Delta bold(x)$ 更小, 因此两种途径都是可行的.]

#ti[14.][(a) 计算第 13 题中 $bold(A)$ 的行列式, 并计算 $bold(A)^(-1)$;

#sub[(b) 计算 $norm(bold(A))$ 和 $norm(bold(A)^(-1))$, 并证明 $c > 10^6$.]]

第 15—19 题是关于向量范数的, 除了通常的 $norm(bold(x)) = sqrt(bold(x) dot bold(x))$, 还考虑其他的向量范数.

#ti[15.][$n$ 维向量 $bold(x) = (x_1, x_2, dots.c, x_n)$ 的 “$ell^1$ 范数” 和 “$ell^infinity$ 范数” 分别定义为

#dmath[$ norm(bold(x))_1 = |x_1| + |x_2| + dots.c + |x_n|, quad norm(bold(x))_infinity = max_(1 <= i <= n) |x_i| . $]

分别计算 $R^5$ 中下列两个向量的三种范数 $norm(bold(x)), norm(bold(x))_1$ 及 $norm(bold(x))_infinity$:

#align(center)[(a) $bold(x) = (1, 1, 1, 1, 1)$; #h(2.5em) (b) $bold(x) = (0.1, 0.7, 0.3, 0.4, 0.5)$.]]
#ti[16.][对 $n$ 维向量 $bold(x)$, 证明

#dmath[$ norm(bold(x))_infinity <= norm(bold(x)) <= norm(bold(x))_1 . $]

由施瓦茨不等式, 证明 $norm(bold(x))/norm(bold(x))_infinity$ 及 $norm(bold(x))_1/norm(bold(x))$ 不大于 $sqrt(n)$. 哪个向量 $(x_1, x_2, dots.c, x_n)$ 可使前述比值分别等于 $sqrt(n)$?]

#ti[17.][所有向量范数均应满足三角不等式. 证明

#dmath[$ norm(bold(x) + bold(y))_infinity <= norm(bold(x))_infinity + norm(bold(y))_infinity, quad norm(bold(x) + bold(y))_1 <= norm(bold(x))_1 + norm(bold(y))_1 . $]]

#pagebreak()