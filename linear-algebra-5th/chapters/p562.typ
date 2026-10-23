#import "../theme.typ": *

然后通过四舍五入保留三位有效数字再次计算 $bold(A)^(-1)$:

#dmath[$ "病态矩阵" quad bold(A) = mat(1, 1/2, 1/3; 1/2, 1/3, 1/4; 1/3, 1/4, 1/5) . $]

#ti[3.][对于习题 2 中的系数矩阵 $bold(A)$, 分别计算 $bold(b) = bold(A) bold(x)$, 其中 $bold(x) = (1, 1, 1)$ 和 $bold(x) = (0, 6, -3.6)$. 常数向量的微小变化 $Delta bold(b)$ 会产生解的巨大变化 $Delta bold(x)$.]

#ti[4.][对于 $8 times 8$ 希尔伯特矩阵 $bold(A)$, 其中 $a_(i j) = 1/(i + j - 1)$, 利用计算机求其特征值. 对于方程 $bold(A) bold(x) = bold(b)$, 若 $norm(bold(b)) = 1$, 则 $norm(bold(x))$ 有多大? 假设 $bold(b)$ 带有小于 $10^(-16)$ 的舍入误差, 这会造成解 $bold(x)$ 的误差有多大? 见第 9.2 节.]

#ti[5.][对于 $m$ 阶带状矩阵 (半带宽为 $w$) $bold(A)$ 的向上回代过程, 证明求解 $bold(U) bold(x) = bold(c)$ 的乘法运算次数约为 $w n$.]

#ti[6.][若已知 $bold(L)$, $bold(U)$ 以及 $bold(Q)$ 和 $bold(R)$, 分别求解 $bold(L) bold(U) bold(x) = bold(b)$ 和 $bold(Q) bold(R) bold(x) = bold(b)$, 哪一个求解速度更快?]

#ti[7.][证明计算 $n$ 阶上三角形矩阵的逆矩阵的乘法运算次数约为 $1/6 n^3$. 对单位矩阵 $bold(I)$ 的各列分别使用向上回代.]

#ti[8.][试通过选择各列的最大主元 (列主元消元法), 将下列矩阵 $bold(A)$ 分解为 $bold(P) bold(A) = bold(L) bold(U)$:]

#dmath[$ (a) bold(A) = mat(1, 0; 2, 2) ; quad (b) bold(A) = mat(1, 0, 1; 2, 2, 0; 0, 2, 0) . $]

#ti[9.][设 $4 times 4$ 三对角矩阵 $bold(A)$ 的主对角线和次对角线上的元素均为 1, 试求 $bold(A)$ 中的 6 个零元素的余子式. $bold(A)^(-1)$ 中对应位置的元素是非零的.]

#ti[10.][(文·罗恩 (Van Loan) 推荐) 当 $epsilon = 10^(-3), 10^(-6), 10^(-9), 10^(-12), 10^(-15)$ 时, 求如下系数矩阵的 LU 分解, 然后通过消元法求解下列方程:]

#dmath[$ mat(epsilon, 1; 1, 1) mat(x_1; x_2) = mat(1 + epsilon; 2) . $]

其真解 $bold(x)$ 为 $(1, 1)$. 绘制表格来展示每个 $epsilon$ 所产生的误差. 将两个方程交换一下, 然后再次求解, 这时误差就几乎消失了.

#ti[11.][(a) 选择适当的 $sin theta$ 和 $cos theta$ 将下列 $bold(A)$ 进行化为三角形矩阵, 然后求得 $bold(R)$:]

#dmath[$ "吉文斯旋转" quad bold(Q)_(21) bold(A) = mat(cos theta, -sin theta; sin theta, cos theta) mat(1, -1; 3, 5) = mat(star, star; 0, star) = bold(R) ; $]

#sub[(b) 选择适当的 $sin theta$ 和 $cos theta$ 使 $bold(Q) bold(A) bold(Q)^(-1)$ 为三角形矩阵, 再求其特征值.]

#pagebreak()