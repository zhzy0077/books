#import "../theme.typ": *

#h(1em) 列空间对于本书是至关重要的, 原因在于解 $bold(A) bold(x) = bold(b)$ 就是将 $bold(b)$ 表示为 $bold(A)$ 各列的一个线性组合. 右边的 $bold(b)$ 必须属于左边 $bold(A)$ 的列空间, 否则方程组无解!

#dingli[线性方程组 $bold(A) bold(x) = bold(b)$ 是可解的当且仅当 $bold(b)$ 在 $bold(A)$ 的列空间内.]

#h(1em) 当 $bold(b)$ 属于列空间 $bold(C) (bold(A))$ 时, 它是 $bold(A)$ 各列的一个线性组合. 该组合中的系数给出了线性方程组 $bold(A) bold(x) = bold(b)$ 的解 $bold(x)$.

#h(1em) 设 $bold(A)$ 是一个 $m times n$ 矩阵, 它的列向量有 $m$ 个 (而非 $n$ 个) 分量, 故各列向量属于 $R^m$. $bold(A)$ 的列空间是 $R^m$ (而非 $R^n$) 的子空间. 列向量的全部线性组合 $bold(A) bold(x)$ 所成集合满足子空间定义的条件 (i) 和 (ii), 即将列向量的线性组合相加或做数乘时, 依然得到列向量的线性组合. 通过取遍全部线性组合, “子空间” 就被证实了.

#h(1em) #hei[例 4]　考虑的是一个 $3 times 2$ 矩阵 $bold(A)$, 其列空间是 $R^3$ 的子空间. $bold(A)$ 的列空间为图 3.2 中一个平面. 因为仅由 2 列生成, 所以 $bold(C) (bold(A))$ 不可能是整个 $R^3$.

#hei[例 4]

#dmath[$ bold(A) bold(x) = mat(delim: "[", 1, 0; 4, 3; 2, 3) mat(delim: "[", x_1; x_2) = x_1 mat(delim: "[", 1; 4; 2) + x_2 mat(delim: "[", 0; 3; 3) . $]

#figure(image("../assets/fig-p154-a.png", width: 82%), numbering: none, caption: [图 3.2　列空间 $bold(C) (bold(A))$ 是包含两列的平面. $bold(b)$ 在该平面上时, $bold(A) bold(x) = bold(b)$ 是可解的. 此时 $bold(b)$ 是列向量的一个线性组合.])

#h(1em) 由 $bold(A)$ 的两列的全部线性组合所得的列空间为 $R^3$ 中一个平面. 图 3.2 中画了一个特殊的 $bold(b)$ (列的一个线性组合), $bold(b) = bold(A) bold(x)$ 落在上述平面上. 因平面没有厚度, 故 $R^3$ 中大多数的 $bold(b)$ 不在该列空间中. 对于这些 $bold(b)$ 而言, 对应的线性方程组 $bold(A) bold(x) = bold(b)$ 是无解的.

#h(1em) 点 $(0,0,0)$ 当然在列空间中, 即上述平面过原点, 从而 $bold(A) bold(x) = bold(0)$ 必有解 $bold(x) =$ \_\_\_\_. (读者自行作答.)

#h(1em) 再次强调, 保证 $bold(A) bold(x) = bold(b)$ 有解的 $bold(b)$ 正是列空间 $bold(C) (bold(A))$ 中的向量. 一种可能性是第 1 列自身——取 $x_1 = 1$ 及 $x_2 = 0$. 另一个线性组合是第 2 列——取 $x_1 = 0$ 及 $x_2 = 1$. 更进一步的理解是考虑全部线性组合——整个子空间是由那两列生成的.

#h(1em) #hei[记法]　$m times n$ 矩阵 $bold(A)$ 的列空间表示为 $bold(C) (bold(A))$, 包含各列及其全部线性组合. 由此可能得到整个 $R^m$ 或 $R^m$ 的某个子空间.

#h(1em) #hei[重要]　除了利用 $R^m$ 的列向量, 还可以由向量空间 $bold(V)$ 的任意子集 $bold(S)$ 构造子空间. 为了得到 $bold(V)$ 的这种子空间 $bold(S S)$, 可取遍历集 $bold(S)$ 中向量的全部线性组合:



#pagebreak()
