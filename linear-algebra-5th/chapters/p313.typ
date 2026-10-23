#import "../theme.typ": *

习题 27—30 是关于微积分中的面积微元 $d A$ 和体积微元 $d V$ 的.

#hei[27.] 极坐标满足 $x = r cos theta$ 和 $y = r sin theta$. 极坐标下的面积微元是 $J d r d theta$:

#dmath[$ J = mat(delim: "|", (partial x)/(partial r), (partial x)/(partial theta); (partial y)/(partial r), (partial y)/(partial theta)) = mat(delim: "|", cos theta, -r sin theta; sin theta, r cos theta) . $]

上式中行列式的两列作为向量是正交的, 它们的长度是 \_\_\_\_, 因此 $J =$ \_\_\_\_.

#hei[28.] 球面坐标 $rho, phi, theta$ 满足 $x = rho sin phi cos theta$, $y = rho sin phi sin theta$ 和 $z = rho cos phi$. 请计算三阶的偏导数矩阵 (雅可比矩阵): 第 1 行是 $(partial x)/(partial rho), (partial x)/(partial phi), (partial x)/(partial theta)$. 对该矩阵的行列式化简得 $J = rho^2 sin phi$, 则球面坐标下的 $d V$ 是 $rho^2 sin phi d rho d phi d theta$, 这是体积微元.

#hei[29.] 习题 27 中的雅可比矩阵联系了 $r, theta$ 和 $x, y$. 对这个二阶方阵求逆矩阵:

#dmath[$ J^(-1) = mat(delim: "[", (partial r)/(partial x), (partial r)/(partial y); (partial theta)/(partial x), (partial theta)/(partial y)) = mat(delim: "[", cos theta) = \_\_\_\_ . $]

令人惊讶的是 $(partial r)/(partial x) = (partial x)/(partial r)$ (#emph[Calculus] 第 501 页, 作者著). 将矩阵 $J$ 和 $J^(-1)$ 相乘可得链式法则

#dmath[$ (partial x)/(partial x) = (partial x)/(partial r)(partial r)/(partial x) + (partial x)/(partial theta)(partial theta)/(partial x) = 1. $]

#hei[30.] 三角形的顶点是 (0,0), (6,0) 和 (1,4), 则面积是 \_\_\_\_. 当将此三角形绕原点逆时针旋转 $theta = 60 degree$ 时, 面积是 \_\_\_\_. 求旋转矩阵的行列式

#dmath[$ J = mat(delim: "|", cos theta, -sin theta; sin theta, cos theta) . $]

习题 31—38 是关于三维空间中的三重积 $(bold(u) times bold(v)) dot bold(w)$ 的.

#hei[31.] 设平行六面体的相邻三边是 $bold(u), bold(v)$ 和 $bold(w)$, 则底面积是 $||bold(u) times bold(v)||$, 对应的高是 $||bold(w)|| cos theta$,

#align(center)[底面积乘高 = 体积 = $||bold(u) times bold(v)|| ||bold(w)|| cos theta$,]

就是 $(bold(u) times bold(v)) dot bold(w)$. 请将 $bold(u) = (2, 4, 0)$, $bold(v) = (-1, 3, 0)$, $bold(w) = (1, 2, 2)$ 代入来计算底面积、高和体积.

#hei[32.] 习题 31 中的平行六面体体积可以用一个三阶行列式直接计算, 请写出并计算这个行列式.

#hei[33.] 请将 (13) 式中的三阶行列式按照 $u_1, u_2, u_3$ 这一行及其代数余子式展开, 这个展开式是 $bold(u)$ 和向量 \_\_\_\_ 的点积.

#pagebreak()