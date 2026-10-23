#import "../theme.typ": *

#chapterHead("assets/fig-p315-chapter.png")[特征值与特征向量]

#secBracket[6.1  特征值简介]

#yaodian[
  #hei[1.] $n$ 阶方阵 $A$ 作用于其特征向量 $x$ 得共线向量 $A x$: #box(stroke: 0.6pt, inset: 3pt)[$A x = lambda x$], 其中特征值为 $lambda$ (非零).

  #hei[2.] 若 $A x = lambda x$, 则 $A^2 x = lambda^2 x$, $A^(-1) x = lambda^(-1) x$ ($A$ 可逆) 以及 $(A + c I) x = (lambda + c) x$.

  #hei[3.] 若 $A x = lambda x$, 则 $(A - lambda I) x = 0$ 且 $A - lambda I$ 是奇异矩阵, 以及 #box(stroke: 0.6pt, inset: 3pt)[$det(A - lambda I) = 0$]. 从而可解得 $n$ 阶方阵 $A$ 的 $n$ 个特征值.

  #hei[4.] 利用 $det A = lambda_1 lambda_2 dots.c lambda_n$ 和对角元素之和 $a_11 + a_22 + dots.c + a_(n n) = sum_(i=1)^n lambda_i$, 可检验特征值 $lambda$ 是否正确.

  #hei[5.] 投影矩阵的特征值为 $lambda = 1$ 和 $0$, 反射矩阵的特征值为 $1$ 和 $-1$, 而旋转矩阵的特征值为 $e^(i theta)$ 和 $e^(-i theta)$: 这是复数!
]

本章将进入线性代数的一个新领域. 之前的章节是关于线性方程组 $A x = b$ 的: 平衡且静态. 接下来的章节是关于变化的, 考察与时间变化有关的问题, 如微分方程 $(d u)/(d t) = A u$ 中含连续时间, 或差分方程 $u_(k+1) = A u_k$ 中含间隔时间. 这些方程都不是用消元法求解的.

解决上述含时间变化的问题的关键思想是避免矩阵 $A$ 所带来的复杂性. 如果解向量 $u(t)$ 始终沿固定向量 $x$ 的方向, 那么求解时只需求出乘 $x$ 的倍数 (随时间而变化). 处理数字总比处理向量更简单. 这个固定向量 $x$ 称为矩阵 $A$ 的“特征向量”, 其特点是 $A x$ 与 $x$ 的方向相同.

关于矩阵的特征向量, 这里有一个来自矩阵的幂 $A, A^2, A^3, dots.c$ 的例子, 其中

#dmath[$ A = mat(delim: "[", 0.8, 0.3; 0.2, 0.7) . $]

若求出 100 次幂 $A^100$, 则会发现它的列十分接近 $A$ 的特征向量 $(0.6, 0.4)$:

#pagebreak()