#import "../theme.typ": *

#dingli[性质 5　从一行中减去另一行的倍数, 行列式保持不变.]

#grid(columns: (auto, 1fr), column-gutter: 24pt,
  align(horizon)[从第 2 行中减去 \ 第 1 行的 $l$ 倍],
  align(horizon)[$mat(delim: "|", a, b; c - l a, d - l b) = mat(delim: "|", a, b; c, d).$],
)

利用性质 3 (线性性质) 将左侧行列式分拆成右侧行列式加上 $-l mat(delim: "|", a, b; a, b)$. 显然额外的这一项两行相同, 由性质 4 知其值为零. 因此性质 5 是正确的 (并不仅限于 2 阶方阵).

#yaodian[结论　从 $A$ 到 $U$ 的常规消元步骤 (不换行) 不改变方阵的行列式, 因此 $det A$ 等于 $det U$. 计算出上三角形矩阵 $U$ 的行列式就能得到矩阵 $A$ 的行列式. 每一次换行都会改变行列式的正负号, 从而总有 $det A = plus.minus det U$. 性质 5 将计算一般方阵的行列式问题简化为计算三角形矩阵的行列式问题.]

#dingli[性质 6　若方阵 $A$ 某一行的元素全为零, 则 $det A = 0$.]

#grid(columns: (auto, 1fr), column-gutter: 24pt,
  align(horizon)[有零行],
  align(horizon)[$mat(delim: "|", 0, 0; c, d) = 0, quad mat(delim: "|", a, b; 0, 0) = 0.$],
)

简要证明: 将其他任意一行加到零行, 由性质 5 可知行列式保持不变. 又因矩阵有两行相同, 由性质 4 可得 $det A = 0$.

#dingli[性质 7　若 $A = (a_(i j))_(n times n)$ 是一个三角形矩阵, 则 $det A = a_(11) a_(22) dots.c a_(n n)$ 为主对角线上元素的乘积.]

#grid(columns: (auto, 1fr), column-gutter: 24pt,
  align(horizon)[三角形矩阵],
  align(horizon)[$mat(delim: "|", a, b; 0, d) = a d, quad mat(delim: "|", a, 0; c, d) = a d.$],
)

设一个三角形矩阵主对角线上的元素都不为零, 利用消元法可将主对角线之外的元素变成零! (若 $A$ 是下三角形矩阵, 则从下方行中减去对应主元行的倍数; 若 $A$ 是上三角形矩阵, 则从上方行中减.) 根据性质 5, 消元过程中行列式保持不变——从而得到一个对角矩阵:

#grid(columns: (auto, 1fr), column-gutter: 24pt,
  align(horizon)[对角矩阵],
  align(horizon)[$det mat(delim: "|", a_11, , , 0; , a_22, , ; , , dots.down, ; 0, , , a_(n n)) = a_11 a_22 dots.c a_(n n).$],
)

利用性质 3, 上式左边首先从第 1 行中提出因子 $a_11$, 然后从第 2 行中提出因子 $a_22$, 以此类推, 直到从最后一行提出因子 $a_(n n)$, 则原行列式等于 $a_11 a_22 dots.c a_(n n) det I$. 最后由性质 1 得 $det I = 1$.

三角形矩阵 $A$ 中如果主对角线上有一个元素 $a_(i i)$ 是零会怎样呢? 此时三角形矩阵 $A$ 是奇异矩阵: 因为用消元法会得到一个零行. 由性质 5, 消元时行列式保持不变, 又由性质 6, 出现零行意味着 $det A = 0$. 这样就得到了矩阵是奇异还是可逆的一个重要检验方法.

#pagebreak()