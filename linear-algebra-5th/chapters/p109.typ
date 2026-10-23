#import "../theme.typ": *

以下计算可帮助理解逆矩阵中乘法顺序为什么相反. 先计算 $bold(A) bold(B)$ 左乘 $bold(B)^(-1) bold(A)^(-1)$, 由乘法结合律可将中间两个矩阵相乘, 有 $bold(B) bold(B)^(-1) = bold(I)$:

#grid(columns: (auto, 1fr), column-gutter: 1em,
  [$ bold(A) bold(B) "的逆矩阵"$],
  $ (bold(A) bold(B)) (bold(B)^(-1) bold(A)^(-1)) = bold(A) bold(I) bold(A)^(-1) = bold(A) bold(A)^(-1) = bold(I) . $
)

上式的关键是改变括号位置以先计算 $bold(B) bold(B)^(-1)$. 同理可证 $bold(B)^(-1) bold(A)^(-1)$ 左乘 $bold(A) bold(B)$ 等于 $bold(I)$.

$bold(B)^(-1) bold(A)^(-1)$ 说明了数学中的一个基本法则: 逆运算中因子的顺序与原顺序相反. 这也是基本的常识: 如果先穿袜子再穿鞋, 那么先脱下来的是 #underline[#hei[        ]]. 在对三个或者更多个矩阵的乘积求逆时也有类似的性质:

#grid(columns: (auto, 1fr, auto), column-gutter: 1em,
  [逆序相乘],
  align(center)[$ (bold(A) bold(B) bold(C))^(-1) = bold(C)^(-1) bold(B)^(-1) bold(A)^(-1) . $],
  [(5)],
)

#hei[例 2] (消元矩阵的逆矩阵)  若三阶消元矩阵 $bold(E)$ 的作用是从第 2 行中减去第 1 行的 5 倍, 则 $bold(E)^(-1)$ 的作用是将第 1 行的 5 倍加到第 2 行:

#grid(columns: (auto, 1fr), column-gutter: 1em,
  [$ bold(E) "减," \ bold(E)^(-1) "加"$],
  $ bold(E) = mat(delim: "[", 1, 0, 0; -5, 1, 0; 0, 0, 1), quad bold(E)^(-1) = mat(delim: "[", 1, 0, 0; 5, 1, 0; 0, 0, 1) . $
)

计算 $bold(E) bold(E)^(-1)$ 得到单位矩阵 $bold(I)$, 计算 $bold(E)^(-1) bold(E)$ 也得到 $bold(I)$, 二者都是表示加上和减去第 1 行的 5 倍. 类似地, 若 $bold(A) bold(C) = bold(I)$, 则有 $bold(C) bold(A) = bold(I)$, 即对于方阵而言, 其左逆与右逆相等.

#hei[例 3]  设三阶消元矩阵 $bold(F)$ 的作用是从第 3 行中减去第 2 行的 4 倍, 则 $bold(F)^(-1)$ 的作用是加回所减部分:

#align(center)[$ bold(F) = mat(delim: "[", 1, 0, 0; 0, 1, 0; 0, -4, 1), quad bold(F)^(-1) = mat(delim: "[", 1, 0, 0; 0, 1, 0; 0, 4, 1) . $]

用 $bold(F)$ 左乘例 2 中的 $bold(E)$ 得 $bold(F) bold(E)$, 用 $bold(E)^(-1)$ 左乘 $bold(F)^(-1)$ 得 $(bold(F) bold(E))^(-1)$. 要注意 $bold(F) bold(E)$ 和 $bold(E)^(-1) bold(F)^(-1)$ 中因子的顺序!

#grid(columns: (1fr, auto), column-gutter: 1em,
  align(center)[$ bold(F) bold(E) = mat(delim: "[", 1, 0, 0; -5, 1, 0; 20, -4, 1), quad "求逆得" quad bold(E)^(-1) bold(F)^(-1) = mat(delim: "[", 1, 0, 0; 5, 1, 0; 0, 4, 1) . $],
  [(6)],
)

结果既漂亮又正确. 乘积 $bold(F) bold(E)$ 包含元素 "20" 但是它的逆矩阵却不含. $bold(E)$ 的作用是从第 2 行中减去第 1 行的 5 倍, 然后 $bold(F)$ 的作用是从第 3 行中减去新的第 2 行 (因第 1 行而变化) 的 4 倍. 按照乘积 $bold(F) bold(E)$ 的顺序, 第 3 行受到第 1 行的影晌.

按照乘积 $bold(E)^(-1) bold(F)^(-1)$ 的顺序, 就不存在上述影响. 首先 $bold(F)^(-1)$ 的作用是将第 2 行的 4 倍加到第 3 行, 然后 $bold(E)^(-1)$ 的作用是将第 1 行的 5 倍加到第 2 行, 此时第 3 行不再变化, 所以不包含 20. 按照乘积 $bold(E)^(-1) bold(F)^(-1)$ 的顺序, 第 3 行不会受到第 1 行的影晌.

这就是为什么下一节选择分解式 $bold(A) = bold(L) bold(U)$ 来从上三角形矩阵 $bold(U)$ 得到 $bold(A)$, 乘数恰好都在下三角形矩阵 $bold(L)$ 中.



#pagebreak()
