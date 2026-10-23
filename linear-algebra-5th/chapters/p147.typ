#import "../theme.typ": *

#hei[28.] 证明: 一般不能通过重新排列矩阵的行和列来实现转置运算. (注意主对角线上的元素.)

以下三道习题是关于恒等式 $(bold(A) bold(x))^T bold(y) = bold(x)^T (bold(A)^T bold(y))$ 的应用的.

#hei[29.] 在波士顿、芝加哥和西雅图这三个城市之间铺设电缆, 设这些城市的电势分别是 $x_B, x_C, x_S$ 且城市之间存在单位电阻, 则城市之间的电流记为 $bold(y)$:

#dmath[$ bold(y) = bold(A) bold(x) quad mat(y_(B C); y_(C S); y_(B S)) = mat(1,-1,0;0,1,-1;1,0,-1) mat(x_B; x_C; x_S) . $]

(a) 计算这三个城市各自输出的总电流 $bold(A)^T bold(y)$;

(b) 验证 $(bold(A) bold(x))^T bold(y)$ 等于 $bold(x)^T (bold(A)^T bold(y))$ (均为 6 项之和);

#hei[30.] 设制造 $x_1$ 辆卡车和 $x_2$ 架飞机共需要 $(x_1 + 50 x_2)$ t 钢铁, $(40 x_1 + 1000 x_2)$ kg 橡胶和 $(2 x_1 + 50 x_2)$ 月的工期. 若钢铁、橡胶和工期的单位成本 $y_1, y_2, y_3$ 分别是 700 元/t, 3 元/kg 和 3000 元/月, 请构造合适的矩阵 $bold(A)$ 并利用 $bold(A)^T bold(y)$ 计算出每辆汽车和每架飞机的成本 (参考第 31 题).

#hei[31.] 利用 $bold(A) bold(x)$ 可计算钢铁、橡胶和工期各自的总量, 由此引入第 30 题所需向量 $bold(x)$, 并写出矩阵 $bold(A)$, 则 $(bold(A) bold(x)) dot bold(y)$ 是输入 \_\_\_\_ 而 $bold(x) dot bold(A)^T bold(y)$ 是 \_\_\_\_ 成本.

#hei[32.] 若置换矩阵 $bold(P)$ 左乘 $(x, y, z)$ 后得 $(z, x, y)$, 则 $bold(P)$ 也是旋转矩阵, 请计算出 $bold(P)$ 和 $bold(P)^3$. 此时旋转轴 $bold(a) = (1, 1, 1)$ 等于 $bold(P) bold(a)$, 保持不动, 请问从 $bold(v) = (2, 3, -5)$ 到 $bold(P) bold(v) = (-5, 2, 3)$ 的旋转角度是多少?

#hei[33.] 请将矩阵 $bold(A) = mat(1,2;4,9)$ 写成乘积 $bold(E) bold(S)$ 的形式, 其中 $bold(E)$ 是一个初等行变换矩阵, $bold(S)$ 是对称矩阵.

#hei[34.] 以下是一个新分解式 $bold(A) = bold(L) bold(S)$, 即三角形矩阵 (主对角线的元素是 1) 左乘对称矩阵:

#dmath[$text("由") bold(A) = bold(L) bold(D) bold(U) text("可得") bold(A) = bold(L) (bold(U)^T)^(-1) bold(S), text("其中") bold(S) = bold(U)^T bold(D) bold(U).$]

请分析为什么 $bold(L) (bold(U)^T)^(-1)$ 是一个下三角形矩阵? 它的主对角线上元素都是 1. 为什么 $bold(U)^T bold(D) bold(U)$ 是对称矩阵?

#hei[35.] 包含 $bold(A)$ 和 $bold(B)$ 的矩阵群一定包含 $bold(A) bold(B)$ 和 $bold(A)^(-1)$. “群关于乘法满足封闭性且存在逆元.” 下列哪些集合可以构成群? 全体主对角线上元素是 1 的下三角形矩阵 $bold(L)$, 全体对称矩阵 $bold(S)$, 全体正定矩阵 $bold(M)$, 全体可逆对角矩阵 $bold(D)$, 全体置换矩阵 $bold(P)$, 全体正交矩阵 $bold(Q)$. 请另外写出两个矩阵群.



#pagebreak()
