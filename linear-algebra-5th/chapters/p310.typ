#import "../theme.typ": *

三个比值 $(det bold(B)_j)/(det bold(A))$ 给出了 $bold(x) = (2, -1, 1)$ 的三个分量. 因为 $bold(b) = (0, 0, 1)$ 是 $bold(I)$ 的第 3 列, 所以这个 $bold(x)$ 是 $bold(A)^(-1)$ 的第 3 列.

同理, 用 $bold(A)$ 其他行元素的代数余子式除以 $det bold(A)$ 可得 $bold(A)^(-1)$ 的其他列:

#dmath[$ bold(A)^(-1) = (bold(C)^T)/(det bold(A)) = 1/2 mat(delim: "[", -18, 18, 4; 10, -10, -2; -11, 12, 2) . $]

可用乘法 $bold(A) bold(A)^(-1) = bold(I)$ 检验上述结果. 以 $bold(A)$ 各列为相邻三边的平行六面体体积是 $det bold(A) = 2$. 因 $|bold(A)^T| = |bold(A)|$, 故以 $bold(A)$ 各行为相邻三边的平行六面体体积也是 2. 而以 $bold(A)^(-1)$ 各行为相邻三边的平行六面体体积是 $1/(|bold(A)|) = 1/2$.

#align(center)[#image("../assets/fig-p310-icon.png", width: 2.6%)]

#xiti[习题集 5.3]

习题 1—5 是关于克拉默法则 $bold(x) = bold(A)^(-1) bold(b)$ 的.

#ti[1.][请利用克拉默法则 $x_j = (det bold(B)_j)/(det bold(A))$ 求解线性方程组:

#sub[(a) $cases(2 x_1 + 5 x_2 = 1, x_1 + 4 x_2 = 2)$ #h(3em) (b) $cases(2 x_1 + x_2 = 1, x_1 + 2 x_2 + x_3 = 0, x_2 + 2 x_3 = 0) .$]]

#ti[2.][请利用克拉默法则求解未知量 $y$ (只求一个未知量), 将三阶行列式记为 $D$ (未知量为 $x, y, z$):

#sub[(a) $cases(a x + b y = 1, c x + d y = 0)$ #h(3em) (b) $cases(a x + b y + c z = 1, d x + e y + f z = 0, g x + h y + i z = 0) .$]]

#ti[3.][当 $det bold(A) = 0$ 时, 克拉默法则失效. 如下所示的 (a) 无解而 (b) 有无穷多解. 请问这两种情况下比值 $x_j = (det bold(B)_j)/(det bold(A))$ 是什么?

#sub[(a) $cases(2 x_1 + 3 x_2 = 1, 4 x_1 + 6 x_2 = 1)$ (平行线); #h(2em) (b) $cases(2 x_1 + 3 x_2 = 1, 4 x_1 + 6 x_2 = 2)$ (同一条线).]]

#ti[4.][(克拉默法则的快速证明). 行列式是第 1 列元素的线性函数; 若有两列相等, 则行列式等于零. 用 $bold(b) = bold(A) bold(x) = x_1 bold(a)_1 + x_2 bold(a)_2 + x_3 bold(a)_3$ 替换矩阵 $bold(A)$ 的第 1 列得到矩阵 $bold(B)_1$, 则 $bold(B)_1$ 的行列式是

#dmath[$ |bold(b) quad bold(a)_2 quad bold(a)_3| = |x_1 bold(a)_1 + x_2 bold(a)_2 + x_3 bold(a)_3 quad bold(a)_2 quad bold(a)_3| $]

#dmath[$ = x_1 |bold(a)_1 quad bold(a)_2 quad bold(a)_3| = x_1 det bold(A) . $]]

#pagebreak()