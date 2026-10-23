#import "../theme.typ": *
#set par(leading: 12.5pt, spacing: 11pt)

#hei[18.] 结合了平移技巧的 QR 方法将 $bold(A) - c bold(I)$ 分解为 $bold(Q) bold(R)$. 证明矩阵 $bold(A)_1 = bold(R) bold(Q) + c bold(I)$ 等于 $bold(Q)^(-1) bold(A) bold(Q)$. 因此 $bold(A)_1$ 和 $bold(A)$ 的特征值 \_\_\_\_ (但 $bold(A)_1$ 更接近三对角矩阵).

#hei[19.] 当 $bold(A) = bold(A)^T$ 时, 用 “兰乔斯 (Lanczos) 方法” 可求出一组 $a_j, b_j$ 以及正交向量组 $bold(q)_j$ 使得

#dmath[$ bold(A) bold(q)_j = b_(j-1) bold(q)_(j-1) + a_j bold(q)_j + b_j bold(q)_(j+1) quad (bold(q)_0 = bold(0)). $]

两边同时左乘 $bold(q)_j^T$, 求出计算 $a_j$ 的公式. 该等式表示 $bold(A) bold(Q) = bold(Q) bold(T)$, 其中 $bold(T)$ 是一个三对角矩阵.

#hei[20.] 习题 19 中的等式由以下循环发展而来, 其中 $b_0 = 1$ 且 $bold(r)_0$ 为任意 $bold(q)_1$:

#dmath[$ bold(q)_(j+1) = bold(r)_j/b_j; j = j + 1; a_j = bold(q)_j^T bold(A) bold(q)_j; $]

#dmath[$ bold(r)_j = bold(A) bold(q)_j - b_(j-1) bold(q)_(j-1) - a_j bold(q)_j; b_j = norm(bold(r)_j). $]

编写一段代码并对 “$-1, 2, 1$” 三对角矩阵 $bold(A)$ 进行测试. $bold(Q)^T bold(Q)$ 应该等于 $bold(I)$.

#hei[21.] 假定使用 QR 方法分解的矩阵 $bold(A)$ 是对称三对角矩阵. 令 $bold(A)_1 = bold(Q)^(-1) bold(A) bold(Q)$, 证明 $bold(A)_1$ 是对称矩阵. 再令 $bold(A)_2 = bold(R) bold(A) bold(R)^(-1)$, 证明 $bold(A)_2$ 也是三对角矩阵. (根据对称性, 只需证明 $bold(A)_2$ 的对角线下方符合三对角矩阵的特征.) 应用 QR 方法的最佳对象是对称三对角矩阵.

第 22—25 题展示了两类基本的迭代方法, 每一步都涉及 $bold(A) bold(q)$ 或者 $bold(A) bold(d)$.

快速处理大规模矩阵的关键点在于矩阵-向量乘法比矩阵-矩阵乘法快得多. 设迭代法选取的初始向量为 $bold(b)$. 重复矩阵-向量乘法可以得到 $bold(A) bold(b), bold(A)^2 bold(b), dots.c$, 这些向量通常不是相互正交的, 它们生成的空间称为克雷洛夫空间. 利用与格拉姆-施密特正交化方法相同的思想, 阿诺尔迪迭代法为该空间生成一组更好的正交基向量: $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$, 其中 $bold(q)_(i+1) = bold(A) bold(q)_i$ 与 $bold(q)_1, bold(q)_2, dots.c, bold(q)_i$ 均正交.

以下伪代码展示了数值线性代数中最重要的两种算法: 阿诺尔迪迭代法给出了一组非常好的基, 而 CG 迭代法能够获得 $bold(x) = bold(A)^(-1) bold(b)$ 很好的逼近解.

#table(
  columns: (1fr, 1fr),
  stroke: 0.6pt,
  inset: 4.5pt,
  align(left)[
    #hei[阿诺尔迪迭代法]\
    $bold(q)_1 = bold(b)/norm(bold(b))$\
    $"for" n = 1 "to" N - 1$\
    #box(width: 1em)[] $bold(v) = bold(A) bold(q)_n$\
    #box(width: 1em)[] $"for" j = 1 "to" n$\
    #box(width: 2em)[] $h_(j n) = bold(q)_j^T bold(v)$\
    #box(width: 2em)[] $bold(v) = bold(v) - h_(j n) bold(q)_j$\
    #box(width: 1em)[] $h_(n+1, n) = norm(bold(v))$\
    #box(width: 1em)[] $bold(q)_(n+1) = bold(v)/h_(n+1, n)$
  ],
  align(left)[
    #hei[关于正定矩阵 $bold(A)$ 的共轭梯度迭代法]\
    $bold(x)_0 = 0, bold(r)_0 = bold(b), bold(d)_0 = bold(r)_0$\
    $"for" n = 1 "to" N$\
    #box(width: 1em)[] $alpha_n = (bold(r)_(n-1)^T bold(r)_(n-1))/(bold(d)_(n-1)^T bold(A) bold(d)_(n-1))$ #box(width: 1em)[] \% #box(width: 0.5em)[] $bold(x)_(n-1)$ 到 $bold(x)_n$ 的步长\
    #box(width: 1em)[] $bold(x)_n = bold(x)_(n-1) + alpha_n bold(d)_(n-1)$ #box(width: 6em)[] \% 近似解\
    #box(width: 1em)[] $bold(r)_n = bold(r)_(n-1) - alpha_n bold(A) bold(d)_(n-1)$ #box(width: 3.5em)[] \% 新残差 $bold(b) - bold(A) bold(x)_n$\
    #box(width: 1em)[] $beta_n = (bold(r)_n^T bold(r)_n)/(bold(r)_(n-1)^T bold(r)_(n-1))$ #box(width: 4em)[] \% 优化这一步\
    #box(width: 1em)[] $bold(d)_n = bold(r)_n + beta_n bold(d)_(n-1)$ #box(width: 5em)[] \% 下一个搜索方向\
    \% 注意: 每步迭代仅需 1 次矩阵-向量乘法, 即 $bold(A) bold(q)_n$ 以及 $bold(A) bold(d)_(n-1)$
  ],
)



#pagebreak()