#import "../theme.typ": *

#boxEq[增广矩阵][$ [bold(A) quad bold(b)] = mat(delim: "[", 2, 4, -2, 2; 4, 9, -3, 8; -2, -3, 7, 10) . $]

消元法作用于增广矩阵的整行. $bold(E)$ 同时左乘方程组的左、右两侧就能够从第二个方程中减去第一个方程的 2 倍. 将消元步骤作用在 $[bold(A) quad bold(b)]$ 上得

#dmath[$ mat(delim: "[", 1, 0, 0; -2, 1, 0; 0, 0, 1) mat(delim: "[", 2, 4, -2, 2; 4, 9, -3, 8; -2, -3, 7, 10) = mat(delim: "[", 2, 4, -2, 2; 0, 1, 1, 4; -2, -3, 7, 10) . $]

新的第 2 行包含 $0, 1, 1, 4$, 而新的第二个方程是 $x_2 + x_3 = 4$. 可以逐行或逐列来计算矩阵乘法:

逐行  $bold(E)$ 的每一行作用于 $[bold(A) quad bold(b)]$ 得 $[bold(E) bold(A) quad bold(E) bold(b)]$ 的对应行.

逐列  $bold(E)$ 作用于 $[bold(A) quad bold(b)]$ 的每一列得 $[bold(E) bold(A) quad bold(E) bold(b)]$ 的对应列.

注意 “作用” 这个词, 这很关键, 矩阵确实起到了作用! 矩阵 $bold(A)$ 作用于 $bold(x)$ 得到了 $bold(b)$, 矩阵 $bold(E)$ 作用于 $bold(A)$ 得到了 $bold(E) bold(A)$. 消元法的整个过程就是一系列的行变换, 也就是一系列的矩阵乘法. 三阶方阵 $bold(A)$ 变换成 $bold(E)_(21) bold(A)$, 再变换成 $bold(E)_(31) bold(E)_(21) bold(A)$. 最后得到的 $bold(E)_(32) bold(E)_(31) bold(E)_(21) bold(A)$ 是一个三角形矩阵.

增广矩阵中包含了方程组右侧的常数项, 消元的结果是三角形方程组. 下面进行关于 $bold(E)$ 的乘法练习, 下一节将介绍矩阵乘法的所有规则 (包括分块矩阵的乘法).

#barHead[■ 要点回顾]

#enum(numbering: "1.", tight: false,
  [$bold(A) bold(x) = x_1$ (第 1 列) $+ x_2$ (第 2 列) $+ dots.c + x_n$ (第 $n$ 列), 且 $(bold(A) bold(x))_i = sum_(j=1)^n a_(i j) x_j$.],
  [单位矩阵记为 $bold(I)$, 包含乘数 $ell_(i j)$ 的消元矩阵记为 $bold(E)_(i j)$, 换行矩阵记为 $bold(P)_(i j)$.],
  [用 $bold(E)_(21)$ 左乘 $bold(A) bold(x) = bold(b)$ 结果是从第二个方程中减去第一个方程的 $ell_(21)$ 倍. 数 $-ell_(21)$ 是消元矩阵 $bold(E)_(21)$ 位置 (2,1) 的元素.],
  [对增广矩阵 $[bold(A) quad bold(b)]$ 执行上述消元步骤得到 $[bold(E)_(21) bold(A) quad bold(E)_(21) bold(b)]$.],
  [用 $bold(A)$ 左乘任意矩阵 $bold(B)$, 相当于分别左乘 $bold(B)$ 中的每一列.],
)

#barHead[■ 范例解析]

#hei[2.3 A]  请首先写出作用为从第 2 行中减去第 1 行的 4 倍的 $3 times 3$ 消元矩阵 $bold(E)_(21)$, 然后写出能交换第 2 行和第 3 行的换行矩阵 $bold(P)_(32)$. 若用上述矩阵右乘 (而不是左乘) 矩阵 $bold(A)$, 请描述 $bold(A) bold(E)_(21)$ 和 $bold(A) bold(P)_(32)$ 的结果.



#pagebreak()
