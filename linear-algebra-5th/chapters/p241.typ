#import "../theme.typ": *

#ti[26.][如果 $m times m$ 矩阵 $bold(A)$ 满足 $bold(A)^2 = bold(A)$ 且秩为 $m$, 证明 $bold(A) = bold(I)$.]

#ti[27.][本节结尾处的重要事实: 如果 $bold(A)^T bold(A) bold(x) = 0$, 那么 $bold(A x) = 0$. 新的证明方法: 向量 $bold(A x)$ 在 $\_\_\_\_$ 的零空间中, 而 $bold(A x)$ 又总是在 $\_\_\_\_$ 的列空间中. 由于同时属于这两个互相垂直的空间, 故 $bold(A x)$ 必为零向量.]

#ti[28.][利用 $bold(P)^T = bold(P)$ 和 $bold(P)^2 = bold(P)$ 证明: $bold(P)$ 第二列的长度平方等于主对角线元素 $p_(2 2)$. 比如对于矩阵

#dmath[$ bold(P) = 1/6 mat(delim: "[", 5, 2, -1; 2, 2, 2; -1, 2, 5) , $]

此数为 $2/6 = 4/36 + 4/36 + 4/36$.]

#ti[29.][设 $m times n$ 矩阵 $bold(B)$ 的秩为 $m$ (即行满秩, 亦即各行线性无关), 证明 $bold(B) bold(B)^T$ 可逆.]

#align(center)[#image("../assets/fig-p218-icon.png", width: 3.2%)]
#xiti[挑 战 题]

#ti[30.][(a) 仔细观察矩阵

#dmath[$ bold(A) = mat(delim: "[", 3, 6, 6; 4, 8, 8) , $]

求出到 $bold(A)$ 列空间上的投影矩阵 $bold(P)_C$;

(b) 求出到 $bold(A)$ 行空间上的 $3 times 3$ 投影矩阵 $bold(P)_R$. 计算乘积 $bold(B) = bold(P)_C bold(A) bold(P)_R$. 所得结果 $bold(B)$ 应当有点意外——试解释原因.]

#ti[31.][在 $R^m$ 中, 任给向量 $bold(b)$ 以及 $bold(p), bold(a)_1, bold(a)_2, dots.c, bold(a)_n$. 那么如何检验 $bold(p)$ 是不是 $bold(b)$ 在 $bold(a)_1, bold(a)_2, dots.c, bold(a)_n$ 生成的子空间上的投影?]

#ti[32.][设矩阵

#dmath[$ bold(A) = mat(delim: "[", 1, 0; 2, 1; 0, 1) , $]

$bold(P)_1$ 是到 $bold(A)$ 首列所生成的一维子空间上的投影矩阵, $bold(P)_2$ 是到 $bold(A)$ 的二维列空间上的投影矩阵. 略作思考, 再计算乘积 $bold(P)_2 bold(P)_1$.]

#ti[33.][已知 $b_1, b_2, dots.c, b_999$ 的平均值 $hat(x)_"旧"$. 当得到 $b_1000$ 时, 检验新平均值 $hat(x)_"新"$ 为 $hat(x)_"旧"$ 与 $b_1000 - hat(x)_"旧"$ 的线性组合, 即:

#dmath[$ hat(x)_"新" &= (b_1 + b_2 + dots.c + b_1000)/1000 \ &= (b_1 + b_2 + dots.c + b_999)/999 + 1/1000 (b_1000 - (b_1 + b_2 + dots.c + b_999)/999) . $]]

#pagebreak()