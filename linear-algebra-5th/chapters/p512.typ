#import "../theme.typ": *
#set par(spacing: 18.5pt, leading: 14.5pt)
#show math.equation.where(block: true): set block(above: 26pt, below: 26pt)

#dmath[$ "固定-自由端" quad bold(u) = bold(K)_1^(-1) bold(f) = 1/c mat(delim: "[", 1,1,1; 1,2,2; 1,2,3) mat(delim: "[", m g; m g; m g) = (m g)/c mat(delim: "[", 3; 5; 6). $]

这些位移比两端自由情形要更大一些. 在上式中忽略常数 $(m g)/c$, 则 $u_1$ 的值是 3, 因为三个质点都将第一个弹簧往下拉; 第二个质点的位移为第一个弹簧的伸缩距离再加下面两个质点将第二个弹簧拉伸的距离 (对应 $3 + 2 = 5$); 第三个质点下降得更多 (对应 $3 + 2 + 1 = 6$). 由 $bold(e) = bold(A) bold(u)$ 可知弹簧的伸缩距离分别包含 3, 2, 1:

#dmath[$ bold(e) = mat(delim: "[", 1,0,0; -1,1,0; 0,-1,1) (m g)/c mat(delim: "[", 3; 5; 6) = (m g)/c mat(delim: "[", 3; 2; 1). $]

#block(above: 20pt, below: 16pt)[#hei[两个自由端: $bold(K)$ 为奇异矩阵]]

当两个端点都不受限制时, 无法确定方程组的解, 因为这意味着整个系统都可以运动, 此时 $bold(A)$ 为 $2 times 3$ 矩阵:

#eqnumL([两端自由\ $bold(e) = bold(A) bold(u)$], $ mat(delim: "[", e_1; e_2) = mat(delim: "[", u_2 - u_1; u_3 - u_2) = mat(delim: "[", -1,1,0; 0,-1,1) mat(delim: "[", u_1; u_2; u_3) . $, 13)

现在方程组 $bold(A) bold(u) = bold(0)$ 有非零解, 说明这些质点可以在弹簧不产生张力的情况下运动. 例如, 质点可以移动 $bold(u) = (1,1,1)$, 而此时弹簧伸缩量为 $bold(e) = (0,0)$:

#eqnum($ bold(A) bold(u) = mat(delim: "[", -1,1,0; 0,-1,1) mat(delim: "[", 1; 1; 1) = mat(delim: "[", 0; 0), quad "表示没有伸缩." $, 14)

由 $bold(A) bold(u) = bold(0)$ 可得 $bold(A)^T bold(C) bold(A) bold(u) = bold(0)$, 因而不存在第三个主元, $bold(A)^T bold(C) bold(A)$ 仅仅是半正定的, 并且其中不含 $c_1$ 和 $c_4$. 矩阵 $bold(A)^T bold(C) bold(A)$ 的主元为 $c_2$ 和 $c_3$, 且秩为 2:

#eqnum($ mat(delim: "[", -1,0; 1,-1; 0,1) mat(delim: "[", c_2,; ,c_3) mat(delim: "[", -1,1,0; 0,-1,1) = mat(delim: "[", c_2, -c_2, 0; -c_2, c_2 + c_3, -c_3; 0, -c_3, c_3) . $, 15)

该矩阵有两个特征值为正, 同时 $bold(x) = (1,1,1)$ 是 $lambda = 0$ 的一个特征向量. 仅针对一些特殊的向量 $bold(f)$, 方程 $bold(A)^T bold(C) bold(A) bold(u) = bold(f)$ 才是可解的. 此时外力 $bold(f)$ 需要满足条件 $f_1 + f_2 + f_3 = 0$, 否则整个系统 (两个端点均自由) 将一直向上或者向下运动.

#pagebreak()