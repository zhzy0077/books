#import "../theme.typ": *

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  其中 $bold(A)^T bold(A)$ 为 $n times n$ 对称矩阵. 当 $bold(a)_1, bold(a)_2, dots.c, bold(a)_n$ 线性无关时, $bold(A)^T bold(A)$ 可逆, 从而解为 $hat(bold(x)) = (bold(A)^T bold(A))^(-1) bold(A)^T bold(b)$. 由此得到 $bold(b)$ 在子空间上的投影 $bold(p)$: \ #v(4pt)
  #grid(
    columns: (auto, 1fr, auto),
    column-gutter: 1.5em,
    align: horizon,
    [求出 $m times 1$ 向量 $bold(p)$],
    [$bold(p) = bold(A) hat(bold(x)) = bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T bold(b) ,$],
    [(6)],
  ) \
  由 (6) 式中写出左乘 $bold(b)$ 的投影矩阵: \ #v(4pt)
  #grid(
    columns: (auto, 1fr, auto),
    column-gutter: 1.5em,
    align: horizon,
    [求出 $m times m$ 矩阵 $bold(P)$],
    [$bold(P) = bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T .$],
    [(7)],
  )
]

当向过 $bold(a)$ 的直线上投影, 即矩阵 $bold(A)$ 只含列向量 $bold(a)$ 时, $bold(A)^T bold(A)$ 就是 $bold(a)^T bold(a)$:

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #align(center)[对于 $n = 1$ 有 $hat(x) = (bold(a)^T bold(b))/(bold(a)^T bold(a)), quad bold(p) = bold(a) (bold(a)^T bold(b))/(bold(a)^T bold(a)), quad bold(P) = (bold(a) bold(a)^T)/(bold(a)^T bold(a)) .$]
]

上一行的公式与 (5)—(7) 式是一致的, 只不过前者中的数 $bold(a)^T bold(a)$ 在后者中为矩阵 $bold(A)^T bold(A)$. 在数的情形下, 公式中以该数为除数; 在矩阵的情形下, 公式中取该矩阵的逆矩阵, 即后者中没有 $1/(bold(a)^T bold(a))$, 只含 $(bold(A)^T bold(A))^(-1)$. $bold(a)_1, bold(a)_2, dots.c, bold(a)_n$ 线性无关保证了逆矩阵存在.

上述关键步骤是 $bold(A)^T (bold(b) - bold(A) hat(bold(x))) = 0$, 这是利用几何方法 ($bold(e)$ 垂直于 $bold(a)_i$) 得到的. 利用线性代数也能以一种快捷而优美的方式得到 “正规方程”:

(1) 子空间是 $bold(A)$ 的列空间;

(2) 误差向量 $bold(b) - bold(A) hat(bold(x))$ 垂直于列空间;

(3) 因此 $bold(b) - bold(A) hat(bold(x))$ 在 $bold(A)^T$ 的零空间 (即 $bold(A)$ 的左零空间) 中! 此即为 $bold(A)^T (bold(b) - bold(A) hat(bold(x))) = 0$.

左零空间在投影中起到重要作用. $bold(A)^T$ 的左零空间包含误差向量 $bold(e) = bold(b) - bold(A) hat(bold(x))$, 而向量 $bold(b)$ 分解为投影 $bold(p)$ 与误差 $bold(e) = bold(b) - bold(p)$. 投影则生成一个以 $bold(p), bold(e)$ 和 $bold(b)$ 为边的直角三角形.

#hei[例 3]  设 $bold(A) = mat(delim: "[", 1, 0; 1, 1; 1, 2)$ 和 $bold(b) = mat(delim: "[", 6; 0; 0)$ 求 $hat(bold(x)), bold(p)$ 和 $bold(P)$.

#hei[解]  计算方阵 $bold(A)^T bold(A)$ 以及向量 $bold(A)^T bold(b)$:

#dmath[$ bold(A)^T bold(A) = mat(delim: "[", 1, 1, 1; 0, 1, 2) mat(delim: "[", 1, 0; 1, 1; 1, 2) = mat(delim: "[", 3, 3; 3, 5) , $]

#dmath[$ bold(A)^T bold(b) = mat(delim: "[", 1, 1, 1; 0, 1, 2) mat(delim: "[", 6; 0; 0) = mat(delim: "[", 6; 0) . $]

解正规方程 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 得到 $hat(bold(x))$:

#dmath[$ mat(delim: "[", 3, 3; 3, 5) mat(delim: "[", hat(x)_1; hat(x)_2) = mat(delim: "[", 6; 0) quad "给出" quad hat(bold(x)) = mat(delim: "[", hat(x)_1; hat(x)_2) = mat(delim: "[", 5; -3) . $ (8)]

#pagebreak()