#import "../theme.typ": *

#grid(
  columns: (1fr, auto),
  align: (right + horizon, right + horizon),
  [#line(length: 100%, stroke: 0.8pt)],
  hei[■ 范例解析],
)

#hei[3.4 A]  已知向量 $bold(v)_1 = (1, 2, 0)$ 和 $bold(v)_2 = (2, 3, 0)$.

#sub[(a) 它们线性无关吗?]

#sub[(b) 它们构成某个空间的一组基吗?]

#sub[(c) 它们所生成的空间 $V$ 是什么?]

#sub[(d) 空间 $V$ 的维数是多少?]

#sub[(e) $V$ 是哪些矩阵 $bold(A)$ 的列空间?]

#sub[(f) $V$ 是哪些矩阵的零空间?]

#sub[(g) 求出所有与 $bold(v)_1, bold(v)_2$ 一起可构成空间 $R^3$ 一组基的向量 $bold(v)_3$.]

#hei[解]  (a) $bold(v)_1$ 和 $bold(v)_2$ 是线性无关的——它们的等于向量 $bold(0)$ 的唯一线性组合是 $0 bold(v)_1 + 0 bold(v)_2$.

#sub[(b) 它们构成所生成空间的一组基.]

#sub[(c) 生成的空间 $V$ 是由所有形如 $(x, y, 0)$ 的向量组成, 它是 $R^3$ 中的 $x y$ 平面.]

#sub[(d) 由于基中包含两个向量, 所以 $V$ 的维数为 2.]

#sub[(e) 设 $3 times n$ 矩阵 $bold(A)$ 的秩为 2. 当 $bold(A)$ 的每列均为 $bold(v)_1$ 和 $bold(v)_2$ 的线性组合时, $bold(A)$ 的列空间就是 $V$. 特别地, $bold(A)$ 可能只有 $bold(v)_1$ 和 $bold(v)_2$ 两列.]

#sub[(f) 设 $m times 3$ 矩阵 $bold(B)$ 的秩为 1. 当 $bold(B)$ 的每行均为 $(0, 0, 1)$ 的倍数时, $bold(B)$ 的零空间就是 $V$. 特别地, 取 $bold(B) = [0 quad 0 quad 1]$, 则 $bold(B) bold(v)_1 = 0$ 且 $bold(B) bold(v)_2 = 0$.]

#sub[(g) 对于任意向量 $bold(v)_3 = (a, b, c)$, 只要分量 $c != 0$, 即可与 $bold(v)_1, bold(v)_2$ 一起构成 $R^3$ 的一组基.]

#hei[3.4 B]  已知三个线性无关向量 $bold(w)_1, bold(w)_2, bold(w)_3$, 它们生成 $bold(v)_1, bold(v)_2, bold(v)_3$ 的线性组合如下所示, 并将该线性组合表示为矩阵形式 $bold(V) = bold(W) bold(B)$:

#align(center)[
  $cases(bold(v)_1 = bold(w)_1 + bold(w)_2, bold(v)_2 = bold(w)_1 + 2 bold(w)_2 + bold(w)_3, bold(v)_3 = bold(w)_2 + c bold(w)_3), quad "即" quad [bold(v)_1 quad bold(v)_2 quad bold(v)_3] = [bold(w)_1 quad bold(w)_2 quad bold(w)_3] mat(1,1,0;1,2,1;0,1,c).$
]

为了确认 $bold(V) = bold(W) bold(B)$ 的列是否线性无关, 应对矩阵 $bold(B)$ 进行什么测试? 证明当 $c != 1$ 时, $bold(v)_1, bold(v)_2, bold(v)_3$ 线性无关; 当 $c = 1$ 时, $bold(v)_1, bold(v)_2, bold(v)_3$ 线性相关.

#hei[解]  确定 $bold(V)$ 各列是否线性无关要用到第一种定义: $bold(V)$ 的零空间必然只含零向量, 即 $bold(x) = (0, 0, 0)$ 是唯一一组系数, 使得 $bold(V)$ 各列线性组合 $bold(V) bold(x) = 0$.

本题中, 当 $c = 1$ 时, 可用两种方式看出 $bold(v)_1, bold(v)_2, bold(v)_3$ 线性相关. 一方面, $bold(v)_1 + bold(v)_3$ 等于 $bold(v)_2$. ($bold(w)_1 + bold(w)_2$ 加上 $bold(w)_2 + bold(w)_3$ 得到 $bold(w)_1 + 2 bold(w)_2 + bold(w)_3$, 即 $bold(v)_2$.) 换言之 $bold(v)_1 - bold(v)_2 + bold(v)_3 = 0$——由此知 $bold(v)_1, bold(v)_2, bold(v)_3$ 并非线性无关.

另一方面考察 $bold(B)$ 的零空间. 当 $c = 1$, 向量 $bold(x) = (1, -1, 1)$ 在零空间中, 故 $bold(B) bold(x) = 0$. 从而必有 $bold(W) bold(B) bold(x) = 0$, 即 $bold(V) bold(x) = 0$. 因此 $bold(v)_1, bold(v)_2, bold(v)_3$ 线性相关. 由零空间中的特殊解 $bold(x) = (1, -1, 1)$ 又可得到 $bold(v)_1 - bold(v)_2 + bold(v)_3 = 0$.

现在假定 $c != 1$. 此时矩阵 $bold(B)$ 可逆. 那么对于任意非零向量 $bold(x)$, 有 $bold(B) bold(x)$ 非零. 又由 $bold(w)_i$ 线性无关, 故 $bold(W) bold(B) bold(x)$ 也是非零向量. 这说明 $bold(x)$ 并不在 $bold(V) = bold(W) bold(B)$ 的零空间中, 也即 $bold(v)_1, bold(v)_2, bold(v)_3$ 线性无关.



#pagebreak()
