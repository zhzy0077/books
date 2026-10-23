#import "../theme.typ": *

#grid(
  columns: (auto, 1fr),
  align: (left + horizon, center + horizon),
  image("../assets/fig-p478-bracket.png", height: 32pt),
  hei[9.2  埃尔米特矩阵和酉矩阵],
)

本节的主要内容可用一句话概括: 对一个复向量 $z$ 或复矩阵 $A$ 转置后, 还要再取复共轭, 即不能止步于 $z^T$ 或者 $A^T$, 而应继续对所有虚部取相反的符号. 对于分量为 $z_j = a_j + i b_j$ 的列向量 $z$, 它的共轭转置 $overline(z)^T$ 是分量为 $a_j - i b_j$ 的行向量:

#eqnumL([共轭转置], $ overline(z)^T = [overline(z)_1 quad overline(z)_2 quad dots.c quad overline(z)_n] = [a_1 - i b_1 quad a_2 - i b_2 quad dots.c quad a_n - i b_n] . $, 1)

转置后还要取共轭的一种解释是, 实向量 $x = (x_1, x_2, dots.c, x_n)$ 的长度平方为

$ x_1^2 + x_2^2 + dots.c + x_n^2, $

而复向量 $z = (z_1, z_2, dots.c, z_n)$ 的长度平方却并非 $z_1^2 + z_2^2 + dots.c + z_n^2$. 如果按照这个错误的定义, 向量 $(1, i)$ 的长度平方将是 $1^2 + i^2 = 0$, 导致非零向量的 “长度” 为零的谬误. 而且其他向量也可能出现长度为复数的情况. 相较于 $(a + b i)^2$, 人们需要的是绝对值的平方 $a^2 + b^2$, 即 $(a + b i)$ 乘 $(a - b i)$.

对于每个复分量 $z_j$, 我们用 $z_j$ 乘 $overline(z)_j$, 得到 $abs(z_j)^2 = a_j^2 + b_j^2$. 当 $z$ 的分量与 $overline(z)$ 的分量对应相乘再取和后, 可得:

#eqnumL([长度平方], $ [overline(z)_1 quad overline(z)_2 quad dots.c quad overline(z)_n] mat(delim: "[", z_1; z_2; dots.v; z_n) = abs(z_1)^2 + abs(z_2)^2 + dots.c + abs(z_n)^2, quad "即" quad overline(z)^T z = norm(z)^2 . $, 2)

这样, 向量 $(1, i)$ 的长度平方为 $1^2 + abs(i)^2 = 2$, 其长度为 $sqrt(2)$; 向量 $(1 + i, 1 - i)$ 的长度平方为 4. 唯一具有零长度的向量就是零向量.

#dingliC[长度 $norm(z)$ 是 $overline(z)^T z = z^H z = abs(z_1)^2 + abs(z_2)^2 + dots.c + abs(z_n)^2$ 的平方根.]

后文都用一个符号代替两个符号: 只需使用一个上标 H, 就取代了表示共轭的横线和表示转置的上标 T, 即 $overline(z)^T = z^H$. 这就是 $z$ 的共轭转置. 该符号也适用于矩阵: 矩阵 $A$ 的共轭转置为 $A^H$. $A$ 的共轭转置的另一个常见记号为 $A^*$. MATLAB 软件的转置命令 ' 会自动地实施复共轭操作 ('z' 为 $z^H = overline(z)^T$, 而 'A' 为 $A^H = overline(A)^T$).

$ A^H "为" "A 共轭转置" quad quad quad "设" A = mat(delim: "[", 1, i; 0, 1 + i), quad "则" A^H = mat(delim: "[", 1, 0; -i, 1 - i). $

#hei[复内积]

实向量 $x$ 的长度平方为 $x^T x$, 即 $x$ 与其自身的内积. 复向量 $z$ 的长度平方为 $z^H z$. 如果 $z^H z$ 也是复向量 $z$ 与其自身的内积, 则可与实向量情形一致. 为此, 复内积定义中采用的是共轭转置 (而不仅仅是转置), 而取共轭并不影响实向量.

#pagebreak()