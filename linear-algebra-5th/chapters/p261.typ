#import "../theme.typ": *

读者可能会认为投影到全空间很简单, 不值一提. 但是当 $p = bold(b)$ 时, 利用公式 (5) 可将 $bold(b)$ 的各个一维投影组合起来, 仍得到 $bold(b)$: 如果 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$ 是全空间的标准正交基, 那么 $bold(Q)$ 是方阵, 每个 $bold(b) = bold(Q) bold(Q)^T bold(b)$ 就是沿着各个 $bold(q)_i$ 方向的分量之和, 即

#block(stroke: 0.6pt, inset: (x: 8pt, y: 8pt), width: 100%, radius: 2pt, above: 12pt, below: 12pt)[
  #grid(columns: (1fr, auto), align: (center+horizon, right+horizon),
    [$ bold(b) = bold(q)_1 (bold(q)_1^T bold(b)) + bold(q)_2 (bold(q)_2^T bold(b)) + dots.c + bold(q)_n (bold(q)_n^T bold(b)). $],
    [$(6)$],
  )
]

变换 $bold(Q) bold(Q)^T = bold(I)$ 是傅里叶级数以及应用数学中所有伟大 "变换" 的基础. 这些变换将向量 $bold(b)$ 或者函数 $f(x)$ 分解为互相垂直的部分, 而逆变换则是像 (6) 式一样将各部分相加 (或积分) 以恢复 $bold(b)$ 和 $f(x)$.

#hei[例 4]  如下三阶正交矩阵 $bold(Q)$ 的各列 $bold(q)_1, bold(q)_2, bold(q)_3$ 是标准正交向量:

#dmath[$ m = n = 3 quad bold(Q) = 1/3 mat(delim: "[", -1, 2, 2; 2, -1, 2; 2, 2, -1) quad "满足" quad bold(Q)^T bold(Q) = bold(Q) bold(Q)^T = bold(I). $]

$bold(b) = (0, 0, 1)$ 在 $bold(q)_1, bold(q)_2$ 和 $bold(q)_3$ 上的投影分别为 $p_1, p_2$ 和 $p_3$:

#dmath[$ bold(q)_1 (bold(q)_1^T bold(b)) = 2/3 bold(q)_1, quad bold(q)_2 (bold(q)_2^T bold(b)) = 2/3 bold(q)_2, quad bold(q)_3 (bold(q)_3^T bold(b)) = -1/3 bold(q)_3. $]

前两个向量的和是 $bold(b)$ 到 $bold(q)_1$ 和 $bold(q)_2$ 所在平面上的投影, 全部三个向量的和是 $bold(b)$ 到全空间 $R^3$ 上的投影——即 $p_1 + p_2 + p_3 = bold(b)$ 自身:

重建 $bold(b)$, $bold(b) = p_1 + p_2 + p_3$

#dmath[$ 2/3 bold(q)_1 + 2/3 bold(q)_2 - 1/3 bold(q)_3 = 1/9 mat(delim: "[", -2 + 4 - 2; 4 - 2 - 2; 4 + 4 + 1) = mat(delim: "[", 0; 0; 1) = bold(b). $]

#subsec[格拉姆-施密特方法]

本节的要点在于 "正交性大有好处". 投影与最小二乘法总要涉及形如 $bold(A)^T bold(A)$ 的矩阵. 当该矩阵变成 $bold(Q)^T bold(Q) = bold(I)$ 时, 求逆也就不成问题了, 需要计算的是互不干扰的一维投影. 最优解 $hat(bold(x))$ 为 $bold(Q)^T bold(b)$ (只是多个独立的点积). 要使上述结果成真, 需要 "向量组是标准正交的". 现在阐释生成标准正交向量组的 "格拉姆-施密特方法".

先以三个线性无关向量 $bold(a), bold(b), bold(c)$ 为例. 这里计划构造三个正交向量 $A, B, C$#footnote[译者注: 这里也用大写字母表示向量.], 然后 (可能是最轻松的一步) 将 $A, B, C$ 除以各自的长度, 这样就生成了三个标准正交向量

#dmath[$ bold(q)_1 = A/norm(A), quad bold(q)_2 = B/norm(B), quad bold(q)_3 = C/norm(C). $]

格拉姆-施密特方法  首先取 $A = bold(a)$, 即不处理第一个向量. 下一个向量 $B$ 必须垂直于 $A$. 基于 $bold(b)$, 然后减去其沿 $A$ 方向的投影, 这就得到垂直部分, 即与 $A$ 正交的向量 $B$:

格拉姆-施密特方法第一步

#eqnum($ B = bold(b) - (A^T bold(b))/(A^T A) A. $, 7)

#pagebreak()