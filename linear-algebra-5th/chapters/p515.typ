#import "../theme.typ": *

#hei[12.] (MATLAB) 化学工程中通常用一阶导数 $(d u)/(d x)$ 表示流体流速, 用二阶导数 $(d^2 u)/(d x^2)$ 描述扩散速度. 将 $(d u)/(d x)$ 分别换成向前差分、中心差分和向后差分, 取 $Delta x = 1/8$. 画出用这三种离散方法求出的下列方程的数值解图形:

#dmath[$ -(d^2 u)/(d x^2) + 10 (d u)/(d x) = 1, quad u(0) = u(1) = 0. $]

这种对流-扩散方程无处不在. 在金融数学中, 该方程转化为描述期权定价问题的布莱克-斯科尔斯 (Black-Scholes) 方程.

习题 12 进一步的改编是作者在麻省理工学院讲授的 18.085 课程 “Computational Science and Engineering” 设置的第一个 MATLAB 作业. 搜索 mit ocw 可观看相关视频.

#pagebreak()