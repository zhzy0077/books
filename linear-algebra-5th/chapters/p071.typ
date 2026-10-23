#import "../theme.typ": *

#figure(
  grid(columns: (1fr, 1fr), column-gutter: 12pt,
    [
      #align(center, image("../assets/fig-p071-l.png", width: 96%))
      #align(center)[(a) 两个方程对应同一直线, #linebreak() 所有解都在该直线上]
    ],
    [
      #align(center, image("../assets/fig-p071-r.png", width: 96%))
      #align(center)[(b) 等号右边向量 $mat(delim: "[", 1; 3)$ 在 #linebreak() 列向量对应的直线上]
    ],
  ),
  caption: [图 2.7  例 2 的行图与列图: 无穷多解.],
  numbering: none,
)

消元法失效还可能有第三种情形, 但这种情形能够被修正. 假设第一个主元位置的数是 0, 而 0 不能作主元. 此时第一个方程不包含 $x$ 项, 可将它与下方的方程交换:

#hei[例 3]  主元出现 0, 消元法暂时失效. 一次换行得到两个主元:

#align(center)[
#v(4pt)
#grid(
  columns: (auto, auto, auto),
  column-gutter: 2.5em,
  align: (center + horizon, center + horizon, center + horizon),
  [置换 #h(0.4em) $ cases(0x + 2y = 4, 3x - 2y = 5) , $],
  [交换两个方程得],
  [$ cases(3x - 2y = 5, 2y = 4) .$],
)
#v(4pt)
]

新的方程组 (左侧) 已经是三角形的形状, 可直接回代计算. 由第二个方程解得 $y = 2$, 代入第一个方程后解得 $x = 3$. 方程组的行图 (两条相交的直线)、列图 (两个列向量不共线)、主元 (3 和 2) 都是正常的情况——但消元时需换行一次.

例 1 和例 2 是奇异的情形——不存在第二个主元. 奇异的方程组无解或有无穷多解. 例 3 是非奇异的情形——存在完整的主元集且只有唯一解. 主元在消元过程中被用作除数, 因此一定不能为 0.

#subsec[含三个未知数的三个方程]

要完全理解高斯消元法就不能只限于考察 $2 times 2$ 方程组, 需研究 $3 times 3$ 方程组才能完整阐述该方法. 现在考虑的系数矩阵均为方阵——行数与列数相等. 以下是一个特别构造的 $3 times 3$ 方程组, 在消元过程中得到的系数都是整数而非分数:

#dmath[$ cases(2x + 4y - 2z = 2, 4x + 9y - 3z = 8, -2x - 3y + 7z = 10). $]

求解这个方程组包括哪些消元步骤呢? 第一个主元是左上角的 2, 这个主元下方是要消除的 4, 第一个乘数是二者的比值 $4/2 = 2$. 从第二个方程中减去主元所在方程乘 $ell_(21) = 2$ 的结果, 就能消去其中的 $4x$:

#hei[第一步]  从第二个方程中减去第一个方程的 2 倍, 得到 $y + z = 4$.



#pagebreak()
