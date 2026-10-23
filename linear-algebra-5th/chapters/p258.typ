#import "../theme.typ": *

#dingli[则称 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$ 是标准正交向量组. 这时, 将各列分别为 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$ 的矩阵记为 $bold(Q)$.]

矩阵 $bold(Q)$ 很容易处理, 因为 $bold(Q)^T bold(Q) = bold(I)$, 这是用矩阵语言描述 "各列 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$ 标准正交". 应注意, 矩阵 $bold(Q)$ 不一定是方阵.

#dingliC[
  #hei[具有标准正交列的矩阵 $bold(Q)$ 满足 $bold(Q)^T bold(Q) = bold(I)$:]

  #eqnum($ bold(Q)^T bold(Q) = mat(delim: "[", bold(q)_1^T; bold(q)_2^T; dots.v; bold(q)_n^T) mat(delim: "[", bold(q)_1, bold(q)_2, dots.c, bold(q)_n) = mat(delim: "[", 1, 0, dots.c, 0; 0, 1, dots.c, 0; dots.v, dots.v, dots.down, dots.v; 0, 0, dots.c, 1) = bold(I). $, 1)
]

当 $bold(Q)^T$ 的第 $i$ 行左乘 $bold(Q)$ 的第 $j$ 列时, 点积为 $bold(q)_i^T bold(q)_j$. 根据正交性可知, 对角线之外 ($i != j$) 点积为零. 而在对角线上 ($i = j$), 由单位向量推出 $bold(q)_i^T bold(q)_i = norm(bold(q)_i)^2 = 1$. 通常, $m times n$ 矩阵 $bold(Q)$ 是长方形的 ($m > n$), 偶尔才有 $m = n$.

当 $bold(Q)$ 为方阵时, $bold(Q)^T bold(Q) = bold(I)$ 意味着 $bold(Q)^T = bold(Q)^(-1)$, 即转置等于逆.

如果各列只是两两正交 (并非单位向量), 由点积依然得到一个对角矩阵 (不是单位矩阵). 这个对角矩阵几乎与单位矩阵 $bold(I)$ 一样便于使用. 正交性更重要, 继而容易生成单位向量.

再次重复: 即便 $bold(Q)$ 是长方形的, 也有 $bold(Q)^T bold(Q) = bold(I)$. 此时 $bold(Q)^T$ 只是左逆. 对于方阵 $bold(Q)$, 也有 $bold(Q) bold(Q)^T = bold(I)$, 那么 $bold(Q)^T$ 就是 $bold(Q)$ 的双边逆. 此时, 方阵 $bold(Q)$ 的行如同其列一样是标准正交的. 逆就是转置. 在方阵的情形下, 称 $bold(Q)$ 为正交矩阵.#footnote[对正交矩阵 $bold(Q)$ 而言, "标准正交矩阵" 的名字会更合理, 但这一个名字并未被采用. 本书中, 任何具有标准正交列的矩阵都用字母 $bold(Q)$ 表示. 但只有它是方阵时, 才称为正交矩阵.]

以下是正交矩阵的三个例子——旋转矩阵、置换矩阵和反射矩阵. 判断矩阵 $bold(Q)$ 是不是正交矩阵最快的方法就是验证 $bold(Q)^T bold(Q) = bold(I)$ 是否成立.

#hei[例 1] (旋转矩阵)  如下矩阵 $bold(Q)$ 将平面中任意向量 (逆时针) 旋转 $theta$ 角:

#dingliC[
  #dmath[$ bold(Q) = mat(delim: "[", cos theta, -sin theta; sin theta, cos theta), quad bold(Q)^T = bold(Q)^(-1) = mat(delim: "[", cos theta, sin theta; -sin theta, cos theta). $]
]

$bold(Q)$ 的列是正交的 (计算点积即知). 又由于 $sin^2 theta + cos^2 theta = 1$, 故各列都是单位向量. 它们给出了平面 $R^2$ 的一组标准正交基.

用 $bold(Q)$ 左乘的作用是将标准基向量 $bold(i)$ 和 $bold(j)$ 旋转 $theta$ 角 (图 4.13(a)), 而用 $bold(Q)^(-1)$ 左乘将所得向量旋转 $-theta$ 角, 即又转回来了. $bold(Q)^(-1)$ 与 $bold(Q)^T$ 一致, 因为 $cos(-theta) = cos theta$, 而 $sin(-theta) = -sin theta$. 因此得到 $bold(Q)^T bold(Q) = bold(I)$ 和 $bold(Q) bold(Q)^T = bold(I)$.



#pagebreak()