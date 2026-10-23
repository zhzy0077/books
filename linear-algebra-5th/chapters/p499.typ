#import "../theme.typ": *

#hei[电压、电流和 $bold(A)^T bold(A) bold(x) = bold(f)$]

先考虑各顶点处的电势 $bold(x) = (x_1, x_2, dots, x_n)$, 则 $bold(A) bold(x)$ 表示沿各边的电压 $x_i - x_j$. 由电流定律 $bold(A)^T bold(y) = bold(0)$ 可以推出沿各边的电流 $bold(y) = (y_1, y_2, dots, y_m)$. 若电路中的所有电阻均为 1, 则由欧姆定律导出 $bold(y) = bold(A) bold(x)$, 因此 $bold(A)^T bold(y) = bold(A)^T bold(A) bold(x) = bold(0)$. 这与 $bold(A)^T bold(y) = bold(f)$ 接近但仍有区别.

如果没有电源, $bold(A)^T bold(A) bold(x) = bold(0)$ 的解表示没有电流流动: $bold(x) = bold(0)$ 且 $bold(y) = bold(0)$. 有以下三种方法可以使得 $bold(x) != bold(0)$ 且 $bold(y) != bold(0)$:

(1) 给一个或多个顶点指定电势 $x_i$;

(2) 给一条或多条边增加电源 (产生电压);

(3) 给一个或多个顶点增加电流, 见图 10.4.

例如, 图 10.4 中的电路具有电源 $S$, 提供流入顶点 $x_1$ 的电流. 这股电流将沿电路流向顶点 4: 电流 $y_4$ 直接沿边 4 移动, 其他电流沿从顶点 1 到顶点 2 再到顶点 4, 或从顶点 1 到顶点 3 再到顶点 4 的长线路流动. 由对称性可推测, 没有从顶点 2 到顶点 3 的电流 ($y_3 = 0$), 求解电路方程组将验证这一点. 方程组的系数矩阵为 $bold(A)^T bold(A)$, 即图的拉普拉斯矩阵:

#dmath[$ mat(delim: "[", -1, -1, 0, -1, 0, 0; 1, 0, -1, 0, -1, 0; 0, 1, 1, 0, 0, -1; 0, 0, 0, 1, 1, 1) mat(delim: "[", -1, 1, 0, 0; -1, 0, 1, 0; 0, -1, 1, 0; -1, 0, 0, 1; 0, -1, 0, 1; 0, 0, -1, 1) = mat(delim: "[", 3, -1, -1, -1; -1, 3, -1, -1; -1, -1, 3, -1; -1, -1, -1, 3). $]

#align(right)[$bold(A)^T bold(A)$]

该拉普拉斯矩阵不是可逆的! 由于 $(1, 1, 1, 1)$ 在 $bold(A)$ 的零空间中, 继而在 $bold(A)^T bold(A)$ 的零空间中, 因此不能求出 $bold(x)$ 中的全部电势. 要想求解电路方程组, 一个顶点必须接地. 令 $x_4 = 0$, 则可移除矩阵 $bold(A)^T bold(A)$ 的第 4 行和第 4 列, 得到一个 $3 times 3$ 可逆系数矩阵. 下列求解简化后的方程组 $bold(A)^T bold(A) bold(x) = bold(f)$ 中的未知电势 $x_1, x_2, x_3$:

#grid(
  columns: (auto, 1fr),
  align(right + horizon)[电压 \ $ bold(A)^T bold(A) bold(x) = bold(f) $],
  align(center, $ mat(delim: "[", 3, -1, -1; -1, 3, -1; -1, -1, 3) mat(delim: "[", x_1; x_2; x_3) = mat(delim: "[", S; 0; 0) quad "解得" quad mat(delim: "[", x_1; x_2; x_3) = mat(delim: "[", S\/2; S\/4; S\/4), $),
)

#grid(
  columns: (auto, 1fr),
  align(right + horizon)[电流 \ $ bold(y) = -bold(A) bold(x) $],
  align(center, $ mat(delim: "[", y_1; y_2; y_3; y_4; y_5; y_6) = -mat(delim: "[", -1, 1, 0, 0; -1, 0, 1, 0; 0, -1, 1, 0; -1, 0, 0, 1; 0, -1, 0, 1; 0, 0, -1, 1) mat(delim: "[", S\/2; S\/4; S\/4; 0) = mat(delim: "[", S\/4; S\/4; 0; S\/2; S\/4; S\/4). $),
)

一半电流直接流入顶点 4, 即 $y_4 = S/2$. 没有电流在顶点 2 与顶点 3 之间流动. 对称性暗示 $y_3 = 0$, 现在的解证实了这一点.

#pagebreak()