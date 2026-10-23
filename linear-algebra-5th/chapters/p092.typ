#import "../theme.typ": *
#set par(spacing: 16pt, leading: 13.5pt)

请求出一个矩阵 $bold(M)$ (相当于多个类似于 $bold(E)$ 的矩阵相乘) 来将上述的帕斯卡矩阵化简为单位矩阵 $bold(I)$. 帕斯卡三角形矩阵是特殊矩阵, 以其为系数矩阵的线性方程组在消元时, 所有乘数都是 $ell_(i j) = 1$.

#ti[30.][参考如下步骤将矩阵 $bold(M) = mat(3, 4; 5, 7)$ 写成多个因子 $bold(A) = mat(1, 0; 1, 1)$ 和 $bold(B) = mat(1, 1; 0, 1)$ 的乘积:]

#sub[(a) 请求出作用为从第 2 行中减去第 1 行的消元矩阵 $bold(E)$, 使得 $bold(E) bold(M)$ 的第 2 行变小;]

#sub[(b) 请求出作用为从 $bold(E) bold(M)$ 的第 1 行中减去第 2 行的消元矩阵 $bold(F)$, 使得 $bold(F) bold(E) bold(M)$ 的第 1 行被化简;]

#sub[(c) 持续应用 $bold(E)$ 和 $bold(F)$, 直至多个 $bold(E)$ 和 $bold(F)$ 左乘 $bold(M)$ 的结果是 $bold(A)$ 或 $bold(B)$;]

#sub[(d) $bold(E)$ 和 $bold(F)$ 分别为 $bold(A)$ 和 $bold(B)$ 的逆矩阵! 把所有 $bold(E)$ 和 $bold(F)$ 移到右侧就会得到期待的结果: $bold(M)$ 为多个 $bold(A)$ 和 $bold(B)$ 的乘积.]

对于整数矩阵 (各元素均为整数) $bold(M) = mat(a, b; c, d) > 0$ 且 $a d - b c = 1$, 上述操作都是可行的.

#ti[31.][首先依次求出消元矩阵 $bold(E)_(21), bold(E)_(32), bold(E)_(43)$ 来将 $bold(K)$ 变为 $bold(U)$ (这里是单位矩阵):]

#dmath[$ bold(E)_(43) bold(E)_(32) bold(E)_(21) mat(1, 0, 0, 0; -a, 1, 0, 0; 0, -b, 1, 0; 0, 0, -c, 1) = bold(I) . $]

然后对单位矩阵 $bold(I)$ 应用这三个步骤, 即计算 $bold(E)_(43) bold(E)_(32) bold(E)_(21)$.



#pagebreak()
