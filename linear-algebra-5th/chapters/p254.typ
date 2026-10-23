#import "../theme.typ": *

#hei[7.] 求过原点的直线 $b = D t$, 要求其与习题 1 中四个点距离最近. 精准拟合需要求解方程组

#dmath[$ cases(D dot 0 = 0, D dot 1 = 8, D dot 3 = 8, D dot 4 = 20). $]

写出方程组的 $4 times 1$ 系数矩阵 $bold(A)$, 并求解 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$. 重新画出图 4.12(a), 来展示最优直线 $b = D t$ 和误差 $e$.

#hei[8.] 将 $bold(b) = (0, 8, 8, 20)$ 投影到过 $bold(a) = (0, 1, 3, 4)$ 的直线上. 求出 $hat(x) = D$ 和 $p = hat(x) bold(a)$. 习题 5、习题 6 中最佳 $C$ 和习题 7、习题 8 中最佳 $D$ 与习题 1—4 中最佳 $(C, D)$ 并不一致, 这是因为 $(1, 1, 1, 1)$ 和 $(0, 1, 3, 4)$ $\_\_\_\_$ 正交.

#hei[9.] 考虑与习题 1 中四个点距离最近的抛物线 $b = C + D t + E t^2$, 写出关于三个未知数 $bold(x) = (C, D, E)$ 的不可解方程组 $bold(A) bold(x) = bold(b)$. 建立三个正规方程 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ (解不必求出). 如果图 4.12(a) 表现的是由 4 个点拟合抛物线, 那么图 4.12(b) 有何改变?

#hei[10.] 考虑与习题 1 中四个点距离最近的三次曲线 $b = C + D t + E t^2 + F t^3$, 写出对应的方程组 $bold(A) bold(x) = bold(b)$, 并用消元法求解. 在图 4.12(a) 中, 如果该三次曲线恰好经过各点, 那么 $p$ 和 $e$ 是什么?

#hei[11.] 对习题 1 中的四个点, 四个横坐标的平均值为

#dmath[$ hat(t) = 1/4 (0 + 1 + 3 + 4) = 2, $]

四个高度的平均值为

#dmath[$ hat(b) = 1/4 (0 + 8 + 8 + 20) = 9. $]

(a) 验证最优直线经过中心点 $(hat(t), hat(b)) = (2, 9)$;

(b) 解释为什么 $C + D hat(t) = hat(b)$ 来自 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 的第一个方程.

习题 12—16 引入统计学基本概念——最小二乘法的基础.

#hei[12.] (推荐) 将 $bold(b) = (b_1, b_2, dots.c, b_m)$ 投影到过 $bold(a) = (1, 1, dots.c, 1)$ 的直线上. 利用最小二乘法, 求解 $m$ 个一元方程 $bold(a) x = bold(b)$.

(a) 求解 $bold(a)^T bold(a) hat(x) = bold(a)^T bold(b)$, 从而证明 $hat(x)$ 是 $bold(b)$ 的均值;

(b) 求出 $e = bold(b) - bold(a) hat(x)$ 和方差 $norm(e)^2$ 以及标准差 $norm(e)$;

(c) 水平直线 $hat(b) = 3$ 距离 $bold(b) = (1, 2, 6)$ 最近. 验证 $p = (3, 3, 3)$ 垂直于 $e$, 并求出 $3 times 3$ 投影矩阵 $bold(P)$.

#hei[13.] 最小二乘法背后的第一个假设: $bold(A) bold(x) = bold(b) -$ (均值为零的噪声 $e$). 用 $(bold(A)^T bold(A))^(-1) bold(A)^T$ 左乘误差向量 $e = bold(b) - bold(A) bold(x)$, 所得等式右侧为 $hat(bold(x)) - bold(x)$. 估计误差 $hat(bold(x)) - bold(x)$ 也是均值为零的, 估计量 $hat(bold(x))$ 是无偏的.

#pagebreak()