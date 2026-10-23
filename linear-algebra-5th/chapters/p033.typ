#import "../theme.typ": *

$norm(bold(v)) = sqrt(bold(v) dot bold(v))$ 恰好为表示这个向量的箭头在通常意义下的长度. 如果两个分量为 1 和 2, 则箭头就是如图 1.6(a) 所示的直角三角形的第三边. 由毕达哥拉斯 (Pythagoras) 公式 (即勾股定理) $a^2 + b^2 = c^2$ ($a, b$ 为直角边, $c$ 为斜边) 可知三条边长度之间的关系: $1^2 + 2^2 = norm(bold(v))^2$.

在计算向量 $bold(v) = (1,2,3)$ 的长度时, 需要应用两次勾股定理: 如图 1.6(b) 所示, 位于底部的向量 $(1,2,0)$ 长度为 $sqrt(5)$, 而这个向量又与向量 $(0,0,3)$ 垂直, 所以图中长方体的体对角线长度为 $norm(bold(v)) = sqrt(5 + 9) = sqrt(14)$.

#figure(image("../assets/fig-p033-fig16.png", width: 100%), numbering: none, caption: [图 1.6　二维与三维向量 $bold(v)$ 的长度 $sqrt(bold(v) dot bold(v))$.])

同理, 一个四维向量 $bold(v) = (v_1, v_2, v_3, v_4)$ 的长度是 $sqrt(v_1^2 + v_2^2 + v_3^2 + v_4^2)$. 例如, 向量 $(1,1,1,1)$ 的长度等于 $sqrt(1^2 + 1^2 + 1^2 + 1^2) = 2$, 这是四维空间中单位“立方体”的体对角线的长度. 而 $n$ 维空间中单位“立方体”的体对角线的长度是 $sqrt(n)$.

“单位”这个词通常表示某种度量等于“1”. 例如, 单价表示一件商品的价格, 单位立方体的边长为 1, 单位圆的半径为 1. 现在讨论“单位向量”的含义.

#gainian[定义][若向量 $bold(u)$ 的长度为 1, 即 $bold(u) dot bold(u) = 1$, 则称 $bold(u)$ 为单位向量.]

例如, 设 $bold(u) = (1/2, 1/2, 1/2, 1/2)$, 由 $bold(u) dot bold(u) = 1/4 + 1/4 + 1/4 + 1/4 = 1$ 可知 $bold(u)$ 是一个四维单位向量. 将向量 $bold(v) = (1,1,1,1)$ 除以自身的长度 $norm(bold(v)) = 2$ 得到单位向量 $bold(u)$.

#hei[例 4]  如图 1.7 所示, 将 $x$ 轴与 $y$ 轴上的标准单位向量分别记为 $bold(i)$ 与 $bold(j)$. 在 $x y$ 平面上, 将单位向量 $bold(u)$ 与 $x$ 轴正向的夹角记为 $theta$, 则这个单位向量为 $(cos theta, sin theta)$:

#dmath[$ text("单位向量") bold(i) = mat(delim: "[", 1;0), quad bold(j) = mat(delim: "[", 0;1), quad bold(u) = mat(delim: "[", cos theta; sin theta). $]

当 $theta = 0$ 时, 这个水平的单位向量 $bold(u)$ 就是 $bold(i)$. 当 $theta = 90 degree$ (或 $pi/2$ 弧度) 时, 这个竖直的单位向量 $bold(u)$ 就是 $bold(j)$. 对于分量 $cos theta$ 与 $sin theta$, 因 $cos^2 theta + sin^2 theta = 1$, 故对任意的夹角 $theta$ 都有 $bold(u) dot bold(u) = 1$. 如图 1.7 所示, 从圆心出发的单位向量终点在单位圆周上, 单位圆周上角度为 $theta$ 的点坐标就是 $(cos theta, sin theta)$.



#pagebreak()
