#import "../theme.typ": *

因此式子中的括号不是必需的, 可直接写成 $bold(E) bold(A) bold(x)$.

上述规则可扩展到包含多个列向量的矩阵. 当计算乘积 $bold(E) bold(A) bold(C)$ 时, 可先计算 $bold(A) bold(C)$, 也可先计算 $bold(E) bold(A)$, 这就是 “乘法结合律”, 如同数字乘法中的

#dmath[$ 3 times (4 times 5) = (3 times 4) times 5, $]

即不论是 3 乘 20, 还是 12 乘 5, 结果都是 60. 这个运算律看起来如此显然, 以至于很难想象它会是错误的.

在数字乘法中 “交换律” 也是显然成立的, 例如, $3 times 4 = 4 times 3$. 但是矩阵乘法中 $bold(E) bold(A)$ 通常不等于 $bold(A) bold(E)$. 当用 $bold(E)$ 右乘 $bold(A)$ 时, 它作用于 $bold(A)$ 的列——而不是行. 对前述 $bold(E)$, $bold(A) bold(E)$ 表示从 $bold(A)$ 的第 1 列中减去第 2 列的 2 倍, 因此 $bold(E) bold(A) != bold(A) bold(E)$. 对矩阵乘法,

#dingliC[
  #grid(columns: (auto, 1fr), row-gutter: 8pt, column-gutter: 12pt,
    align(center+horizon)[结合律成立], align(center)[$ bold(A) (bold(B) bold(C)) = (bold(A) bold(B)) bold(C) ; $],
    align(center+horizon)[交换律不成立], align(center)[$ "通常" bold(A) bold(B) != bold(B) bold(A) . $],
  )
]

关于矩阵乘法还有另一个要求. 假设 $bold(B)$ 只有一列 (即 $bold(B)$ 为列向量 $bold(b)$), 则 $bold(E) bold(B)$ 的矩阵-矩阵运算律应与 $bold(E) bold(b)$ 的矩阵-向量运算律一致. 更进一步, 计算 $bold(E) bold(B)$ 时可以用 $bold(E)$ 依次左乘 $bold(B)$ 的每一列:

若矩阵 $bold(B)$ 的各列是 $b_1, b_2, b_3$, 则 $bold(E) bold(B)$ 的各列是 $bold(E) b_1, bold(E) b_2, bold(E) b_3$.

#dingliC[
  #grid(columns: (1fr, auto), column-gutter: 12pt,
    align(center)[矩阵乘法    $ bold(A) bold(B) = bold(A) [b_1 quad b_2 quad b_3] = [bold(A) b_1 quad bold(A) b_2 quad bold(A) b_3] . $],
    align(horizon)[$(4)$],
  )
]

对于 (3) 式中的矩阵乘法而言, 上述规则也成立. 例如, 用 $bold(E)$ 左乘矩阵 $bold(A)$ 的第 3 列, 结果就是 $bold(E) bold(A)$ 的第 3 列:

#dmath[$ mat(1, 0, 0; -2, 1, 0; 0, 0, 1) mat(-2; -3; 7) = mat(-2; 1; 7), $]

即 $bold(E)$ ($bold(A)$ 的第 $j$ 列) $= bold(E) bold(A)$ 的第 $j$ 列.

上述规则处理矩阵的列, 而消元法则处理矩阵的行. 下一节将介绍如何计算乘积 $bold(A) bold(B)$ 的每个元素. 矩阵乘法之美就在于这三种方法 (逐行, 逐列, 整个矩阵) 都能得到 (统一的) 正确答案.

#align(center, hei(size: 12pt)[用于换行的矩阵 $bold(P)_(i j)$])

从矩阵的第 $i$ 行中减去第 $j$ 行需左乘消元矩阵 $bold(E)_(i j)$, 而要交换或者 “置换” 这些行就需使用另一种矩阵 $bold(P)_(i j)$ (置换矩阵). 当主元位置的元素是 0 而该列下方包括非零元素时就需要换行. 交换两行后就有了主元, 可以继续消元.



#pagebreak()
