#import "../theme.typ": *

#ti[9.][(a) 在范例 3.3 A 中, $[bold(A) quad bold(b)]$ 化为 $[bold(U) quad bold(c)]$, 将消元倍数填入下三角形矩阵 $bold(L)$, 并验证 $bold(L) bold(U) = bold(A)$ 以及 $bold(L) bold(c) = bold(b)$;

#sub[(b) 如果以特解 $bold(x)_p$ 中的分量值 $-9$ 和 3 为线性组合系数, 那么 $bold(A)$ 的两个主元列的对应线性组合等于什么? 请分析原因.]]

#ti[10.][构造一个 $2 times 3$ 线性方程组 $bold(A) bold(x) = bold(b)$, 要求特解为 $bold(x)_p = (2,4,0)$, 且齐次解 $bold(x)_n$ 等于 $(1,1,1)$ 的任意倍数.]

#ti[11.][为什么无法构造一个 $1 times 3$ 线性方程组, 使得它的特解为 $bold(x)_p = (2,4,0)$ 且零空间解 $bold(x)_n$ 为 $(1,1,1)$ 的任意倍数?]

#ti[12.][(a) 设 $bold(A) bold(x) = bold(b)$ 有两个解 $bold(x)_1$ 与 $bold(x)_2$, 试求出 $bold(A) bold(x) = 0$ 的两个解;

#sub[(b) 接上问, 分别求出 $bold(A) bold(x) = 0$ 和 $bold(A) bold(x) = bold(b)$ 的第三个解.]]

#ti[13.][解释以下论断错误的原因:

#sub[(a) 全解是特解 $bold(x)_p$ 与零空间解 $bold(x)_n$ 的任意线性组合;]

#sub[(b) 线性方程组 $bold(A) bold(x) = bold(b)$ 至多有一个特解;]

#sub[(c) 当所有自由变量取零值时得到特解 $bold(x)_p$, 它是最短解 (即解向量的长度 $\|\ bold(x)\|$ 最小); 给出一个 $2 times 2$ 的反例;]

#sub[(d) 当 $bold(A)$ 可逆时, 它的零空间中无解, 即为空集.]]

#ti[14.][设 $bold(U)$ 的第 5 列没有主元, 那么 $x_5$ 是 \_\_\_\_ 变量. 零向量 (是) (不是) $bold(A) bold(x) = 0$ 的唯一解. 如果 $bold(A) bold(x) = bold(b)$ 有解, 那么它有 \_\_\_\_ 个解.]

#ti[15.][设 $bold(U)$ 的第 3 列没有主元, 那么该行是 \_\_\_\_. 当 \_\_\_\_ 时, 方程组 $bold(U) bold(x) = bold(c)$ 是可解的. 方程组 $bold(A) bold(x) = bold(b)$ (是) (不是) (可能不是) 可解的.]

习题 16—20 是关于 “满秩矩阵” (即 $r = m$ 或 $r = n$) 的.

#ti[16.][$3 times 5$ 矩阵 $bold(A)$ 的秩的最大取值为 \_\_\_\_. 此时 $bold(U)$ 和 $bold(R)$ 的每个 \_\_\_\_ 中均有一个主元, 并且 $bold(A) bold(x) = bold(b)$ 的解 (总是存在的) (是唯一的), 而 $bold(A)$ 的列空间是 \_\_\_\_. 这种矩阵的一个例子为 $bold(A) = $ \_\_\_\_.]

#ti[17.][$6 times 4$ 矩阵 $bold(A)$ 的秩的最大取值为 \_\_\_\_. 此时 $bold(U)$ 和 $bold(R)$ 的每个 \_\_\_\_ 中均有一个主元, 并且 $bold(A) bold(x) = bold(b)$ 的解 (总是存在的) (是唯一的), 而 $bold(A)$ 的零空间是 \_\_\_\_. 这种矩阵的一个例子为 $bold(A) = $ \_\_\_\_.]

#ti[18.][利用消元法求出以下各矩阵 $bold(A)$ 以及 $bold(A)^T$ 的秩:

#grid(columns: (1fr, 1fr), column-gutter: 1em, align: horizon,
  [ (a) $ bold(A) = mat(delim: "[", 1,4,0; 2,11,5; -1,2,10) ; $ ],
  [ (b) $ bold(A) = mat(delim: "[", 1,0,1; 1,1,2; 1,1,q) quad ("秩取决于" q) . $ ],
)]

#ti[19.][求出各矩阵 $bold(A)$, $bold(A)^T bold(A)$ 以及 $bold(A) bold(A)^T$ 的秩:

#grid(columns: (1fr, 1fr), column-gutter: 1em, align: horizon,
  [ (a) $ bold(A) = mat(delim: "[", 1,1,5; 1,0,1) ; $ ],
  [ (b) $ bold(A) = mat(delim: "[", 2,0; 1,1; 1,2) . $ ],
)]



#pagebreak()
