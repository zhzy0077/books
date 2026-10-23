#import "../theme.typ": *

#dingliC[
  到 $z$ 轴上的投影矩阵 $bold(P)_1 = mat(delim: "[", 0,0,0; 0,0,0; 0,0,1)$,

  到 $x y$ 平面上的投影矩阵 $bold(P)_2 = mat(delim: "[", 1,0,0; 0,1,0; 0,0,0)$.
]

左乘任意三维向量时, 由 $bold(P)_1$ 得到 $z$ 分量, 由 $bold(P)_2$ 得到 $x$ 分量与 $y$ 分量. 用矩阵 $bold(P)_1$ 和 $bold(P)_2$ 分别左乘向量 $bold(b)$, 可以得到 $bold(b)$ 的投影 $bold(p)_1$ 和 $bold(p)_2$ (注意: 小写字母 $p$ 表示投影向量, 大写字母 $P$ 表示产生投影的矩阵):

#dmath[$ bold(p)_1 = bold(P)_1 bold(b) = mat(delim: "[", 0,0,0; 0,0,0; 0,0,1) vec(delim: "[", x, y, z) = vec(delim: "[", 0, 0, z), $]

#dmath[$ bold(p)_2 = bold(P)_2 bold(b) = mat(delim: "[", 1,0,0; 0,1,0; 0,0,0) vec(delim: "[", x, y, z) = vec(delim: "[", x, y, 0). $]

此例中投影 $bold(p)_1$ 与 $bold(p)_2$ 互相垂直, 这是由于 $x y$ 平面与 $z$ 轴是正交子空间, 就像房间中的地板平面与两墙交线的关系.

上述直线与平面不仅正交, 还是正交补, 两者维数相加为 $1 + 2 = 3$. 全空间中任意向量 $bold(b)$ 等于它在这两个子空间中的部分之和. 投影 $bold(p)_1$ 与 $bold(p)_2$ 就是 $bold(b)$ 的这两个部分:

#eqnum($ "投影向量满足" bold(p)_1 + bold(p)_2 = bold(b), quad "投影矩阵满足" bold(P)_1 + bold(P)_2 = bold(I). $, 1)

这个结果相当完美. 就本例而言, 前述问题已经得到解答. 而对于任意直线、任意平面以及任意子空间, 仍有相同的问题, 即找到向量 $bold(b)$ 在每个子空间中的投影 $bold(p)$ 以及满足 $bold(p) = bold(P) bold(b)$ 的投影矩阵 $bold(P)$. $R^m$ 的每个子空间均有各自的 $m times m$ 投影矩阵. 为了求出 $bold(P)$, 完全有必要准确描述相关投影子空间.

对子空间最好的描述方式就是利用它的一组基. 以基向量为矩阵 $bold(A)$ 的各列, 问题就变为到 $bold(A)$ 的列空间上的投影!

无疑 $z$ 轴是 $3 times 1$ 矩阵 $bold(A)_1$ 的列空间, $x y$ 平面是矩阵 $bold(A)_2$ 的列空间, 也是 $bold(A)_3$ 的列空间 (因为子空间可以有多组基):

#dmath[$ bold(A)_1 = vec(delim: "[", 0, 0, 1), quad bold(A)_2 = mat(delim: "[", 1,0; 0,1; 0,0), quad bold(A)_3 = mat(delim: "[", 1,2; 2,3; 0,0), $]

因此 $bold(p)_2 = bold(p)_3$ 且 $bold(P)_2 = bold(P)_3$. 现在的问题是将任意向量 $bold(b)$ 投影到任意 $m times n$ 矩阵的列空间上. 下面先讨论直线情形 (维数 $n = 1$), 对应的矩阵 $bold(A)$ 只有 1 列, 设该列向量为 $bold(a)$.

#pagebreak()