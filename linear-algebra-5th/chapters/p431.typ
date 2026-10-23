#import "../theme.typ": *

于是 $bold(A) = bold(Q) bold(S)$.

在力学中, 极分解将旋转 (由 $bold(Q)$ 表示) 与伸缩 (由 $bold(S)$ 表示) 拆分开来. 如图 7.7 中一般, $bold(S)$ 的特征值给出伸缩因子, $bold(S)$ 的特征向量给出伸缩方向 (对应椭圆的主轴), 而正交矩阵 $bold(Q)$ 包含了旋转矩阵 $bold(U)$ 与 $bold(V)^T$ 的信息.

关于旋转的一个事实是, $bold(Q) = bold(U) bold(V)^T$ 是离 $bold(A)$ “最近” 的正交矩阵, 即 $bold(Q)$ 使得范数 $||bold(Q) - bold(A)||$ 尽可能小. 与此呼应的是 $e^(i theta)$ 为单位圆周上离 $r e^(i theta)$ 最近的点.

奇异值分解给出有关最近奇异矩阵更加重要的结论:

#dingli[离 $bold(A)$ “最近” 的奇异矩阵 $bold(A)_0$ 可由令奇异值分解中最小奇异值 $sigma_"min" = 0$ 来得到.]

因此 $sigma_"min"$ 为 $bold(A)$ 到奇异矩阵距离的度量. 对于例 2 中的矩阵, 该距离为 $sigma_"min" = sqrt(5)$. 如果将 $sigma_"min"$ 变为零, 这相当于去掉 $bold(A) = sigma_1 u_1 v_1^T + sigma_2 u_2 v_2^T$ 中最后 (也是最小) 的一块. 那么只有秩 1 (奇异) 矩阵 $sigma_1 u_1 v_1^T$ 会留下来, 它离 $bold(A)$ 最近. 这一最小变化矩阵的范数为 $sigma_2 = sqrt(5)$ (比 3 小).

在计算机实操中, 人们通常会去掉一个非常小的 $sigma$. 相比处理分解式中趋于零矩阵的部分且未察觉这一点, 直接处理奇异矩阵会更好.

#hei[广义逆 $bold(A)^+$]

通过选取一组好基, 矩阵 $bold(A)$ 左乘行空间中的 $v_i$ 得到列空间中的 $sigma_i u_i$, 而 $bold(A)^(-1)$ 对应相反的操作, 即若 $bold(A) v = sigma u$, 则 $bold(A)^(-1) u = v/sigma$. $bold(A)^(-1)$ 的奇异值是 $1/sigma$, 类似于 $bold(A)^(-1)$ 的特征值为 $1/lambda$. 基被反转后, $u$ 和 $v$ 分别属于 $bold(A)^(-1)$ 的行空间与列空间.

上述讨论假定 “$bold(A)^(-1)$ 存在”. 当该条件不成立时, 左乘 $u_i$ 等于 $v_i/sigma_i$ 的矩阵也存在. 该矩阵就是 $bold(A)$ 的广义逆 $bold(A)^+$:

#dmath[$ bold(A)^+ = bold(V) bold(Sigma)^+ bold(U)^T $]

#dmath[$ = mat(delim: "[", v_1, dots.c, v_r, dots.c, v_n) mat(delim: "[", sigma_1^(-1), , , ; , dots.down, , ; , , sigma_r^(-1), ; , , , ) mat(delim: "[", u_1, dots.c, u_r, dots.c, u_m)^T. $]

#align(center)[$ n times n quad quad quad quad n times m quad quad quad quad m times m $]

当 $bold(A)$ 为 $m times n$ 矩阵时, 广义逆 $bold(A)^+$ 为 $n times m$ 矩阵. 如果 $bold(A)^(-1)$ 存在, 那么 $bold(A)^+$ 就等于 $bold(A)^(-1)$. 设 $bold(A)$ 的秩为 $r$, 在 $m = n = r$ 的情形下, $bold(U) bold(Sigma) bold(V)^T$ 的逆就是 $bold(V) bold(Sigma)^(-1) bold(U)^T$. 而当 $r < m$ 或 $r < n$ 时, 新符号 $bold(A)^+$ 就有用武之地了. 尽管 $bold(A)$ 没有左逆和右逆, 但它有广义逆 $bold(A)^+$, 而两者秩 $r$ 相同:

#dmath[$ "对于" i <= r, quad bold(A)^+ u_i = 1/sigma_i v_i; quad "而对于" i > r, quad bold(A)^+ u_i = 0. $]

#pagebreak()