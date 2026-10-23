#import "../theme.typ": *

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  消元顺序是先 $bold(E)$ 后 $bold(F)$, 求逆的顺序是先 $bold(F)^(-1)$ 后 $bold(E)^(-1)$.

  $bold(E)^(-1) bold(F)^(-1)$ 计算便捷. 乘数 5, 4 在主对角线元素 1 的下方.
]

#align(center, subsec[通过高斯-若尔当消元法计算 $bold(A)^(-1)$])

前面提到, 对于一些间题无需计算 $bold(A)^(-1)$. 当方阵 $bold(A)$ 可逆时, 方程组 $bold(A) bold(x) = bold(b)$ 的解为 $bold(x) = bold(A)^(-1) bold(b)$, 但是先计算出 $bold(A)^(-1)$ 再用它左乘 $bold(b)$ 并无必要, 也不是高效的方法, 用消元法可以直接求得 $bold(x)$. 下面将说明, 消元法也是计算 $bold(A)^(-1)$ 的有效方法. 高斯-若尔当方法的思想可用于求解 $bold(A) bold(A)^(-1) = bold(I)$ 以找到 $bold(A)^(-1)$ 的每一列.

三阶方阵 $bold(A)$ 左乘 $bold(A)^(-1)$ 的第 1 列 (记为 $bold(x)_1$) 得到 $bold(I)$ 的第 1 列 (记为 $bold(e)_1$), 从而得到一个线性方程组 $bold(A) bold(x)_1 = bold(e)_1 = (1, 0, 0)$. 同理可得另外两个线性方程组, 即用 $bold(A)$ 左乘 $bold(A)^(-1)$ 的各列 $bold(x)_1, bold(x)_2, bold(x)_3$ 就得到 $bold(I)$ 对应的列:

#eqnumL([$bold(A)^(-1)$ 的 3 列], $ bold(A) bold(A)^(-1) = bold(A) [bold(x)_1 quad bold(x)_2 quad bold(x)_3] = [bold(e)_1 quad bold(e)_2 quad bold(e)_3] = bold(I) . $, 7)

要求出三阶方阵 $bold(A)$ 的逆矩阵, 就必须求解三个线性方程组

#dmath[$ bold(A) bold(x)_1 = bold(e)_1 = (1, 0, 0), $]
#dmath[$ bold(A) bold(x)_2 = bold(e)_2 = (0, 1, 0), $]
#dmath[$ bold(A) bold(x)_3 = bold(e)_3 = (0, 0, 1) . $]

用这种方式使用高斯-若尔当消元法就可求得 $bold(A)^(-1)$.

高斯-若尔当消元法同时求解全部 $n$ 个线性方程组来计算 $bold(A)^(-1)$. 通常 "增广矩阵" $[bold(A) quad bold(b)]$ 只对系数矩阵增加了一列 $bold(b)$, 现在右边增加了三列 $bold(e)_1, bold(e)_2, bold(e)_3$ (当 $bold(A)$ 是三阶方阵时), 它们是单位矩阵 $bold(I)$ 的列向量, 因此此时的 "增广矩阵" 就是分块矩阵 $[bold(A) quad bold(I)]$. 下面求本书中最常见的示例矩阵 $bold(K)$ (二阶差分矩阵) 的逆矩阵, 矩阵 $bold(K)$ 主对角线上的元素都是 2, 与 2 相邻的元素是 $-1$, 其余元素都是 0: 对 $bold(K)$ 施行高斯-若尔当消元,

$ [bold(K) quad bold(e)_1 quad bold(e)_2 quad bold(e)_3] &= mat(delim: "[", 2, -1, 0, 1, 0, 0; -1, 2, -1, 0, 1, 0; 0, -1, 2, 0, 0, 1) \
&-> mat(delim: "[", 2, -1, 0, 1, 0, 0; 0, 3/2, -1, 1/2, 1, 0; 0, -1, 2, 0, 0, 1) quad (r_2 + 1/2 r_1) \
&-> mat(delim: "[", 2, -1, 0, 1, 0, 0; 0, 3/2, -1, 1/2, 1, 0; 0, 0, 4/3, 1/3, 2/3, 1), quad (r_3 + 2/3 r_2) $



#pagebreak()
