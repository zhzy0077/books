#import "../theme.typ": *

线性组合 $bold(p) = bold(A) hat(bold(x))$ 是 $bold(b)$ 到 $bold(A)$ 的列空间上的投影:

#eqnum($ bold(p) = 5 mat(1; 1; 1) - 3 mat(0; 1; 2) = mat(5; 2; -1) , quad "误差向量为" quad bold(e) = bold(b) - bold(p) = mat(1; -2; 1) . $, 9)

可以采用两种方法检验计算的正误. 其一, 误差向量 $bold(e) = (1, -2, 1)$ 与 $(1, 1, 1)$ 和 $(0, 1, 2)$ 这两列都垂直. 其二, 矩阵 $bold(P)$ 左乘 $bold(b) = (6, 0, 0)$ 应等于 $bold(p) = (5, 2, -1)$. 对于特定的 $bold(b)$, 一旦求出了 $bold(P)$, 问题就解决了.

投影矩阵为 $bold(P) = bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T$. $bold(A)^T bold(A)$ 的行列式为 $15 - 9 = 6$, 接着易得 $(bold(A)^T bold(A))^(-1)$. 那么 $bold(A)$ 先左乘 $(bold(A)^T bold(A))^(-1)$, 再左乘 $bold(A)^T$, 就得到 $bold(P)$:

#eqnum($ (bold(A)^T bold(A))^(-1) = 1/6 mat(5, -3; -3, 3) , quad bold(P) = 1/6 mat(5, 2, -1; 2, 2, 2; -1, 2, 5) . $, 10)

由于向同一子空间第二次投影不改变第一次投影结果, 所以必有 $bold(P)^2 = bold(P)$.

#hei[警告]  矩阵 $bold(P) = bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T$ 的形式会误导犯错. 读者可能会将 $(bold(A)^T bold(A))^(-1)$ 分拆为 $bold(A)^(-1) (bold(A)^T)^(-1)$. 如果犯了这个错误, 并将它代入 $bold(P)$, 将得到 $bold(P) = bold(A) bold(A)^(-1) (bold(A)^T)^(-1) bold(A)^T$. 表面上所有矩阵都抵消了, 好像推出 $bold(P)$ 为单位矩阵 $bold(I)$, 实则不然. 下面解析错误原因.

矩阵 $bold(A)$ 一般是长方形的, 它没有逆矩阵. 因为 $bold(A)^(-1)$ 根本不存在, 所以无法将 $(bold(A)^T bold(A))^(-1)$ 分拆为 $bold(A)^(-1) (bold(A)^T)^(-1)$.

根据作者的经验, 涉及长方阵的问题在求解时往往会引向 $bold(A)^T bold(A)$. 当 $bold(A)$ 的各列线性无关时, $bold(A)^T bold(A)$ 可逆. 该事实至关重要, 因此下面明确写出对应结论, 并给予证明.

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #align(center)[$bold(A)^T bold(A)$ 可逆当且仅当 $bold(A)$ 的各列线性无关.]
]

#hei[证]  $bold(A)^T bold(A)$ 为方阵 (如 $n times n$ 矩阵). 下面证明对任意矩阵 $bold(A)$, $bold(A)^T bold(A)$ 与 $bold(A)$ 有相同的零空间. 由于当 $bold(A)$ 各列线性无关时, 其零空间只含零向量, 那么具有相同零空间的 $bold(A)^T bold(A)$ 就是可逆的.

令 $bold(A)$ 为任意矩阵. 一方面, 如果 $bold(x)$ 属于 $bold(A)$ 的零空间, 那么 $bold(A x) = 0$. 该式两边用 $bold(A)^T$ 左乘得到 $bold(A)^T bold(A) bold(x) = 0$. 因此 $bold(x)$ 也属于 $bold(A)^T bold(A)$ 的零空间. 另一方面, 考虑 $bold(A)^T bold(A)$ 的零空间. 由 $bold(A)^T bold(A) bold(x) = 0$ 往证 $bold(A x) = 0$. 左乘 $(bold(A)^T)^(-1)$ 是不行的, 因为它一般不存在. 那么就用 $bold(x)^T$ 左乘:

#eqnum($ (bold(x)^T) bold(A)^T bold(A) bold(x) = 0, quad "即" quad (bold(A x))^T (bold(A x)) = 0, quad "也即" quad norm(bold(A x))^2 = 0 . $, 11)

这样就证明了如果 $bold(A)^T bold(A) bold(x) = 0$, 那么 $bold(A x)$ 长度为零, 因此 $bold(A x) = 0$, 即 $bold(x)$ 属于 $bold(A)$ 的零空间.

综上可知, $bold(A)^T bold(A)$ 与 $bold(A)$ 有相同的零空间, 即一个零空间中的任意向量 $bold(x)$ 也在另一个零空间中. 从而, $bold(A)^T bold(A)$ 各列线性无关当且仅当 $bold(A)$ 各列线性无关. 由此可知: $bold(A)^T bold(A)$ 可逆当且仅当 $bold(A)$ 各列线性无关.

#align(center)[当 $bold(A)$ 各列线性无关时, $bold(A)^T bold(A)$ 是可逆的对称方阵.]





#pagebreak()
