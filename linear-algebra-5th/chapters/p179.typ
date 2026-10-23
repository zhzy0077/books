#import "../theme.typ": *

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  列满秩 $m times n$ 矩阵 $bold(A)$ 的秩等于列数, 即 $r = n$, 它具有以下性质:

  #hei[1.] $bold(A)$ 的各列均为主元列;

  #hei[2.] 自由变量及特殊解不存在;

  #hei[3.] 零空间 $N(bold(A))$ 只含零向量 $bold(x) = 0$;

  #hei[4.] 如果 $bold(A) bold(x) = bold(b)$ 有解 (当然也可能无解), 那么它只有唯一解.
]

用第 3.4 节介绍的知识来描述, 矩阵 $bold(A)$ 的各列线性无关. 同时, 仅当 $bold(x) = 0$ 时, 有 $bold(A) bold(x) = 0$. 到了第 4 章, 上述列表内容又增加一条: 当 $bold(A)$ 的秩为 $n$ 时, 方阵 $bold(A)^T bold(A)$ 可逆.

列满秩 $m times n$ 矩阵 $bold(A)$ (和 $bold(R)$) 的零空间缩小为只含零向量的单点集. $bold(A) bold(x) = bold(b)$ 的解 (如果存在的话) 必然是唯一的. 此时, $bold(R)$ 中有 $m - n$ 个全零行, 因此关于 $bold(b)$ 要有 $m - n$ 个限制条件方可确保这些全零行对应 $0 = 0$, 即保证 $bold(b)$ 属于列空间. 当 $bold(A)$ 列满秩时, 方程组 $bold(A) bold(x) = bold(b)$ 要么有唯一解要么没有解 (当 $m > n$ 时, 称 $bold(A) bold(x) = bold(b)$ 为超定方程组).

#subsec[全解]

另一个极端情形就是行满秩. $m times n$ 矩阵 $bold(A)$ 行满秩是指它的秩等于行数, 即 $r = m$. 这时 $bold(A)$ 一定是矮宽形矩阵, 即 $m <= n$. 行满秩矩阵的每行都有一个主元, 可以称 "它的各行是线性无关的". 对应的方程组 $bold(A) bold(x) = bold(b)$ 有一个或者无穷多个解. 请见下例.

#hei[例 2]  如下线性方程组 $bold(A) bold(x) = bold(b)$ 有 $n = 3$ 个未知数, 但方程只有 $m = 2$ 个:

#align(center)[
  $"行满秩" quad cases(x + y + z = 3, x + 2y - z = 4) quad ("秩" r = m = 2) .$
]

这两个方程表示 $x y z$ 空间中的两个平面. 它们并不平行, 而是相交于一条直线. 这条直线由利用消元法得到的全部解组成. 如图 3.4 所示, 特解为该直线上一点. 该特解与零空间中解向量 $bold(x)_n$ 逐一相加, 得到的结果将沿着上述直线移动. 那么 $bold(x) = bold(x)_p + bold(x)_n$ 就给出了 $bold(A) bold(x) = bold(b)$ 的整条解直线.

#figure(image("../assets/fig-p179-fig34.png", width: 62%), numbering: none, caption: [图 3.4  全解 = 一个特解 + 全部零空间解.])

$bold(x)_p$ 和 $bold(x)_n$ 可利用对 $[bold(A) quad bold(b)]$ 做消元法求出来. 先从第 2 行中减去第 1 行, 再从第 1 行中减去第 2 行:

#align(center)[
  $mat(delim: "[", 1,1,1,3; 1,2,-1,4) -> mat(delim: "[", 1,1,1,3; 0,1,-2,1) -> mat(delim: "[", 1,0,3,2; 0,1,-2,1) = [bold(R) quad bold(d)] .$
]

自由变量 $x_3$ 取 0 时得到特解, 取 1 时得到特殊解:

特解直接由右边的 $bold(d)$ 给出: $bold(x)_p = (2, 1, 0)$,

特殊解由 $bold(R)$ 的第三列 (即自由列) 给出: $bold(s) = (-3, 2, 1)$.



#pagebreak()
