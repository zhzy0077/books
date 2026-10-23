#import "../theme.typ": *

#hei[例 5]  描述如下矩阵 $bold(A)$ 的列空间和行空间, 这里 $m = 3$ 和 $n = 2$:

#align(center)[
  $bold(A) = mat(delim: "[", 1,4;2,7;3,5), quad "即" quad bold(A)^T = mat(delim: "[", 1,2,3;4,7,5).$
]

$bold(A)$ 的列空间是 $R^3$ 中的平面, 它由 $bold(A)$ 的两列生成. $bold(A)$ 的行空间由 $bold(A)$ 的三行 (即 $bold(A)^T$ 的三列) 生成. 这个行空间就是整个 $R^2$. 须知: 生成行空间的各行是 $R^n$ 中的向量, 生成列空间的各列是 $R^m$ 中的向量. 一样的数值, 不一样的向量, 不一样的空间.

#subsec[向量空间的基]

两个 (三维) 向量即便线性无关, 也不可能生成整个 $R^3$; 四个 (三维) 向量即便生成了 $R^3$, 也不可能线性无关. 这提示我们, 需要考虑生成空间的足够多 (又不是太多) 的线性无关向量. 一组 "基" 刚刚好.

#gainian[定义][向量空间的基是具有以下两条性质的一组向量:

#align(center, hei[基向量线性无关, 且生成整个空间.])]

这两条性质的结合构成了线性代数的基础. 由于基生成了空间, 所以空间中任意向量 $bold(v)$ 都是基向量的线性组合. 不止如此, 由于基向量 $bold(v)_1, bold(v)_2, ..., bold(v)_n$ 线性无关, 所以生成向量 $bold(v)$ 的线性组合是唯一的:

#align(center)[将 $bold(v)$ 写成基向量的线性组合, 有且仅有一种方式.]

#hei[理由]  设

#dmath[$
  bold(v) = a_1 bold(v)_1 + a_2 bold(v)_2 + dots.c + a_n bold(v)_n , \
  bold(v) = b_1 bold(v)_1 + b_2 bold(v)_2 + dots.c + b_n bold(v)_n ,
$]

两式相减得

#align(center)[
  $(a_1 - b_1) bold(v)_1 + (a_2 - b_2) bold(v)_2 + ... + (a_n - b_n) bold(v)_n$ 等于零向量.
]

由基向量 $bold(v)_i$ 是线性无关的, 可知每组系数 $a_i - b_i = 0$. 因此 $a_i = b_i$, 从而说明基向量生成 $bold(v)$ 不存在两种方式.

#hei[例 6]  单位矩阵 $bold(I) = mat(delim: "[", 1,0;0,1)$ 的列向量组构成 $R^2$ 的 "标准基":

#align(center)[
  基向量 $bold(i) = mat(delim: "[", 1;0)$ 和 $bold(j) = mat(delim: "[", 0;1)$ 线性无关, 且它们生成了 $R^2$.
]

这组向量是大家会最先想到的一组基. 在平面直角坐标系中, 向量 $bold(i)$ 水平向右, 而向量 $bold(j)$ 笔直向上. $3 times 3$ 单位矩阵的列构成标准基 $bold(i), bold(j), bold(k)$. $n times n$ 单位矩阵的列构成 $R^n$ 的 "标准基".



#pagebreak()
