#import "../theme.typ": *

再重复强调一遍: 如果 $bold(A)^T bold(A)$ 是 $n times m$ 矩阵左乘 $m times n$ 矩阵, 那么 $bold(A)^T bold(A)$ 是 $n times n$ 方阵. 又因为 $bold(A)^T bold(A)$ 的转置为 $(bold(A)^T bold(A))^T = bold(A)^T (bold(A)^T)^T$, 它等于 $bold(A)^T bold(A)$, 所以 $bold(A)^T bold(A)$ 是对称矩阵. 而前面已经证明如果 $bold(A)$ 各列线性无关, 那么 $bold(A)^T bold(A)$ 可逆.

观察线性相关列与线性无关列的区别:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  align: (center, center),
  [
    $ bold(A)^T quad bold(A) quad bold(A)^T bold(A) $ \
    $ mat(delim: "[", 1, 1, 0; 2, 2, 0) mat(delim: "[", 1, 2; 1, 2; 0, 0) = mat(delim: "[", 2, 4; 4, 8) , $ \
    线性相关　奇异矩阵
  ],
  [
    $ bold(A)^T quad bold(A) quad bold(A)^T bold(A) $ \
    $ mat(delim: "[", 1, 1, 0; 2, 2, 1) mat(delim: "[", 1, 2; 1, 2; 0, 1) = mat(delim: "[", 2, 4; 4, 9) . $ \
    线性无关　可逆矩阵
  ],
)

#hei[简要概括]  为了得到投影 $bold(p) = hat(x)_1 bold(a)_1 + hat(x)_2 bold(a)_2 + dots.c + hat(x)_n bold(a)_n$, 需先求解 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$. 得到 $hat(bold(x))$ 后, 投影就是 $bold(p) = bold(A) hat(bold(x))$, 而误差向量为 $bold(e) = bold(b) - bold(p) = bold(b) - bold(A) hat(bold(x))$. 投影矩阵 $bold(P) = bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T$ 给出 $bold(p) = bold(P b)$.

该投影矩阵满足 $bold(P)^2 = bold(P)$. 向量 $bold(b)$ 末端到列空间 $C(bold(A))$ 的距离为 $norm(bold(e))$.

#barHead[■ 要点回顾]

#hei[1.] $bold(b)$ 到过 $bold(a)$ 的直线上的投影为 $bold(p) = bold(a) hat(x) = bold(a) (bold(a)^T bold(b))/(bold(a)^T bold(a))$.

#hei[2.] 秩为 1 的投影矩阵 $bold(P) = (bold(a) bold(a)^T)/(bold(a)^T bold(a))$ 左乘 $bold(b)$ 可得 $bold(p)$.

#hei[3.] 将 $bold(b)$ 投影到子空间上为 $bold(p)$, 可得 $bold(e) = bold(b) - bold(p)$ 垂直于子空间.

#hei[4.] 当 $bold(A)$ 列满秩时, 解方程 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 可得 $hat(bold(x))$, 进而得 $bold(p) = bold(A) hat(bold(x))$.

#hei[5.] 投影矩阵 $bold(P) = bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T$ 满足 $bold(P)^T = bold(P), bold(P)^2 = bold(P)$ 和 $bold(P b) = bold(p)$.

#barHead[■ 范例解析]

#hei[4.2 A]  将向量 $bold(b) = (3, 4, 4)$ 分别投影到过 $bold(a) = (2, 2, 1)$ 的直线上, 以及包含 $bold(a)$ 和 $bold(a)^* = (1, 0, 0)$ 的平面上. 验证第一个误差向量 $bold(b) - bold(p)$ 垂直于 $bold(a)$, 以及第二个误差向量 $bold(e)^* = bold(b) - bold(p)^*$ 垂直于 $bold(a)$ 和 $bold(a)^*$.

求出到包含 $bold(a)$ 和 $bold(a)^*$ 平面上的 $3 times 3$ 投影矩阵 $bold(P)$, 再求一个向量, 使得它到该平面上的投影是零向量. 为什么该向量恰为误差 $bold(e)^*$ 呢?

#hei[解]  $bold(b) = (3, 4, 4)$ 到过 $bold(a) = (2, 2, 1)$ 的直线上的投影为 $bold(p) = 2 bold(a)$:

#dmath[$ "到直线上的投影" quad bold(p) = (bold(a)^T bold(b))/(bold(a)^T bold(a)) bold(a) = 18/9 (2, 2, 1) = (4, 4, 2) = 2 bold(a) . $]

误差向量 $bold(e) = bold(b) - bold(p) = (-1, 0, 2)$ 垂直于 $bold(a) = (2, 2, 1)$. 故所求 $bold(p)$ 是正确的.

$bold(a) = (2, 2, 1)$ 与 $bold(a)^* = (1, 0, 0)$ 所在平面是 $bold(A) = [bold(a) quad bold(a)^*]$ 的列空间:

#pagebreak()