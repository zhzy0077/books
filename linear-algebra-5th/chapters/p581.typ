#import "../theme.typ": *
#set par(spacing: 16pt, leading: 13.5pt)
#show math.equation.where(block: true): set block(above: 16pt, below: 16pt)
#show block.where(breakable: true): set block(above: 20pt, below: 20pt)

#ti[8.][证明对任何 $2 times 2$ 矩阵 $mat(delim: "[", a, b; c, d)$, 高斯-赛德尔迭代法和雅可比迭代法中矩阵 $bold(S)^(-1) bold(T)$ 的谱半径 $|lambda|_max$ 分别等于 $abs((b c)/(a d))$ 和 $abs((b c)/(a d))^(1/2)$. 这里假定 $a d != 0$, 从而矩阵 $bold(S)$ 可逆.]
#v(12pt)
#ti[9.][给出高斯-赛德尔迭代法的代码 (用 MATLAB 或其他语言). 可以从 $bold(A)$ 出发定义 $bold(S)$ 和 $bold(T)$, 或者直接从 $a_(i j)$ 设置迭代循环. 当 $bold(b) = (1, 0, dots.c, 0)$ 时, 分别对 10 阶、20 阶、50 阶 “$-1, 2, -1$” 三对角矩阵 $bold(A)$ 进行测试.]
#v(12pt)
#ti[10.][高斯-赛德尔迭代法中迭代值 $bold(x)^"新"$ 的第 $i$ 个分量会用到 $bold(x)^"新"$ 的前 $i - 1$ 个分量:

#dmath[$ "高斯-赛德尔迭代法" quad x_i^"新" = x_i^"旧" + 1/a_(i i) (b_i - sum_(j=1)^(i-1) a_(i j) x_j^"新" - sum_(j=i)^n a_(i j) x_j^"旧"). $]

如果每个 $x_i^"新" = x_i^"旧"$, 怎么证明解 $bold(x)$ 是正确的? 雅可比迭代法对应的迭代公式是什么? 在上式括号外加入 $omega$ 则对应 SOR 迭代法.]
#v(12pt)
#ti[11.][将 (10) 式两边除以 $lambda_1^k$ 并解释为什么比值 $|lambda_2/lambda_1|$ 控制着幂法的收敛性. 构造一个使此方法不收敛的矩阵 $bold(A)$.]
#v(12pt)
#ti[12.][马尔可夫矩阵 $bold(A) = mat(delim: "[", 0.9, 0.3; 0.1, 0.7)$ 的特征值为 $lambda = 1$ 和 $0.6$, 且幂法的迭代值 $bold(u)_k = bold(A)^k bold(u)_0$ 收敛到 $mat(delim: "[", 0.75; 0.25)$. 给出 $bold(A)^(-1)$ 的特征向量, 反幂法的迭代值 $bold(u)_(-k) = bold(A)^(-k) bold(u)_0$ 会收敛到什么向量 (乘以 $0.6^k$ 以后)?]
#v(12pt)
#ti[13.][$n - 1$ 阶 “$-1, 2, -1$” 三对角矩阵的特征值为 $lambda_j = 2 - 2 cos (j pi)/n$. 为什么最小的特征值大约为 $(j pi/n)^2$? 解释反幂法的收敛速度由 $lambda_1/lambda_2 approx 1/4$ 控制.]
#v(12pt)
#ti[14.][对矩阵 $bold(A) = mat(delim: "[", 2, -1; -1, 2)$ 和初始值 $bold(u)_0 = mat(delim: "[", 1; 0)$, 应用幂法 $bold(u)_(k+1) = bold(A) bold(u)_k$ 迭代三次, 并求出幂法收敛到的特征向量.]
#v(12pt)
#ti[15.][对第 14 题中的矩阵 $bold(A)$, 取相同的初始值 $bold(u)_0$, 应用反幂法 $bold(u)_(k+1) = bold(A)^(-1) bold(u)_k$ 迭代三次, 求出 $bold(u)_k$ 收敛到的特征向量.]
#v(12pt)
#ti[16.][对如下矩阵 $bold(A)$ 使用求特征值的 QR 方法:

#dmath[$ bold(A) = mat(delim: "[", cos theta, sin theta; sin theta, 0) = bold(Q) bold(R) = mat(delim: "[", cos theta, -sin theta; sin theta, cos theta) mat(delim: "[", 1, ?; 0, ?). $]

证明 $bold(A) = bold(Q) bold(R)$ 中 (2,1) 位置的元素 $sin theta$ 在 $bold(R) bold(Q)$ 中降为 $-sin^3 theta$ (计算 $bold(R)$ 和 $bold(R) bold(Q)$). 这种 “三次收敛” 使 QR 方法可行.]
#v(12pt)
#ti[17.][如果 $bold(A)$ 是正交矩阵, 那么在 QR 分解时 $bold(Q) = \_\_\_\_, bold(R) = \_\_\_\_$. 因此 $bold(R) bold(Q) = \_\_\_\_.$ 这是无法使用 QR 方法求特征值的一个罕见情形.]

#pagebreak()