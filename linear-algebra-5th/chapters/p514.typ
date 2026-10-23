#import "../theme.typ": *

#hei[2.] 在固定-自由边值问题中, 通过 $bold(A)_1^(-1) bold(C)_1^(-1) (bold(A)_1^T)^(-1)$ 来求矩阵 $bold(A)_1^T bold(C)_1 bold(A)_1$ 的逆矩阵.

#hei[3.] 在两端自由情形, (15) 式中的 $bold(A)^T bold(C) bold(A)$ 是奇异矩阵, 将方程组 $bold(A)^T bold(C) bold(A) bold(u) = bold(f)$ 中的三个方程相加, 证明 $bold(f)$ 需要满足条件 $f_1 + f_2 + f_3 = 0$. 当外力为 $bold(f) = (-1,0,1)$ 时, 系统受力平衡, 求方程组 $bold(A)^T bold(C) bold(A) bold(u) = bold(f)$ 的一个特解, 进而求它的通解.

#hei[4.] 满足两端自由边值条件的微分方程的解在两个端点处均满足 $(d u)/(d x) = 0$:

#dmath[$ -(d)/(d x) (c(x) (d u)/(d x)) = f(x), quad (d u)/(d x)(0) = 0, quad (d u)/(d x)(1) = 0. $]

对方程两边积分来证明力 $f(x)$ 必须实现自身平衡, 即 $integral f(x) d x = 0$, 否则方程无解. 通解可以表示为一个特解 $u(x)$ 加上任意常数. 这个常数对应矩阵 $bold(A)^T bold(C) bold(A)$ 的零空间中的向量 $bold(u) = (1,1,1)$.

#hei[5.] 在固定-自由边值问题中, 矩阵 $bold(A)$ 是方阵且可逆, 可以分别求解 $bold(A) bold(u) = bold(e)$ 与 $bold(A)^T bold(y) = bold(f)$. 对下列微分方程进行类似的操作:

#dmath[$ -(d y)/(d x) = f(x), quad y(1) = 0. $]

当 $f(x) = 1$ 时, 画出 $y(x)$ 的图形.

#hei[6.] (12) 式中的 $3 times 3$ 矩阵 $bold(K)_1 = bold(A)_1^T bold(C)_1 bold(A)_1$ 可以分解成三个 “元矩阵”: $bold(K) = c_1 bold(E)_1 + c_2 bold(E)_2 + c_3 bold(E)_3$. 写出每一个 $c_i$ 所对应的矩阵 $bold(E)_i$, 说明它们如何由矩阵乘积 $bold(A)_1^T bold(C)_1 bold(A)_1$ 中的列向量左乘行向量得到. 实际上这就是有限元刚度矩阵的构造方法.

#hei[7.] 对由 5 个弹簧连接的 4 个质点且两端固定而形成的系统, 写出矩阵 $bold(A)$, $bold(C)$ 和 $bold(K)$. 当 $bold(C) = bold(I)$ 时, 求解方程组 $bold(K) bold(u) = "ones"(4)$.

#hei[8.] 比较习题 7 中的解 $bold(u) = (u_1, u_2, u_3, u_4)$ 与连续问题 $-u'' = 1$, 其中 $u(0) = 0$, $u(1) = 0$ 的解 $u(x)$. 将抛物线 $u(x)$ 在点 $x = 1/5, 2/5, 3/5, 4/5$ 处的值与 $bold(u)$ 比较. 是否需要考虑因子 $(Delta x)^2$?

#hei[9.] 求解固定-自由边值问题 $-u'' = m g$, 其中 $u(0) = 0$, $u'(1) = 0$. 比较 $u(x)$ 在点 $x = 1/3, 2/3, 3/3$ 处的值和例 2 中的向量 $bold(u) = (3 m g, 5 m g, 6 m g)$.

#hei[10.] 假设 $c_1 = c_2 = c_3 = c_4 = 1$, $m_1 = 2$ 且 $m_2 = m_3 = 1$, 求解这种两端固定的弹簧系统对应的方程组 $bold(A)^T bold(C) bold(A) bold(u) = (2,1,1)$. 哪一个质点移动的距离最大?

#hei[11.] (MATLAB) 求由弹簧连接的 100 个质点的位移 $u(1), u(2), dots.c, u(100)$, 其中弹性系数都满足 $c = 1$, 各外力为 $f(i) = 0.01$. 分别针对两端固定和固定-自由情形画出 $bold(u)$ 的图形. 命令 #raw("diag(ones(n,1),d)") 可以生成第 $d$ 条对角线为 $n$ 维全 1 向量的方阵. 以下命令可绘制向量 $bold(u)$ 的图形:

#raw("plot(u,+);   xlabel('质点编号');   ylabel('位移');   print"))



#pagebreak()