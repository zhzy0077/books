#import "../theme.typ": *

#hei[行列式与迹]

首先是坏消息: 如果将矩阵 $A$ 的某一行加到另一行上, 或者互换两行, 那么特征值通常会变. 消元法并不保持特征值 $lambda$ 不变. 消元所得的三角形矩阵 $U$ 的特征值沿着对角线分布——它们就是主元. 但它们并非 $A$ 的特征值! 一旦第 1 行加到第 2 行, 特征值就改变了, 例如,

#dmath[$ U = mat(delim: "[", 1, 3; 0, 0) "的特征值为" lambda = 0 "和" lambda = 1, quad A = mat(delim: "[", 1, 3; 2, 6) "的特征值为" lambda = 0 "和" lambda = 7. $]

然后是好消息: 特征值之积 $lambda_1 lambda_2 dots.c lambda_n$ 以及特征值之和 $lambda_1 + lambda_2 + dots.c + lambda_n$ 可由矩阵迅速求得. 对于上述 $A$, 特征值之积为 0 乘 7, 这与行列式的值一致 (也是 0); 特征值之和为 0 + 7, 这与对角元素的和一致 (迹为 1 + 6). 对 $n$ 阶方阵, 可以证明如下结论:

#dingli[
  #align(center)[$n$ 个特征值之积等于行列式,]
  #align(center)[$n$ 个特征值之和等于 $n$ 个对角元素之和.]
]

矩阵 $A$ 的对角元素之和称为矩阵 $A$ 的迹, 记为 $"tr"(A)$:

#grid(
  columns: (1fr, auto),
  align: horizon,
  align(center)[#box(stroke: 0.6pt, inset: (x: 16pt, y: 8pt), radius: 2pt)[
    $ lambda_1 + lambda_2 + dots.c + lambda_n = "tr"(bold(A)) = a_11 + a_22 + dots.c + a_(n n) $
  ]],
  [(6)],
)

上述结果很有用, 证明见习题 16 和习题 17 以及下一节. 当 $n > 2$ 时, 这些结果并没有提供计算特征值方法, 但可以用于检验计算结果是否正确. 想算出正确的 $lambda$, 仍需解方程 $det(A - lambda I) = 0$.

对于 $2 times 2$ 矩阵, 迹与行列式共同决定了两个特征值. 绝不应该弄错! 以下矩阵的迹为 3, 行列式为 2, 故特征值为 $lambda = 1$ 和 2:

#eqnum($ bold(A) = mat(delim: "[", 1, 9; 0, 2) quad "或" quad mat(delim: "[", 3, 1; -2, 0) quad "或" quad mat(delim: "[", 7, -3; 10, -4) . $, 7)

三角形矩阵是容易求出特征值的最佳矩阵, 下面有个关于它的问题:

#align(center)[为什么三角形矩阵的特征值沿着它的对角线分布?]

#hei[虚特征值]

还有一条 (不算太糟糕的) 消息: 特征值可能不是实数.

#hei[例 5]　$90 degree$ 旋转矩阵 $Q = mat(delim: "[", 0, -1; 1, 0)$ 没有实特征值, 它的特征值是 $lambda_1 = i$ 和 $lambda_2 = -i$. 此时 $lambda_1 + lambda_2 = "tr"(Q) = 0$ 以及 $lambda_1 lambda_2 = det Q = 1$.

#pagebreak()