#import "../theme.typ": *

#align(center, subsec[与 $R^n$ 中线性代数的比较])

无限维希尔伯特空间很像 $n$ 维空间 $R^n$. 设非零向量 $bold(v)_1, bold(v)_2, dots, bold(v)_n$ 在 $R^n$ 中是正交的, 则可以将向量 $bold(b)$ 写成这些 $bold(v)_i$ 的线性组合:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ "有限正交级数" quad bold(b) = c_1 bold(v)_1 + c_2 bold(v)_2 + dots + c_n bold(v)_n. $],
  align(bottom)[$(13)$],
)

两边左乘 $bold(v)_1^T$, 利用正交性得到 $bold(v)_1^T bold(v)_i = 0$, $i = 2, 3, dots, n$, 即仅剩下 $c_1$ 项:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ "系数" c_1 quad bold(v)_1^T bold(b) = c_1 bold(v)_1^T bold(v)_1 + 0 + dots + 0, quad "因此" c_1 = (bold(v)_1^T bold(b))/(bold(v)_1^T bold(v)_1). $],
  align(bottom)[$(14)$],
)

分母 $bold(v)_1^T bold(v)_1$ 是 $bold(v)_1$ 长度的平方, 与 (11) 式中的 $pi$ 类似. 分子 $bold(v)_1^T bold(b)$ 与 $integral_0^(2 pi) f(x) cos k x dif x$ 类似, 都是内积. 当基向量正交时, 系数很容易求得. 求每个基向量对应的系数时, 上述方法为到基向量所在直线做一维投影.

当基向量标准正交时, 系数公式会更简单. 此时, 基向量为单位向量, 以它们为列向量可构成正交矩阵 $bold(Q)$. 计算系数时, 分母 $bold(v)_k^T bold(v)_k$ 全为 1. 还可以用另一种形式给出 $c_k = bold(v)_k^T bold(b)$:

#dmath[$ "关于" c_i "的方程" quad c_1 bold(v)_1 + c_2 bold(v)_2 + dots + c_n bold(v)_n = bold(b), $]

即

#dmath[$ mat(delim: "[", bold(v)_1, bold(v)_2, dots, bold(v)_n) mat(delim: "[", c_1; c_2; dots.v; c_n) = bold(b), quad "或" quad bold(Q) bold(c) = bold(b), $]

由此可得, $bold(c) = bold(Q)^T bold(b)$. 具体到每行, 即有 $c_k = bold(q)_k^T bold(b)$.

傅里叶级数可理解为用一个含无限多个标准正交列的矩阵 $bold(Q)$ 左乘系数矩阵 $(a_0, a_1, b_1, a_2, b_2, dots)$. 这些列是基函数 $1, cos x, sin x, cos 2x, sin 2x, dots$ 除以它们的长度, 因此 $bold(Q)$ 为“无限阶正交矩阵”. 它的逆为其转置 $bold(Q)^T$. 当求积分时, 正交性将无穷多项简化为单独一项.

#xiti[习题集 10.5]

#ti[1.][通过对三角恒等式 $2 cos j x cos k x = cos(j + k)x + cos(j - k)x$ 积分证明 $cos j x$ 与 $cos k x$ 在区间 $[0, 2 pi]$ 上正交, 其中 $j != k$. 当 $j = k$ 时结果又如何?]

#ti[2.][证明当从 $x = -1$ 到 $x = 1$ 积分时, $1, x$ 和 $x^2 - 1/3$ 是正交的. 再将 $f(x) = 2x^2$ 写成这些正交函数的线性组合.]

#ti[3.][找到一个与向量 $bold(v) = (1, 1/2, 1/4, dots)$ 正交的向量 $bold(w) = (w_1, w_2, w_3, dots)$, 并计算其模 $norm(bold(w))$.]

#pagebreak()