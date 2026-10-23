#import "../theme.typ": *

不妨验算 $bold(x)_p$ 与 $bold(s)$ 是否分别满足原方程组 $bold(A) bold(x)_p = bold(b)$ 和齐次方程组 $bold(A) bold(s) = 0$:

#dmath[$ cases(2 + 1 = 3, 2 + 2 = 4) quad text("与") quad cases(-3 + 2 + 1 = 0, -3 + 4 - 1 = 0) .$]

零空间解 $bold(x)_n$ 为 $bold(s)$ 的任意倍数. 全解从特解 $bold(x)_p$ 出发, 沿着解直线移动. 请再次注意答案的形式:

#dingliC[$"全解" quad bold(x) = bold(x)_p + bold(x)_n = mat(delim: "[", 2; 1; 0) + x_3 mat(delim: "[", -3; 2; 1) .$]

方程组 $bold(A) bold(x) = bold(b)$ 的解直线已在图 3.4 中画出. 该直线上任意点均可选作特解. 不妨选取 $x_3 = 0$ 的对应点作为特解.

特解不能乘任意常数! 而特殊解则需要乘倍数, 这样才能生成零空间中的全部的 $bold(x)_n$.

现在总结一下关于行满秩的矮宽形矩阵的结论. 当 $m < n$ 时, 称 $m times n$ 方程组 $bold(A) bold(x) = bold(b)$ 是欠定的 (此时方程组有无穷多个解).

#yaodian[
  行满秩 $m times n$ 矩阵 $bold(A)$ 的秩等于行数, 即 $r = m$, 它具有如下性质:

  #hei[1.] 各行均有主元, 而 $bold(R)$ 没有全零行;

  #hei[2.] 对于任意常数项 $bold(b)$, 方程组 $bold(A) bold(x) = bold(b)$ 均有解;

  #hei[3.] 列空间为整个 $R^m$ 空间;

  #hei[4.] $bold(A)$ 的零空间包含 $n - r = n - m$ 个特殊解.
]

既然有 $m$ 个主元, 那么 $bold(A)$ 的各行就是 "线性无关的". 于是 $bold(A)^T$ 的各列也是线性无关的, 因此 $bold(A)^T$ 的零空间只含零向量.

根据系数矩阵的秩的不同, 可对线性方程组进行分类. 一旦总结出以下四种分类, 就可以给出线性无关的定义了. 注意下面是如何对关键指标 $r$, $m$, $n$ 的大小关系进行讨论的.

#hei[线性方程组根据系数矩阵的秩 $r$ 分为四种情形:]

#align(center)[#grid(
  columns: (auto, auto),
  column-gutter: 2.5em,
  row-gutter: 8pt,
  align: (left + horizon, left + horizon),
  [$r = m "且" r = n$], [$bold(A) "为可逆方阵," bold(A) bold(x) = bold(b) "有唯一解;"$],
  [$r = m "且" r < n$], [$bold(A) "为矮宽形矩阵," bold(A) bold(x) = bold(b) "有无穷多解;"$],
  [$r < m "且" r = n$], [$bold(A) "为高瘦形矩阵," bold(A) bold(x) = bold(b) "无解或有唯一解;"$],
  [$r < m "且" r < n$], [$bold(A) "不是满秩矩阵," bold(A) bold(x) = bold(b) "无解或有无穷多解."$],
)]

$bold(A)$ 与它的最简行阶梯形矩阵 $bold(R)$ 同属一类. 假使主元列碰巧集中于前几列, $bold(R)$ 的四种分类如下所示:

#align(center)[
  #grid(columns: (auto, auto, auto, auto, auto), column-gutter: 20pt, row-gutter: 10pt, align: horizon,
    [$bold(R)$ 的四种类型], [$bold(I)$], [$mat(delim: "[", bold(I), bold(F))$], [$mat(delim: "[", bold(I); bold(O))$], [$mat(delim: "[", bold(I), bold(F); bold(O), bold(O))$],
    [矩阵的秩], [$r = m = n$], [$r = m < n$], [$r = n < m$], [$r < m, r < n$],
  )
]



#pagebreak()
