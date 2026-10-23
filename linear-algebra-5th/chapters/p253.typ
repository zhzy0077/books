#import "../theme.typ": *

#align(center)[#image("../assets/fig-p253-icon.png", width: 2.6%)]

#xiti[习题集 4.3]

习题 1—11 利用四个数据点 $(0,0), (1,8), (3,8), (4,20)$ 来阐明关键概念 (图 4.12).

#figure(image("../assets/fig-p253-fig412.png", width: 82%), numbering: none, caption: [图 4.12　涉及习题 1—11: 最优直线 $b = C + D t$ 对应 $R^4$ 中的 $C a_1 + D a_2$.])

#ti[1.][已知横坐标 $t = 0, 1, 3, 4$ 处高度分别为 $b = 0, 8, 8, 20$ 的四个点, 建立并求解正规方程组 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$. 对于图 4.12(a) 中的最佳直线, 求出它的四个高度 $p_i$ 以及四个误差 $e_i$. $E = e_1^2 + e_2^2 + e_3^2 + e_4^2$ 的最小值是多少?]

#ti[2.][(直线 $b = C + D t$ 恰经过高度 $p_i$) 已知横坐标 $t = 0, 1, 3, 4$ 处高度 $b = 0, 8, 8, 20$ 的四个点, 写出对应的方程组 $bold(A) bold(x) = bold(b)$ (不可解). 将测量值 (高度) 变为 $p = 1, 5, 13, 17$, 求出 $bold(A) hat(bold(x)) = p$ 的精确解.]

#ti[3.][对于上题中的矩阵 $bold(A)$, 验证 $e = bold(b) - p = (-1, 3, -5, 3)$ 垂直于矩阵 $bold(A)$ 的两列. 从 $bold(b)$ 到 $bold(A)$ 列空间的最短距离 $norm(e)$ 是多少?]

#ti[4.][(使用微积分方法) 将 $E = norm(bold(A) bold(x) - bold(b))^2$ 改写为四个平方式之和, 其中最后一个平方式为 $(C + 4D - 20)^2$. 求解导数方程 $(partial E)/(partial C) = 0$ 和 $(partial E)/(partial D) = 0$. 上述导数方程除以 2, 可得正规方程 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$.]

#ti[5.][求拟合 $bold(b) = (0, 8, 8, 20)$ 的最优水平直线的高度 $C$. 精准拟合需要求解不可解方程组]

#dmath[$ cases(C = 0, C = 8, C = 8, C = 20). $]

#sub[写出方程组的 $4 times 1$ 系数矩阵 $bold(A)$, 并求解 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$. 画出高度 $hat(x) = C$ 的水平直线以及 $e$ 中的四个误差.]

#ti[6.][将 $bold(b) = (0, 8, 8, 20)$ 投影到过 $bold(a) = (1, 1, 1, 1)$ 的直线上. 求 $hat(x) = (bold(a)^T bold(b))/(bold(a)^T bold(a))$ 和投影 $p = hat(x) bold(a)$. 验证 $e = bold(b) - p$ 垂直于 $bold(a)$, 并求出 $bold(b)$ 到过 $bold(a)$ 的直线的最短距离 $norm(e)$.]

#pagebreak()