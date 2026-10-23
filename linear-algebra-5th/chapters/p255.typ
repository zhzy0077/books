#import "../theme.typ": *

#hei[14.] 最小二乘法背后的第二个假设: 方差为 $sigma^2$ 的 $m$ 个误差 $e_i$ 相互独立, 故 $(bold(b) - bold(A) bold(x))(bold(b) - bold(A) bold(x))^T$ 的平均值为 $sigma^2 bold(I)$. 用 $(bold(A)^T bold(A))^(-1) bold(A)^T$ 和 $bold(A) (bold(A)^T bold(A))^(-1)$ 分别左乘、右乘 $(bold(b) - bold(A) bold(x))(bold(b) - bold(A) bold(x))^T$, 由此证明平均值矩阵 $(hat(bold(x)) - bold(x))(hat(bold(x)) - bold(x))^T$ 为 $sigma^2 (bold(A)^T bold(A))^(-1)$. 这就是第 10.2 节中的协方差矩阵 $bold(W)$.

#hei[15.] 设医生通过仪器读取患者的 4 次心率, 得到 $b_1, b_2, b_3, b_4$. 方程组

#align(center)[$ cases(x = b_1, x = b_2, x = b_3, x = b_4) $]

的最佳解为 $b_1, b_2, b_3, b_4$ 的平均值 $hat(x)$. 系数矩阵 $bold(A)$ 为全 1 列. 在习题 14 中, 预期误差 $(hat(x) - x)^2$ 为 $sigma^2 (bold(A)^T bold(A))^(-1) = \_\_\_\_$. 通过取平均, 方差由 $sigma^2$ 降为 $sigma^2/4$.

#hei[16.] 如果已知九个数 $b_1, b_2, dots.c, b_9$ 的平均值 $hat(x)_9$, 再多一个数 $b_10$, 如何快速求出它们的平均值 $hat(x)_10$? 递归最小二乘法的思路是避免 10 个数相加的麻烦. 计算 $hat(x)_10$ 时, 用什么数去乘 $hat(x)_9$? 类似于范例解析 4.2 B#footnote[译者注: 英文版误为 4.2 C.],

#align(center)[$ hat(x)_10 = 1/10 b_10 + \_\_\_\_ hat(x)_9 = 1/10 (b_1 + b_2 + dots.c + b_10). $]

习题 17—24 给出关于 $hat(x)$, $p$ 和 $e$ 的更多练习.

#hei[17.] 写出关于直线 $b = C + D t$ 的三个方程, 要求 $t = -1$ 时 $b = 7$, $t = 1$ 时 $b = 7$, 以及 $t = 2$ 时 $b = 21$. 求出最小二乘解 $hat(bold(x)) = (C, D)$, 并画出最优直线.

#hei[18.] 求出习题 17 中的投影向量 $p = bold(A) hat(bold(x))$, 由此可得最优直线的三个高度. 证明误差向量为 $e = (2, -6, 4)$. 为什么 $bold(P) e = 0$?

#hei[19.] 在习题 18 中, 设 $t = -1, 1, 2$ 时, 测量误差为 $2, -6, 4$. 计算 $hat(bold(x))$ 和最接近测量值的直线. 解释结果: $bold(b) = (2, -6, 4)$ 垂直于 $\_\_\_\_$, 因此投影为 $p = 0$.

#hei[20.] 设在 $t = -1, 1, 2$ 处的测量值为 $bold(b) = (5, 13, 17)$. 计算 $hat(bold(x))$ 和最优直线以及 $e$. 误差为 $e = 0$, 这是由于 $bold(b)$ 为 $\_\_\_\_$.

#hei[21.] $bold(A)$ 的四个子空间中哪一个包含误差向量 $e$? 哪一个包含 $p$? 哪一个包含 $hat(bold(x))$? $bold(A)$ 的零空间是什么?

#hei[22.] 求出在横坐标 $t = -2, -1, 0, 1, 2$ 处拟合 $bold(b) = 4, 2, -1, 0, 0$ 的最优直线 $b = C + D t$.

#hei[23.] 误差向量 $e$ 正交于 $bold(b), p, e$ 还是 $hat(bold(x))$? 证明 $norm(e)^2$ 等于 $e^T bold(b)$, 亦即 $bold(b)^T bold(b) - p^T bold(b)$. 这是最小的全误差 $E$.

#hei[24.] $norm(bold(A) bold(x))^2$ 关于 $x_1, x_2, dots.c, x_n$ 的偏导数构成了向量 $2 bold(A)^T bold(A) bold(x)$, 而 $2 bold(b)^T bold(A) bold(x)$ 的偏导数构成了向量 $2 bold(A)^T bold(b)$. 因此, 当 $\_\_\_\_$ 时, $norm(bold(A) bold(x) - bold(b))^2$ 的偏导数均为零.





#pagebreak()
