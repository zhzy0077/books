#import "../theme.typ": *

#figure(image("../assets/fig-p354-64.png", width: 90%), numbering: none, caption: [图 6.4　在圆周上精确的 $bold(u) = (cos t, -sin t)$; (b) 向前欧拉旋出 (32 步).])

图 6.5(b) 显示了中心差分的前 32 步. 如果 $Delta t < 2$, 那么解靠近圆周 (习题 28). 这就是一直被采用的蛙跳法. (11) 式中二阶差分 $Y_(n+1) - 2Y_n + Y_(n-1)$ "跳过" 中心值 $Y_n$.

#figure(image("../assets/fig-p354-65.png", width: 90%), numbering: none, caption: [图 6.5　(a) 向后差分旋入; (b) 蛙跳法保持在精确圆周附近.])

上面介绍的三种方法也是化学家跟踪分子运动的方法 (求解分子运动方程需要巨大的运算量). 计算科学十分活跃的原因之一就是一个微分方程可被多个差分方程代替——它们有些不稳定, 有些稳定, 有些中性. 习题 30 介绍了第四种很棒的方法, 对应的解就在圆周上.

实际中的工程学和物理学处理的是质点系统 (而不是单个质点). 未知量 $bold(y)$ 是向量. $bold(y)''$ 的系数为质量矩阵 $bold(M)$, 包含 $n$ 个质点. $bold(y)$ 的系数为刚度矩阵 $bold(K)$, 而非数 $k$. $bold(y)'$ 的系数是一个阻尼矩阵, 可能为零矩阵.

向量方程 $bold(M) bold(y)'' + bold(K) bold(y) = bold(f)$ 是计算力学的主要研究对象. 它受制于由等式 $bold(K) bold(x) = lambda bold(M) bold(x)$ 得到的矩阵 $bold(M)^(-1) bold(K)$ 的特征值.

#subsec[$2 times 2$ 矩阵的稳定性]

关于 $(dif bold(u))/(dif t) = bold(A) bold(u)$ 的解, 有个根本性的问题: 当 $t -> infinity$ 时, 解 $bold(u)$ 趋于 0 吗? 通过耗散能量, 该问题的解稳定吗? 包含 $e^t$ 的解是不稳定的. 稳定性依赖于 $bold(A)$ 的特征值.

通解 $bold(u)(t)$ 由解 $e^(lambda t) bold(x)$ 构造. 若要 $e^(lambda t)$ 趋于 0, 如果特征值 $lambda$ 是实数, 那么数 $lambda$ 必为负数; 如果特征值 $lambda$ 是复数 $r + i s$, 那么实部 $r$ 必为负数, 因为将 $e^(lambda t)$ 分拆成 $e^(r t) e^(i s t)$ 时, 因子 $e^(i s t)$ 的绝对值恒为 1:

#dmath[$ e^(i s t) = cos s t + i sin s t quad "满足" quad |e^(i s t)|^2 = cos^2 s t + sin^2 s t = 1. $]

#pagebreak()