#import "../theme.typ": *

对于给定的 $bold(A)$, 利用通常的三步骤, 构造 $bold(u)(t) = cos(bold(A) t) bold(u)(0)$:

(1) 将 $bold(u)(0) = (4, 2)$ 展开为特征向量的组合 $c_1 bold(x)_1 + c_2 bold(x)_2$;

(2) 用 \_\_\_\_ 和 \_\_\_\_ (而不是 $e^(lambda t)$) 分别乘上述特征向量;

(3) 将线性无关解相加得通解 $bold(u)(t) = c_1 \_\_\_\_ bold(x)_1 + c_2 \_\_\_\_ bold(x)_2$.

#hei[32.] 根据如下三种思路之一, 阐述结论 “$e^bold(A)$ 的平方为 $e^(2 bold(A))$” 的证明:

(a) 考虑 $e^(bold(A) t)$, 由 $t = 0$ 到 1, 再由 1 到 2 的 $e^bold(A)$ 与由 0 到 2 的 $e^(2 bold(A))$ 相一致;

(b) 平方级数 $(bold(I) + bold(A) + bold(A)^2/2 + dots.c)^2$ 对应 $bold(I) + 2bold(A) + ((2bold(A))^2)/2 + dots.c = e^(2 bold(A))$;

(c) 如果 $bold(A)$ 可对角化, 那么 $(bold(X) e^bold(A) bold(X)^(-1))(bold(X) e^bold(A) bold(X)^(-1)) = bold(X) e^(2 bold(A)) bold(X)^(-1)$.

#hei[补充材料: 微分方程]

常系数线性微分方程肯定是最简单易求的. 第 6.3 节展示了微分方程的部分知识, 以下介绍更多内容:

(1) 应用中, 二阶方程 $m u'' + b u' + k u = 0$ 扮演着主要角色. 它的解 $u = e^(lambda t)$ 中的指数 $lambda$ 是 $m lambda^2 + b lambda + k = 0$ 的根, 其中阻尼系数 $b$ 至关重要:

$ "欠阻尼" b^2 < 4m k; quad "临界阻尼" b^2 = 4m k; quad "过阻尼" b^2 > 4m k. $

以上情况决定了 $lambda_1$ 和 $lambda_2$ 是否为实数根或重根或复数根. 复数 $lambda$ 对应的解 $bold(u)(t)$ 在衰减时会振荡.

(2) 这里的方程不带强迫项 $f(t)$, 故求出的是 “零空间解” $bold(u)_n(t)$. 而对于带强迫项的二阶方程, 需要在 $bold(u)_n(t)$ 上加一个特解 $bold(u)_p(t)$ 来平衡力 $f(t)$:

输入时刻 $s$ 的 $f(s)$, 增长因子 $e^(bold(A)(t - s))$,

$ bold(u)_p = integral_0^t e^(bold(A)(t - s)) f(s) dif s. $

将时刻 $t$ 的输出累加起来

此解也可通过拉普拉斯 (Laplace) 变换求出并分析. 该变换是将线性微分方程转化为线性代数方程的通用方法.

在实际应用中, 非线性微分方程是通过数值方法解出来的. 一种具有良好精度的标准方法是 “龙格-库塔 (Runge-Kutta) 方法”, 它以发明者的名字命名. 经分析可求出 $(dif bold(u))/(dif t) = bold(f)(bold(u))$ 的常值解, 这些解 $bold(u)(t) = bold(Y)$ 满足 $bold(f)(bold(Y)) = 0$ 且 $(dif bold(u))/(dif t) = 0$, 这表示无移动; 同时也能知晓 $bold(u) = bold(Y)$ 附近的稳定性或不稳定性. 远离 $bold(Y)$ 时, 分析就需依赖计算机了.

上述简介也是作者的教材 #emph[Differential Equations and Linear Algebra] (搜索 mit dela 可访问相关网站) 所讨论的主题, 该教材也是本书的姊妹篇.

#pagebreak()