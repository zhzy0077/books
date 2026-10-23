#import "../theme.typ": *

#hei[3.] (考虑三阶方程组) 向下消元将方程组 $bold(A) bold(x) = bold(b)$ 变成三角形方程组 $bold(U) bold(x) = bold(c)$:

$ cases(x + y + z = 5, x + 2y + 3z = 7, x + 3y + 6z = 11) -> cases(x + y + z = 5, y + 2z = 2, 2y + 5z = 6) -> cases(x + y + z = 5, y + 2z = 2, z = 2) . $

$bold(U) bold(x) = bold(c)$ 中的方程 $z = 2$ 是 $bold(A) bold(x) = bold(b)$ 中的方程 $x + 3y + 6z = 11$ 减去第 1 个方程的 $l_(31) =$ \_\_\_ 倍以及最后的第 2 个方程的 $l_(32) =$ \_\_\_ 倍. 请从 $[bold(U) quad bold(c)]$ 中的 $[1 quad 1 quad 1 quad 5], [0 quad 1 quad 2 quad 2]$ 和 $[0 quad 0 quad 1 quad 2]$ 逆向还原出 $[bold(A) quad bold(b)]$ 中的 $[1 quad 3 quad 6 quad 11]$:

#align(right)[
  $ [bold(A) quad bold(b)] "的第" 3 "行" = l_(31) [bold(U) quad bold(c)] "的第" 1 "行" + $
  $ l_(32) [bold(U) quad bold(c)] "的第" 2 "行" + $
  $ 1 [bold(U) quad bold(c)] "的第" 3 "行" . $
]

写成矩阵记号就是 $[bold(U) quad bold(c)]$ 用 $bold(L)$ 左乘, 即 $bold(A) = bold(L U)$ 和 $bold(b) = bold(L) bold(c)$.

#hei[4.] 请写出习题 3 中的三阶三角形方程组 $bold(L) bold(c) = bold(b)$ 和 $bold(U) bold(x) = bold(c)$, 然后检验 $bold(c) = (5, 2, 2)$ 是前一个方程组的解, 再求出后一个方程组的解 $bold(x)$.

#hei[5.] 请求出矩阵 $bold(E)$ 使得矩阵 $bold(A)$ 变成三角形矩阵 $bold(E) bold(A) = bold(U)$, 然后左乘 $bold(E)^(-1) = bold(L)$ 将 $bold(A)$ 分解成 $bold(L U)$, 其中

$ bold(A) = mat(delim: "[", 2, 1, 0; 0, 4, 2; 6, 3, 5) . $

#hei[6.] 请求出两个消元矩阵 $bold(E)_(21)$ 和 $bold(E)_(32)$ 使得矩阵 $bold(A)$ 变成三角形矩阵 $bold(E)_(32) bold(E)_(21) bold(A) = bold(U)$, 然后左乘 $bold(E)_(32)^(-1)$ 和 $bold(E)_(21)^(-1)$ 将 $bold(A)$ 分解成 $bold(L U) = bold(E)_(21)^(-1) bold(E)_(32)^(-1) bold(U)$, 其中

$ bold(A) = mat(delim: "[", 1, 1, 1; 2, 4, 5; 0, 4, 0) . $

#hei[7.] 请求出三个消元矩阵 $bold(E)_(21), bold(E)_(31), bold(E)_(32)$ 使得矩阵 $bold(A)$ 变成上三角形矩阵 $bold(E)_(32) bold(E)_(31) bold(E)_(21) bold(A) = bold(U)$, 然后左乘 $bold(E)_(32)^(-1), bold(E)_(31)^(-1)$ 和 $bold(E)_(21)^(-1)$ 将 $bold(A)$ 分解成 $bold(L U)$, 其中

$ bold(A) = mat(delim: "[", 1, 0, 1; 2, 2, 2; 3, 4, 5) , quad bold(L) = bold(E)_(21)^(-1) bold(E)_(31)^(-1) bold(E)_(32)^(-1) . $

#hei[8.] 对如下矩阵 $bold(A)$ 计算 $bold(L)$ 和 $bold(D)$ (对角主元矩阵), 再分别计算 $bold(A) = bold(L U)$ 和 $bold(A) = bold(L D U)$ 中的矩阵 $bold(U)$:

#grid(columns: (auto, 1fr), column-gutter: 2em, align: (right + horizon, center),
  [已是上三角形矩阵],
  $ bold(A) = mat(delim: "[", 2, 4, 8; 0, 3, 9; 0, 0, 7) . $
)



#pagebreak()
