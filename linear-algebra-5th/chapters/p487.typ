#import "../theme.typ": *

1 的四次方根也在图 9.4 中, 它们是 $"i", -1, -"i", 1$, 间隔角度为 $(2 pi)/4$, 即 $90°$. 第一个根 $w_4 = e^(2 pi "i" slash 4)$ 就是 $"i"$. 容易知道 1 的二次方根 1 与 $w_2 = e^("i" 2 pi slash 2) = -1$ 依然在图 9.4 中, 此处不应忽视它们. 快速傅里叶变换背后的思想是将用 $8 times 8$ 傅里叶矩阵 (包含八次方根 $w_8$ 的幂) 左乘变换为用下面的 $4 times 4$ 傅里叶矩阵 (包含四次方根 $w_4 = "i"$ 的幂) 左乘, 继而将用 4 阶傅里叶矩阵左乘变换为用二阶傅里叶矩阵左乘. 通过探究 $bold(F)_8$ 降阶到 $bold(F)_4$ 以及升阶到 $bold(F)_16$ (以及更高阶) 的规律, 快速傅里叶变换使得用 $bold(F)_(1 024)$ 左乘向量更迅速.

首先介绍阶数 $n = 4$ 的傅里叶矩阵 $bold(F)$. 它的各行包含 1 的四次方根 $1, w, w^2$ 和 $w^3$ 及其幂, 它们排列的次序相当特别.

#dmath[$ "傅里叶矩阵," quad n = 4, w = "i" quad bold(F) = mat(delim: "[", 1, 1, 1, 1; 1, w, w^2, w^3; 1, w^2, w^4, w^6; 1, w^3, w^6, w^9) = mat(delim: "[", 1, 1, 1, 1; 1, "i", "i"^2, "i"^3; 1, "i"^2, "i"^4, "i"^6; 1, "i"^3, "i"^6, "i"^9). $]

由于 $bold(F) = bold(F)^T$, 所以矩阵 $bold(F)$ 是对称矩阵. 但 $bold(F)$ 并非埃尔米特矩阵, 因为它的对角线元素不全是实数. 同时由于 $(1/2 bold(F)^H)(1/2 bold(F)) = bold(I)$, 所以 $1/2 bold(F)$ 是酉矩阵:

#yaodian[
由 $bold(F)$ 的列向量可知 $bold(F)^H bold(F) = 4 bold(I)$. $bold(F)$ 的逆矩阵 $bold(F)^(-1)$ 为 $1/4 bold(F)^H$, 亦即 $1/4 overline(bold(F))$.
]

$bold(F)$ 中的 $w = "i"$ 对应 $bold(F)^(-1)$ 中的 $overline(w) = -"i"$, 即可由 $overline(bold(F))$ 直接得到 $bold(F)^(-1)$. 当快速傅里叶变换实现用 $bold(F)$ 快速左乘向量时, 它同样完成了用 $overline(bold(F))$ 和 $bold(F)^(-1)$ 快速左乘向量.

由于 $n$ 阶傅里叶矩阵每列的长度为 $sqrt(n)$, 所以对应的酉矩阵为 $bold(Q) = bold(F)/sqrt(n)$ 和 $bold(Q)^(-1) = overline(bold(F))/sqrt(n)$. 一般情况下避免使用 $sqrt(n)$, 而是使用 $bold(F)$ 和 $bold(F)^(-1) = overline(bold(F))/n$.

接下来考察用 $bold(F)$ 左乘 $c = (c_0, c_1, c_2, c_3)$:

#dmath[$ "4 点傅里叶级数" quad mat(delim: "[", y_0; y_1; y_2; y_3) = bold(F) c = mat(delim: "[", 1, 1, 1, 1; 1, w, w^2, w^3; 1, w^2, w^4, w^6; 1, w^3, w^6, w^9) mat(delim: "[", c_0; c_1; c_2; c_3). $]

输入为四个复系数 $c_0, c_1, c_2, c_3$, 输出为四个函数值 $y_0, y_1, y_2, y_3$. 第一个输出 $y_0 = c_0 + c_1 + c_2 + c_3$ 为傅里叶级数 $sum_(k=0)^3 c_k e^("i" k x)$ 在点 $x = 0$ 处的值. 第二个输出为级数 $sum_(k=0)^3 c_k e^("i" k x)$ 在点 $x = (2 pi)/4$ 处的值:

#dmath[$ y_1 = c_0 + c_1 e^("i" 2 pi slash 4) + c_2 e^("i" 4 pi slash 4) + c_3 e^("i" 6 pi slash 4) = c_0 + c_1 w + c_2 w^2 + c_3 w^3. $]

#pagebreak()