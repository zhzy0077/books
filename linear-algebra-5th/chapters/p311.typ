#import "../theme.typ": *

#sub[(a) 请利用以上等式得到关于 $x_1$ 的计算公式;]

#sub[(b) 请写出上式中得到中间等式的计算步骤.]

#ti[5.][若 $3 times 3$ 线性方程组 $bold(A) bold(x) = bold(b)$ 右边的常数项向量 $bold(b)$ 是系数矩阵 $bold(A)$ 的第 1 列, 请求解这个方程组. 请问在克拉默法则中如何利用每个行列式来求这个解 $bold(x)$?]

#exerciseNote[习题 6—15 是关于 $bold(A)^(-1) = (bold(C)^T)/(det bold(A))$ 的, 切记要转置 $bold(C)$.]

#ti[6.][请利用代数余子式公式 $(bold(C)^T)/(det bold(A))$ 计算 $bold(A)^(-1)$, 其中对 (b) 可应用对称性:

#align(center)[#grid(columns: (auto, auto), column-gutter: 3em, align: horizon,
  [(a) $bold(A) = mat(delim: "[", 1, 2, 0; 0, 3, 0; 0, 7, 1) ;$,],
  [(b) $bold(A) = mat(delim: "[", 2, -1, 0; -1, 2, -1; 0, -1, 2) .$],
)]]

#ti[7.][若方阵 $bold(A)$ 的所有代数余子式全是零, 请问如何确定 $bold(A)$ 不可逆? 若所有代数余子式都不是零, 请问 $bold(A)$ 一定可逆吗?]

#ti[8.][请首先计算 $bold(A)$ 的代数余子式, 然后计算 $bold(A) bold(C)^T$ 来求出 $det bold(A)$:

#dmath[$ bold(A) = mat(delim: "[", 1, 1, 4; 1, 2, 2; 1, 2, 5), quad bold(C) = mat(delim: "[", 6, -3, 0), quad bold(A) bold(C)^T = #underline[#h(3em)] . $]

若将元素 4 改成 100, 请问为什么 $det bold(A)$ 不变?]

#ti[9.][假设 $det bold(A) = 1$ 且已知 $bold(C)$ 中所有的代数余子式, 请问如何计算矩阵 $bold(A)$?]

#ti[10.][请利用公式 $bold(A) bold(C)^T = (det bold(A)) bold(I)$ 来证明 $det bold(C) = (det bold(A))^(n-1)$.]

#ti[11.][若 $bold(A)$ 的所有元素全是整数, 且 $det bold(A) = 1$ 或 $-1$, 请证明 $bold(A)^(-1)$ 的所有元素也全是整数, 并给出元素不全为零的一个二阶范例.]

#ti[12.][若 $bold(A)$ 和 $bold(A)^(-1)$ 的元素都是整数, 请证明 $det bold(A) = 1$ 或 $-1$. 提示: $det bold(A)$ 乘 $det bold(A)^(-1)$ 的结果是什么?]

#ti[13.][例 3 运用代数余子式计算 $bold(A)^(-1)$, 请补完该例的计算过程.]

#ti[14.][设下三角形矩阵 $bold(L)$ 和对称矩阵 $bold(S)$ 都可逆:

#grid(
  columns: (auto, auto),
  align: (left + horizon, center),
  [对下三角形矩阵 $bold(L)$ \ 和对称矩阵 $bold(S)$ \ 求逆矩阵],
  $ bold(L) = mat(delim: "[", a, 0, 0; b, c, 0; d, e, f), quad bold(S) = mat(delim: "[", a, b, d; b, c, e; d, e, f) . $,
)

#sub[(a) 请问 $bold(L)$ 的哪三个代数余子式等于零? 这样 $bold(L)^(-1)$ 也是下三角形矩阵;]

#sub[(b) 请问 $bold(S)$ 的哪三对代数余子式相等? 这样 $bold(S)^(-1)$ 也是对称矩阵;]

#sub[(c) 正交矩阵 $bold(Q)$ 的代数余子式矩阵 $bold(C)$ 是 #underline[#h(3em)], 为什么?]]



#pagebreak()