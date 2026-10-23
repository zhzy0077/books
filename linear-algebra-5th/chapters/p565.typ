#import "../theme.typ": *

#align(center, subsec[11.2  范数与条件数])

如何度量一个 $n$ 阶矩阵的大小? 对于向量 $bold(x)$, 其长度是 $norm(bold(x))$; 对于矩阵 $bold(A)$, 其范数为 $norm(bold(A))$. “范数” 一词有时也用于向量, 等同于长度. 矩阵通常使用范数来度量大小, 但是 $norm(bold(A))$ 有很多定义方式. 下面给出一些 “矩阵范数” 的定义, 然后从中选取一个来使用.

弗罗贝尼乌斯定义矩阵 $bold(A)$ 的范数时, 先取所有元素的平方 $|a_(i j)|^2$ 然后求和, 并将范数 $norm(bold(A))_F$ 定义为该和的平方根. 这样定义 $bold(A)$ 的范数类似于一个 $n^2$ 维向量的长度, 这个定义有时是有用的, 但本书不采用这样的定义.

本书更倾向于类比向量范数来给出矩阵范数的定义. 向量范数满足三角不等式: $norm(bold(x) + bold(y)) <= norm(bold(x)) + norm(bold(y))$, 且 $2 bold(x)$ 或 $-2 bold(x)$ 的长度均为 $2 norm(bold(x))$. 矩阵范数遵循同样的要求:

#dingliC[$ norm(bold(A) + bold(B)) <= norm(bold(A)) + norm(bold(B)), quad norm(c bold(A)) = |c| dot norm(bold(A)) . $ (1)]

对矩阵范数的下一个要求是向量情形没有的, 这是由于矩阵还具有乘法运算. 范数 $norm(bold(A))$ 控制从 $bold(x)$ 到 $bold(A) bold(x)$, 以及从 $bold(B)$ 到 $bold(A) bold(B)$ 的增长率:

#dmath[$ "增长因子" norm(bold(A)) quad norm(bold(A) bold(x)) <= norm(bold(A)) norm(bold(x)), quad norm(bold(A) bold(B)) <= norm(bold(A)) norm(bold(B)) . $ (2)]

这就自然引出了一种矩阵范数 $norm(bold(A))$ 的定义:

#dingliC[$ bold(A) "的范数是" norm(bold(A) bold(x))/norm(bold(x)) "的最大值:" quad norm(bold(A)) = max_(bold(x) != 0) norm(bold(A) bold(x))/norm(bold(x)) . $ (3)]

上述定义表明 $norm(bold(A) bold(x))/norm(bold(x))$ 永远不会大于 $norm(bold(A))$, 因此 $norm(bold(A) bold(x)) <= norm(bold(A)) norm(bold(x))$.

例 1  若 $bold(A)$ 为单位矩阵 $bold(I)$, 上述比值为 $norm(bold(x))/norm(bold(x))$, 因此 $norm(bold(I)) = 1$. 若 $bold(A)$ 为正交矩阵 $bold(Q)$, 作用于向量后, 向量的长度也不会发生变化: $norm(bold(Q) bold(x)) = norm(bold(x))$, 上述比值仍给出 $norm(bold(Q)) = 1$. 正交矩阵 $bold(Q)$ 具有非常好的性质: 将其用于计算并不会导致误差增加.

例 2  对角矩阵的范数就是对角元素取绝对值之后的最大值:

#dmath[$ bold(A) = mat(delim: "[", 2, 0; 0, 3) quad "的范数" quad norm(bold(A)) = 3, quad "其特征向量" quad bold(x) = mat(delim: "[", 0; 1) quad "满足" quad bold(A) bold(x) = 3 bold(x) . $]

$bold(A)$ 的一个特征值为 3. 对该矩阵 $bold(A)$ 而言, 其最大特征值等于其范数. 此结论对一般的矩阵 $bold(A)$ 不成立.

#dmath[$ "对称正定矩阵" bold(A) "的范数" norm(bold(A)) = lambda_max (bold(A)) . $]

#pagebreak()