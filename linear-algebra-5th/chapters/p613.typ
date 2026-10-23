#import "../theme.typ": *

#hei[4.] (续习题 3) 对于独立随机变量 $X, Y$, 请证明由 $p(x, y) = p_1(x) p_2(y)$ 可得

$ integral.double_(R^2) (x - m_1)^2 p(x, y) dif x dif y = sigma_1^2, $

$ integral.double_(R^2) (x - m_1)(y - m_2) p(x, y) dif x dif y = 0. $

因此二阶协方差矩阵 $bold(V)$ 是对角矩阵且对角元素为 \_\_\_\_.

#hei[5.] 证明二阶协方差矩阵 $bold(V)$ 的逆矩阵是

$ bold(V)^(-1) = mat(sigma_1^2, sigma_(12); sigma_(12), sigma_2^2)^(-1) = 1/(1 - rho^2) mat(1/sigma_1^2, -rho/(sigma_1 sigma_2); -rho/(sigma_1 sigma_2), 1/sigma_2^2), $

其中相关系数 $rho = sigma_(12)/(sigma_1 sigma_2)$. 然后可得二维高斯分布的密度函数的指数

$ -(bold(x) - bold(m))^T bold(V)^(-1)(bold(x) - bold(m)). $

#hei[6.] 设 $hat(bold(x))_k$ 是 $b_1, b_2, dots.c, b_k$ 的平均值. 在获得一个新的测量值 $b_(k+1)$ 后想计算新的平均值 $hat(bold(x))_(k+1)$. 卡尔曼更新方程 (17) 是

$ "新的平均值" quad hat(bold(x))_(k+1) = hat(bold(x))_k + 1/(k+1)(b_(k+1) - hat(bold(x))_k). $

请验证 $hat(bold(x))_(k+1)$ 是 $b_1, b_2, dots.c, b_(k+1)$ 的平均值.

#hei[7.] (续习题 6) 假设均值 $hat(bold(x))_k$ 对应方差 $W_k = sigma^2/k$, $b_(k+1)$ 的方差 $V = sigma^2$, 请验证更新方程 (18), 其中方差 $W_(k+1) = sigma^2/(k+1)$.

#hei[8.] (稳定模型) 习题 6 和习题 7 讨论的是静态最小二乘法. 所有样本的平均值 $hat(bold(x))_k$ 是相同 $x$ 的估计值. 为使卡尔曼滤波变为动态的, 还需包括状态方程 $x_(k+1) = F x_k$, 其自身的误差方差为 $s^2$. 动态最小二乘问题允许 $x$ 随着 $k$ 的增加而 “飘移”:

$ mat(1, ; -F, 1; , 1) mat(x_0; x_1) = mat(b_0; 0; b_1), quad "其中的方差为" mat(sigma^2; s^2; sigma^2). $

当 $F = 1$ 时, 将这三个方程两边分别同时除以 $sigma, s$ 和 $sigma$. 利用最小二乘法计算 $hat(bold(x))_0$ 和 $hat(bold(x))_1$, 使得新近的 $b_1$ 获得更大的权重. 卡尔曼滤波在 #emph[Algorithms for Global Positioning] 中有详细介绍 (博尔和本书作者著, Wellesley-Cambridge 出版社出版).



#pagebreak()