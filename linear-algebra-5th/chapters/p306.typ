#import "../theme.typ": *

#hei[例 5]　设长方体 (相邻边成 $90°$ 的夹角) 的边长是 $r, s$ 和 $t$, 它的体积是 $r s t$. 对角矩阵 $bold(A)$ 主对角线上的元素 $r, s$ 和 $t$ 生成了三条边, $det bold(A)$ 也等于体积 $r s t$.

#hei[例 6]　在微积分中, 计算面积 (体积) 时考虑的是面积 (体积) 微元! 积分区域为圆时, 一般将 $x$ 和 $y$ 变换成 $r$ 和 $theta$, 这就是极坐标: $x = r cos theta$ 和 $y = r sin theta$, 面积微元 $d x d y$ 是一个行列式 $J$ 乘 $d r d theta$:

#dmath[$ "微积分中的面积微元" r d r d theta quad J = mat(delim: "|", (partial x)/(partial r), (partial x)/(partial theta); (partial y)/(partial r), (partial y)/(partial theta)) = mat(delim: "|", cos theta, -r sin theta; sin theta, r cos theta) = r . $]

行列式 $J$ 就是面积微元公式 $d A = r d r d theta$ 中的 $r$. 二重积分中的伸缩因子 $J$ 就像一般积分

#dmath[$ integral d x = integral (d x)/(d u) d u $]

中的 $(d x)/(d u)$. 对于三重积分, 坐标变换的雅可比 (Jacobi) 矩阵 $J$ 是包括九个偏导数的三阶方阵.

#sec[叉积]

叉积是行列式的一个额外 (可选) 应用, 仅适用于三维空间. 设向量 $bold(u) = (u_1, u_2, u_3)$ 和 $bold(v) = (v_1, v_2, v_3)$, 两者的叉积与作为数字的点积不同, 叉积是一个三维向量, 记为 $bold(u) times bold(v)$, 读作 “$bold(u)$ 叉 $bold(v)$”. 叉积的分量是二阶代数余子式. 下面学习叉积的一些性质, 这些性质使得 $bold(u) times bold(v)$ 在几何与物理中非常有用.

在学习性质之前先给出有关公式和定义. 设 $R^3$ 中沿 $x$ 轴、$y$ 轴和 $z$ 轴正方向的单位向量为 $bold(i), bold(j), bold(k)$.

#dingli[
  #hei[定义]　$bold(u) = (u_1, u_2, u_3)$ 和 $bold(v) = (v_1, v_2, v_3)$ 的叉积是向量

  #eqnum($ bold(u) times bold(v) &= mat(delim: "|", bold(i), bold(j), bold(k); u_1, u_2, u_3; v_1, v_2, v_3) \
    &= (u_2 v_3 - u_3 v_2) bold(i) + (u_3 v_1 - u_1 v_3) bold(j) + (u_1 v_2 - u_2 v_1) bold(k) . $, 10)
]

可以证明向量 $bold(u) times bold(v)$ 与 $bold(u)$ 和 $bold(v)$ 都垂直, 且叉积 $bold(v) times bold(u) = -(bold(u) times bold(v))$ (见下面性质 1 与性质 2).

#hei[注]　记忆 $bold(u) times bold(v)$ 最简单的方法是借用三阶行列式的形式. 这个 “行列式” 不规范, 因为它的第 1 行元素是向量 $bold(i), bold(j), bold(k)$ 而其他行元素是数字. 在行列式中, 向量 $bold(i) = (1, 0, 0)$ 分别乘 $u_2 v_3$ 和 $-u_3 v_2$ 后相加, 结果是 $(u_2 v_3 - u_3 v_2, 0, 0)$, 这对应叉积的第一个分量.

请注意元素下标的循环模式: 下标是 2 和 3 的元素给出了 $bold(u) times bold(v)$ 的第一个分量, 下标是 3 和 1 的元素给出第二个分量, 下标是 1 和 2 的元素给出第三个分量. 以上是 $bold(u) times bold(v)$ 的定义, 现在分析叉积有关的性质.

#pagebreak()