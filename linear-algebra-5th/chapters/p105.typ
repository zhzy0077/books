#import "../theme.typ": *

(4) 用矩阵 $bold(A)$ 的列左乘 $bold(B)$ 的行, 得到外积 (将矩阵相加得 $bold(A) bold(B)$).

#ti[29.][请确定消元矩阵 $bold(E)_(21)$ 和 $bold(E)_(31)$, 使得 $bold(E)_(21) bold(A)$ 和 $bold(E)_(31) bold(A)$ 在位置 (2,1) 和位置 (3,1) 的元素是 0:

#dmath[$ bold(A) = mat(2, 1, 0; -2, 0, 1; 8, 5, 3) . $]

求矩阵 $bold(E) = bold(E)_(31) bold(E)_(21)$ 使得 $bold(E) bold(A)$ 在上述两个位置的元素同时为 0, 并计算 $bold(E) bold(A)$.]

#ti[30.][分块矩阵乘法可借助下述运算在第 1 列中消元:

#dmath[$ bold(E) bold(A) = mat(1, 0; -c/a, bold(I)) mat(a, b; c, bold(D)) = mat(a, b; 0, bold(D) - (c b)/a), $]

其中 $bold(b)$ 为行向量, 请问在习题 29 中, 哪些数字构成了 $c$ 和 $bold(D)$? 哪些数字构成了 $bold(D) - (c b)/a$?]

#ti[31.][已知 $i^2 = -1$, 则 $(bold(A) + i bold(B))(bold(x) + i bold(y)) = bold(A) bold(x) + i bold(B) bold(x) + i bold(A) bold(y) - bold(B) bold(y)$. 利用分块矩阵将不含 $i$ 的实部与乘 $i$ 的虚部分开 (用矩阵表示上述乘法):

#grid(columns: (auto, auto), column-gutter: 1em, align: (right + horizon, left + horizon),
  [$ mat(bold(A), -bold(B); ?, ?) mat(bold(x); bold(y)) = mat(bold(A) bold(x) - bold(B) bold(y); ?) $],
  [(实部) \ (虚部)],
)]

#ti[32.][(非常重要) 假设对下列三个特殊的常数项向量 $bold(b)$ 求解线性方程组 $bold(A) bold(x) = bold(b)$:

#dmath[$ bold(A) bold(x)_1 = mat(1; 0; 0), quad bold(A) bold(x)_2 = mat(0; 1; 0), quad bold(A) bold(x)_3 = mat(0; 0; 1) . $]

若三个解 $bold(x)_1, bold(x)_2, bold(x)_3$ 是矩阵 $bold(X)$ 的各列, 请计算 $bold(A) bold(X)$.]

#ti[33.][若习题 32 的三个解分别是 $bold(x)_1 = (1, 1, 1), bold(x)_2 = (0, 1, 1)$ 和 $bold(x)_3 = (0, 0, 1)$, 请求出当 $bold(b) = (3, 5, 8)$ 时 $bold(A) bold(x) = bold(b)$ 的解. 挑战题: 请求出系数矩阵 $bold(A)$.]

#ti[34.][请求出使得 $bold(A) mat(1, 1; 1, 1) = mat(1, 1; 1, 1) bold(A)$ 成立的全部矩阵 $bold(A) = mat(a, b; c, d)$.]

#ti[35.][设一个 "圆形图" 有 4 个顶点且顶点之间沿圆周有边 (双向) 连接. 请首先参考例 2.4 A 写出图的邻接矩阵 $bold(S)$, 然后计算 $bold(S)^2$, 并利用 $bold(S)^2$ 找出所有步长为 2 的路径.

#align(center)[#image("../assets/fig-p105-icon.png", width: 3.2%)]]

#xiti[挑 战 题]

#ti[36.][(实际问题) 设 $bold(A)$ 是 $m times n$ 矩阵, $bold(B)$ 是 $n times p$ 矩阵, $bold(C)$ 是 $p times q$ 矩阵, 则计算 $bold(A) bold(B)$ 的乘法次数是 $m n p$, 计算 $(bold(A) bold(B)) bold(C)$ 的乘法次数是 $m n p + m p q$. 而依结合律计算同一个矩阵 $bold(A) (bold(B) bold(C))$ 的乘法次数是 $m n q + n p q$, 其中计算 $bold(B) bold(C)$ 的乘法次数是 $n p q$.]



#pagebreak()
