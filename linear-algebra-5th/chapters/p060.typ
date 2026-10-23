#import "../theme.typ": *

$bold(R)^n$ 中的向量 $bold(x)$ 是用 $n times 1$ 矩阵 (与本书一样), 编程输入矩阵时, 每次输入一行, 用分号表示一行的结束; 或者用 ' 表示转置来输入列:

#align(center)[
  #raw("A = [1  2  3;  2  5  2;  6  -3  1],") \
  #raw("x = [0  0  2]'")  或者  $bold(x) = [0;  0;  2].$
]

在 MATLAB 中有三种不同的方法来计算 $bold(A) bold(x)$, 通常直接使用 A*x. 实际上, MATLAB 是一种能够处理矩阵运算的高级编程语言:

#yaodian[
  #align(center)[矩阵乘法    #raw("b = A * x.")]
]

也可以挑出 $bold(A)$ 的各行来计算 (作为一个更小的矩阵!), 例如, 得到第 1 行这个 $1 times 3$ 子矩阵的指令是 #raw("A(1, :)"), 这里的冒号“:”意为保留第 1 行的所有列.

#align(center)[每次计算一行    #raw("b = [A(1,:) * x; A(2, :) * x; A(3,:) * x]")]

上式中 $b$ 的每个分量都是点积: 行向量左乘列向量, 即 $1 times 3$ 矩阵左乘 $3 times 1$ 矩阵.

另一种方法是使用 $bold(A)$ 的各列来计算. 第 1 列就是 $3 times 1$ 子矩阵 #raw("A(:,1)"). 将冒号“:”写在前面表示保留第 1 列的所有行. 将第 1 列乘 #raw("x(1)"), 其余两列分别乘 #raw("x(2)") 与 #raw("x(3)"):

#align(center)[逐列相乘    #raw("b=A(:, 1) * x(1) + A(:, 2)* x(2) + A(:, 3)* x(3)")]

作者认为矩阵是按列来存储的, 因此逐列相乘会更快, 且 A*x 就是按列进行运算的.

#subsec[数学与统计学的编程语言]

以下列举了另外五种重要的编程语言以及它们执行乘法运算 $bold(A) bold(x)$ 的指令:

#grid(columns: (auto, auto, 1fr), column-gutter: 1.6em, row-gutter: 8pt,
  [Julia], [#raw("A*x")], [搜索 julialang 以访问对应网站],
  [Python], [#raw("dot(A,x)")], [搜索 python 以访问对应网站],
  [R], [#raw("A%*%x")], [搜索 r-project 以访问对应网站],
  [Mathematica], [#raw("A.x")], [搜索 wolfram mathematica 以访问对应网站],
  [Maple], [#raw("A*x")], [搜索 mapleoft 以访问对应网站],
)

Julia, Python 与 R 是免费的开源编程语言. R 语言是专门为统计学应用开发的. 在网络上对统计软件包的比较中还有对其他统计软件 (SAS, JMP 等) 的介绍. Mathematica 与 Maple 允许使用符号 $a, b, x, dots.c$ 而不只限于数字来计算. 与 MATLAB 的符号工具箱一样, 它们可以使用符号表达式, 例如 $x^2 - x$. Mathematica 的强大功能可利用 Wolfram Alpha 搜索引擎来了解. 各编程语言的官方网站上还有更多相关信息. 在与本书英文版配套的麻省理工学院线性代数课程的网站上可以了解 Julia, Python 与 R 语言的部分强大功能.

Julia 拥有类似于 SciPy (Python 工具包) 或 R 语言在技术计算上的高编程效率, 以及可与 C 语言或 Fortran 语言相媲美的性能, 能调用 Python 和 C/Fortran 的函数库. Julia 并不依赖于“向量化”的库函数来加速, 它的设计目的就是为了快速运算. 搜索 juliabox, 就可找到能使用 Julia 笔记本来计算的网站, Julia 笔记本是通过 Julia 命令行来进行数学计算



#pagebreak()
