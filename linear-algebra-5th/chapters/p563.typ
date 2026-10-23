#import "../theme.typ": *

#ti[12.][当平面旋转矩阵 $bold(Q)_(i j)$ 左乘 $bold(A)$ 时, $bold(A)$ 中的哪些元素会发生变化? 当 $bold(Q)_(i j) bold(A)$ 右乘 $bold(Q)_(i j)^(-1)$ 时, 此时 $bold(Q)_(i j) bold(A)$ 中的哪些元素会发生变化?]

#ti[13.][对 $n$ 阶方阵 $bold(A)$, 计算 $bold(Q)_(i j) bold(A)$ 分别需要做多少次乘法和加法? 适当调整各个旋转变换的顺序, 可使 QR 分解只需 $2/3 n^3$ 次乘法和 $2/3 n^3$ 次加法, 这与利用反射变换进行 QR 分解的运算量相同, 也是 LU 分解运算量的两倍.]

#align(center)[#image("../assets/fig-p563-icon.png", width: 5.5%)]
#line(length: 100%)
#align(center, subsec[挑 战 题])

#ti[14.][(机械手臂转动问题) 机器手臂的转动可由分别绕 $x$ 轴、$y$ 轴、$z$ 轴作平面旋转来表示, 产生的 $3 times 3$ 旋转矩阵记为 $bold(A)$. 利用豪斯霍尔德方法作 QR 分解得

$ bold(Q)_(32) bold(Q)_(31) bold(Q)_(21) bold(A) = bold(R), $

其中 $bold(A)$ 为正交矩阵, 因此 $bold(R) = bold(I)$! 此时, $bold(A) = bold(Q)_(21)^(-1) bold(Q)_(31)^(-1) bold(Q)_(32)^(-1)$ 表示 3 次机械转动, 对应的三个角度称为 “欧拉角”. 此外, 为了避免反射变换, 要求 $det bold(A) = 1$. 试计算 $cos theta$ 和 $sin theta$ 使得

$ bold(Q)_(21) bold(A) = mat(cos theta, -sin theta, 0; sin theta, cos theta, 0; 0, 0, 1) 1/3 mat(-1, 2, 2; 2, -1, 2; 2, 2, -1) $

在 (2,1) 位置上的元素为零.]

#ti[15.][使用 MATLAB 生成 $10 times 10$ 二阶差分矩阵 #raw("K=toeplitz([2-1 zeros(1,8)])"). 随机交换行和列: #raw("K1=K(randperm(10),randperm(10))"). 利用 #raw("[L, U]=lu(K)") 和 #raw("[L1, U1]=lu(K1)") 分别对这两个矩阵进行 LU 分解, 利用 #raw("nnz(L)") 和 #raw("nnz(LL)") 计算其非零元的个数. 此时, $bold(L)$ 是三对角矩阵, 而 $bold(L)_1$ 不是.]

#ti[16.][对习题 15 中的矩阵 $bold(K)$ 重新排序, 对应的排列矩阵 $bold(P)$ 将自然排列 $1, 2, dots.c, 10$ 变为 $1, 3, 5, 7, 9, 2, 4, 6, 8, 10$:

$ bold(P) bold(K) bold(P)^T = mat(2 bold(I), bold(D); bold(D)^T, 2 bold(I)) . $

试计算矩阵 $bold(D)$, 由此可构造很多有趣的实验. 如果读者有好的想法, 欢迎发送给作者. 同时建议读者学习命令 #raw("B=sparse(A)") 的使用, 而后 #raw("find(B)") 将列出矩阵所有非零元, #raw("lu(B)") 将使用 $bold(L)$ 和 $bold(U)$ 的稀疏模式对 $bold(B)$ 进行分解. 这样只需处理非零元, 而一般 (稠密) 矩阵的 MATLAB 命令会处理所有零元.]

#ti[17.][杰夫·斯图尔特 (Jeff Stuart) 构建了一项课堂实践活动, 该活动非常精彩地向学生展示什么是病态矩阵:]

#pagebreak()