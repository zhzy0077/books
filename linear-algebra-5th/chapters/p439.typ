#import "../theme.typ": *

#dingli[线性变换: $T(c bold(v) + d bold(w))$ 必然等于 $c T(bold(v)) + d T(bold(w))$.]

可以验证矩阵乘法是线性的: $bold(A)(c bold(v) + d bold(w)) = c bold(A) bold(v) + d bold(A) bold(w)$.

线性变换的限制很强. 假设变换 $T$ 是对每个向量增加非零向量 $bold(u)_0$, 则 $T(bold(v)) = bold(v) + bold(u)_0$, $T(bold(w)) = bold(w) + bold(u)_0$. 此时的 $T$ 不是线性的. 对 $bold(v) + bold(w)$ 作变换 $T$ 将得到 $bold(v) + bold(w) + bold(u)_0$, 它不等于 $T(bold(v)) + T(bold(w))$:

#dmath[$ "平移不是线性的" quad bold(v) + bold(w) + bold(u)_0 "不等于" T(bold(v)) + T(bold(w)) = (bold(v) + bold(u)_0) + (bold(w) + bold(u)_0) $]

例外的情形是 $bold(u)_0 = 0$, 此时变换约化为 $T(bold(v)) = bold(v)$. 这是恒等变换 (向量被作用后没有发生变化, 如同被单位矩阵左乘那样), 当然是线性的. 此时输入空间 $V$ 恰为输出空间 $W$.

“线性 + 平移” 变换 $T(bold(v)) = bold(A) bold(v) + bold(u)_0$ 称为 “仿射的”. 尽管此时 $T$ 不是线性的, 但直线变换后仍为直线. 第 10.6 节中移动计算机图形时, 用的就是仿射变换.

#hei[例 1]　取固定的向量 $bold(a) = (1, 3, 4)$, 令 $T(bold(v))$ 为向量 $bold(a)$ 和 $bold(v)$ 的点积 $bold(a) dot bold(v)$:

#dingli[输入为 $bold(v) = (v_1, v_2, v_3)$, 输出为 $T(bold(v)) = bold(a) dot bold(v) = v_1 + 3v_2 + 4v_3$.]

点积是线性的. 输入 $bold(v)$ 来自三维空间, 因此输入空间 $V = R^3$. 输出均为数字, 因此输出空间 $W = R^1$. 上述点积相当于用矩阵 $bold(A) = mat(delim: "[", 1, 3, 4)$ 左乘 $bold(v)$, 则可得 $T(bold(v)) = bold(A) bold(v)$.

读者将很快学会判断哪些变换是线性的. 通常, 若输出包含平方、乘积或长度, 如 $v_1^2, v_1 v_2$ 或 $norm(bold(v))$, 则 $T$ 不是线性的.

#hei[例 2]　求向量 $bold(v)$ 长度的变换 $T(bold(v)) = norm(bold(v))$ 不是线性的. 线性条件 (a) 要求 $norm(bold(v) + bold(w)) = norm(bold(v)) + norm(bold(w))$, 条件 (b) 要求 $norm(c bold(v)) = c norm(bold(v))$. 这两个条件均不成立.

条件 (a) 不成立: 三角形的三条边满足不等式 $norm(bold(v) + bold(w)) <= norm(bold(v)) + norm(bold(w))$.

条件 (b) 不成立: 长度 $norm(-bold(v))$ 为 $norm(bold(v))$, 而不是 $-norm(bold(v))$, 即对于负数 $c$, 线性性质不成立.

#hei[例 3]　(旋转) 设 $T$ 为将每个向量逆时针旋转 $30 degree$ 的变换. $T$ 的 “定义域” 为 $x y$ 平面 (所有输入向量 $bold(v)$), “值域” 也为 $x y$ 平面 (所有旋转向量 $T(bold(v))$). 若不用矩阵语言, 变换 $T$ 可描述为: 将平面逆时针旋转 $30 degree$.

旋转变换是线性的吗? 答案是肯定的. 可以旋转两个向量, 并将结果求和: 旋转向量之和 $T(bold(v)) + T(bold(w))$ 等于和向量的旋转 $T(bold(v) + bold(w))$. 利用这个线性变换, 整个平面也一起旋转.

#hei[线到线、三角形到三角形, 基决定一切]

图 8.1 (a) 展示了输入空间中从 $bold(v)$ 到 $bold(w)$ 的直线. 它还展示了输出空间中从 $T(bold(v))$ 到 $T(bold(w))$ 的直线. 线性性质表明: 输入直线上的每一个点均映射到输出直线上. 进一步地, 等间距的点映射为等间距的点, 中点 $bold(u) = 1/2 bold(v) + 1/2 bold(w)$ 映射为中点 $T(bold(u)) = 1/2 T(bold(v)) + 1/2 T(bold(w))$.

图 8.1 (b) 上升一个维数. 设 $bold(v)_1, bold(v)_2, bold(v)_3$ 为三个顶点. 这些输入有 3 个输出 $T(bold(v)_1), T(bold(v)_2), T(bold(v)_3)$. 输入三角形变换成输出三角形. 等间距点的像保持等间距 (无论是否在边上). 重心 $bold(u) = 1/3 (bold(v)_1 + bold(v)_2 + bold(v)_3)$ 映射为重心 $T(bold(u)) = 1/3 (T(bold(v)_1) + T(bold(v)_2) + T(bold(v)_3))$.



#pagebreak()