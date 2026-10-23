#import "../theme.typ": *

#ti[12.][利用 MATLAB 演示函数 eigshow 的 svd 部分, 图解求出上题中的 $v_i$.]

#ti[13.][如果 $bold(A) = bold(U) bold(Sigma) bold(V)^T$ 为可逆方阵, 那么 $bold(A)^(-1) =$ \_\_\_\_. 计算 $bold(A)^(-1) bold(A)$, 由此证明 $bold(A)^(-1)$ 的奇异值为 $1/sigma_i$.]

#hei[注]　$bold(A)^(-1)$ 的最大奇异值为 $1/(sigma_min(bold(A)))$, 最大特征值 $|lambda(bold(A)^(-1))|_max$ 为 $1/(|lambda(bold(A))|_min)$. 因此由 (14) 式可得 $sigma_min(bold(A)) <= |lambda(bold(A))|_min$.

#ti[14.][设 $u_1, u_2, dots.c, u_n$ 与 $v_1, v_2, dots.c, v_n$ 均为 $R^n$ 的标准正交基. 构造矩阵 $bold(A) = bold(U) bold(Sigma) bold(V)^T$, 从而得到 $bold(A) v_1 = u_1, bold(A) v_2 = u_2, dots.c, bold(A) v_n = u_n$, 这样就将每个 $v_j$ 转化为 $u_j$.]

#ti[15.][对向量 $v = 1/2 (1, 1, 1, 1)$ 和 $u = 1/3 (2, 2, 1)$, 构造满足 $bold(A) v = 12 u$ 的秩 1 矩阵 $bold(A)$, 其唯一奇异值为 $sigma_1 =$ \_\_\_\_.]

#ti[16.][设矩阵 $bold(A)$ 的各列 $w_1, w_2, dots.c, w_n$ 两两正交, 且长度分别为 $sigma_1, sigma_2, dots.c, sigma_n$, 那么 SVD 中的 $bold(U), bold(Sigma)$ 和 $bold(V)$ 是什么?]

#ti[17.][设 $bold(A)$ 为 $2 times 2$ 对称矩阵, 且单位特征向量为 $u_1$ 和 $u_2$. 如果它的特征值为 $lambda_1 = 3$ 和 $lambda_2 = -2$, 那么其 SVD 中的矩阵 $bold(U), bold(Sigma), bold(V)^T$ 是什么?]

#ti[18.][如果矩阵分解式 $bold(A) = bold(Q) bold(R)$ 中的 $bold(Q)$ 为正交矩阵, 那么 $bold(A)$ 的 SVD 与 $bold(R)$ 的 SVD 几乎相同. 三个矩阵 $bold(U), bold(Sigma), bold(V)$ 中那个会因 $bold(Q)$ 改变而改变?]

#ti[19.][设二阶方阵 $bold(A)$ 为可逆矩阵 (其奇异值 $sigma_1 > sigma_2 > 0$). 用尽可能 “小” 的矩阵与 $bold(A)$ 相加, 生成一个奇异矩阵 $bold(A)_0$. 提示: $bold(U)$ 和 $bold(V)$ 并不改变, 由]

#dmath[$ bold(A) = mat(delim: "[", u_1, u_2) mat(delim: "[", sigma_1, ; , sigma_2) mat(delim: "[", v_1, v_2)^T $]

求离 $bold(A)$ “最近” 的奇异矩阵 $bold(A)_0$.

#ti[20.][通过指令 svd(A) 或手工计算, 求出如下矩阵 $bold(A)$ 的奇异值:]

#dmath[$ bold(A) = mat(delim: "[", 1, 0; 100, 1). $]

为什么对该矩阵有 $sigma_2 = 1/sigma_1$?

#ti[21.][设 $bold(A)$ 的 SVD 为 $bold(U) bold(Sigma) bold(V)^T$, 为什么 $bold(A) + bold(I)$ 的 SVD 中间的矩阵不能用 $bold(Sigma) + bold(I)$?]

#ti[22.][如果 $bold(A) = bold(U) bold(Sigma) bold(V)^T$, 那么 $bold(Q)_1 bold(A) bold(Q)_2^T = (bold(Q)_1 bold(U)) bold(Sigma) (bold(Q)_2 bold(V))^T$. 为什么任意正交矩阵 $bold(Q)_1$ 与 $bold(Q)_2$ 使得 $bold(Q)_1 bold(U)$ 和 $bold(Q)_2 bold(V)$ 仍为正交矩阵? 由此看不出 $bold(Sigma)$ 中奇异值的任何变化: $bold(Q)_1 bold(A) bold(Q)_2^T$ 与 $bold(A)$ 有相同的 $sigma$.]

#ti[23.][如果 $bold(Q)$ 为正交矩阵, 那么为何其奇异值均等于 1?]

#ti[24.][(a) 求出 $(x^T bold(S) x)/(x^T x) = (3 x_1^2 + 2 x_1 x_2 + 3 x_2^2)/(x_1^2 + x_2^2)$ 的最大值. $2 times 2$ 矩阵 $bold(S)$ 是什么?]

#sub[(b) 求出 $((x_1 + 4 x_2)^2)/(x_1^2 + x_2^2)$ 的最大值. 将该比值写成 $(norm(bold(A) x)^2)/(norm(x)^2)$ 时, $2 times 2$ 矩阵 $bold(A)$ 是什么?]
#pagebreak()