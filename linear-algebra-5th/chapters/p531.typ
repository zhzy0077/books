#import "../theme.typ": *

#align(left, hei[内点法])

单纯形法沿着可行域的边界移动, 最终到达最优顶点 $x^*$. 内点法在可行域内部搜索 (其中 $x > 0$), 期望直接搜索最优解 $x^*$, 并且效果很好.

固定在可行域内部搜索的一种方法是在边界处设置障碍. 例如, 添加对数项额外成本, 当任何分量 $x_j$ 趋于零时, 成本会趋于无穷大, 其中最优解向量满足 $x > 0$, 参数 $theta$ 的取值较小, 并且趋于零:

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
#hei[障碍问题]  在约束条件 $A x = b$ 下, 最小化
#eqnum($ c^T x - theta (log x_1 + log x_2 + dots.c + log x_n) . $, 2)
]

这里成本是非线性函数 (线性规划已通过不等式展现非线性). 此时不需要约束条件 $x_j >= 0$, 因为 $log x_j$ 在 $x_j = 0$ 处为负无穷大.

对于每个 $theta$, 上述障碍问题是原问题的一个近似问题. 对 $m$ 个约束方程 $A x = b$ 引入拉格朗日乘子 $y_1, y_2, dots.c, y_m$, 这是处理约束条件的常用方法.

#eqnumL([$ bold(y) "源自拉格朗日函数" $], $ L(x, y, theta) = c^T x - theta sum_(i = 1)^n log x_i - bold(y)^T (A x - b) . $, 3)

由 $(partial L)/(partial y_j) = 0$ 反过来可以得到 $A x = b$. 导数 $(partial L)/(partial x_j)$ 的结果也非常有意义!

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #eqnumL([#hei[障碍问题中\ 的最优解]], $ (partial L)/(partial x_j) = c_j - theta/x_j - (A^T y)_j = 0 quad "即" quad x_j s_j = theta . $, 4)
]

原始问题中 $x$ 满足 $x_j s_j = 0$, 而障碍问题中有 $x_j s_j = theta$, 最优解 $x^*(theta)$ 位于通往 $x^*(0)$ 的中心路径上. 这 $n$ 个最优方程 $x_j s_j = theta$ 是非线性的, 可以利用牛顿迭代法求解.

当前 $x, y, s$ 满足 $A x = b, x >= 0$ 和 $A^T y + s = c$, 但不满足 $x_j s_j = theta$. 牛顿迭代法选取步长 $Delta x, Delta y, Delta s$, 忽略 $(x + Delta x) dot (s + Delta s) = theta$ 中的二阶项 $Delta x Delta s$, 然后通过如下线性方程来修正 $x, y, s$:

#eqnumL([#hei[牛顿迭代法]], [$ A Delta x = 0 \ A^T Delta y + Delta s = 0 \ s_j Delta x_j + x_j Delta s_j = theta - x_j s_j $], 5)

牛顿迭代法对每个 $theta$ 都能达到二阶收敛, 然后令 $theta$ 趋于零. 对偶间隙 $x^T s$ 通常在迭代 20 到 60 步后会小于 $10^(-8)$. 作者在教材 #emph[Computational Science and Engineering] 中针对前述作业题问题, 详细阐述了利用牛顿迭代法迭代一步的过程. 尽管作者并不打算让学生单独完成所有的作业题, 但是最优解 $x^*$ 确实体现了这一点.

这种内点法在商业软件中几乎“按原样”使用, 用于解决一大类线性和非线性优化问题.





#pagebreak()
