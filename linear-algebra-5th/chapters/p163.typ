#import "../theme.typ": *

解　方程组 $bold(A) bold(x) = bold(0)$ 仅有零解 $bold(x) = bold(0)$. $bold(A)$ 的零空间为 $bold(Z)$, 它仅包含 $bold(R)^2$ 中的单点 $bold(x) = bold(0)$. 该事实源自消元法:

#align(center)[$ bold(A) bold(x) = mat(delim: "[", 1, 2; 3, 8) mat(delim: "[", x_1; x_2) = mat(delim: "[", 0; 0) quad "表明" quad mat(delim: "[", 1, 2; 0, 2) mat(delim: "[", x_1; x_2) = mat(delim: "[", 0; 0) quad "进而" quad cases(x_1 = 0, x_2 = 0) . $]

因为 $bold(A)$ 是可逆的, 所以不存在特殊解. 矩阵 $bold(A)$ 的两列均有主元.

长方阵 $bold(B)$ 有相同的零空间 $bold(Z)$, 因为 $bold(B) bold(x) = bold(0)$ 的前两个方程仍表明 $bold(x) = bold(0)$, 且后两个方程也要求 $bold(x) = bold(0)$. 当额外增加方程 (提供更多的行) 时, 零空间肯定不会变大: 更多的行对零空间中的向量 $bold(x)$ 施加了更多的限制.

长方阵 $bold(C)$ 则不同, 它有更多的列, 而非更多的行. 解向量 $bold(x)$ 包括四个分量. 消元法将在 $bold(C)$ 的前两列生成主元, 但 $bold(C)$ 与 $bold(U)$ 的后两列是 “自由的”, 它们没有主元:

#align(center)[#grid(
  columns: (auto, auto),
  column-gutter: 14pt,
  align: horizon,
  [从 $bold(C)$ 的第 2 行中\ 减去第 1 行的 3 倍],
  stack(
    spacing: 5pt,
    $bold(C) = mat(delim: "[", 1, 2, 2, 4; 3, 8, 6, 16) quad "化为" quad bold(U) = mat(delim: "[", 1, 2, 2, 4; 0, 2, 0, 4) ,$,
    align(right)[
      #box(width: 140pt)[
        #grid(
          columns: (1fr, 1fr),
          align: center,
          stack(spacing: 2pt, [↑ #h(10pt) ↑], [主元列]),
          stack(spacing: 2pt, [↑ #h(10pt) ↑], [自由列]),
        )
      ]
    ]
  )
)]

对于自由变量 $x_3$ 与 $x_4$, 轮流取值 1 和 0: 首先 $x_3 = 1$, $x_4 = 0$, 接着 $x_3 = 0$, $x_4 = 1$. 主元变量 $x_1$ 与 $x_2$ 由方程组 $U x = 0$ (或者 $C x = 0$ 或者最终的 $bold(R) x = 0$) 所确定. 这样在 $C$ 的零空间得到两个特殊解. $C$ 的零空间亦为 $U$ 的零空间, 因为消元法不改变方程组的解.

#dingli[
  #grid(columns: (auto, auto, auto), column-gutter: 24pt, align: horizon,
    [特殊解 $bold(s)$ 满足\
     $C bold(s) = 0$,\
     $U bold(s) = 0$],
    [$bold(s)_1 = mat(delim: "[", -2; 0; 1; 0) , quad bold(s)_2 = mat(delim: "[", 0; -2; 0; 1) .$],
    [← 主元变量\
     ← 自由变量],
  )
]

#subsec[最简行阶梯形矩阵 $bold(R)$]

当 $A$ 为长方阵时, 消元法不会止步于上三角形矩阵 $U$. 可以用两种方法继续化简该矩阵. 下述步骤将给出最佳矩阵 $bold(R)$:

#yaodian[
  1. #hei[主元上方的元素化为 0]: 利用主元行向上消元;

  2. #hei[主元化为 1]: 用主元去除整个主元行.
]

上述步骤并未改变方程组右边的零向量, 且零空间保持不变:

#dmath[$ N(A) = N(U) = N(bold(R)) . $]



#pagebreak()
