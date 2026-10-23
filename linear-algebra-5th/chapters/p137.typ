#import "../theme.typ": *

#subsec[内积的含义]

由之前的学习可知, $n$ 维向量 $bold(x)$ 和 $bold(y)$ 的点积 (内积) 是所有 $x_i y_i$ 之和. 现在用矩阵符号可以更好地表示 $bold(x) dot bold(y)$, 而不是使用 “不够专业” 的 “.”:

#hei[#super[T] 在内侧]　点积或内积 $bold(x)^T bold(y)$,　形如 $(1 times n)(n times 1)$;

#hei[#super[T] 在外侧]　秩 1 的乘积或者外积 $bold(x) bold(y)^T$,　形如 $(n times 1)(1 times n)$.

矩阵的秩的定义见后续章节. $bold(x)^T bold(y)$ 是一个数字, $bold(x) bold(y)^T$ 是一个矩阵. 在量子力学中它们分别写成 $lr(chevron.l x | y chevron.r)$ (内积) 和 $|x chevron.r chevron.l y|$ (外积), 因此整个宇宙可能都是由线性代数支配的. 下列是具有内积含义的三个例子:

#hei[力学问题]　做功 = (位移)(力) = $bold(x)^T bold(f)$,

#hei[电路问题]　热损失 = (电压)(电流) = $bold(e)^T bold(y)$,

#hei[经济问题]　收入 = (数量)(价格) = $bold(q)^T bold(p)$.

这已经非常接近应用数学的核心了. 还有一个问题需要强调: 内积与转置之间具有更深的关联.

$bold(A)^T$ 可用矩阵 $bold(A)$ 沿主对角线的翻转来定义, 但这不是数学定义, 还有更好的方法来描述转置. 对任意的向量 $bold(x)$ 和 $bold(y)$, $bold(A)^T$ 就是使得以下两个内积相等的矩阵:

#dmath[$ (bold(A) bold(x))^T bold(y) = bold(x)^T (bold(A)^T bold(y)) , $]

即 $bold(A) bold(x)$ 与 $bold(y)$ 的内积等于 $bold(x)$ 与 $bold(A)^T bold(y)$ 的内积.

下面举例说明. 考虑

#dmath[$ bold(A) = mat(-1,1,0;0,-1,1) , quad bold(x) = mat(x_1;x_2;x_3) , quad bold(y) = mat(y_1;y_2) . $]

$bold(A) bold(x)$ 与 $bold(y)$ 的内积为

#dmath[$ (x_2 - x_1) y_1 + (x_3 - x_2) y_2 , $]

经整理可得

#dmath[$ x_1 (-y_1) + x_2 (y_1 - y_2) + x_3 y_2 . $]

将该式写成 $bold(x)$ 与 $bold(A)^T bold(y)$ 的内积时, 必定有

#dmath[$ bold(A)^T bold(y) = mat(-y_1;y_1 - y_2;y_2) , $]

从而可得预期的

#dmath[$ bold(A)^T = mat(-1,0;1,-1;0,1) . $]



#pagebreak()
