#import "../theme.typ": *

#hei[例 2] (置换矩阵)  以下矩阵 $bold(Q)$ 均改变向量分量的次序:

#dmath[$ mat(0, 1, 0; 0, 0, 1; 1, 0, 0) mat(x; y; z) = mat(y; z; x), quad mat(0, 1; 1, 0) mat(x; y) = mat(y; x). $]

上述 $bold(Q)$ 的各列均为单位向量 (显然长度为 1), 它们也是正交的 (分量 1 出现在不同的位置). 置换矩阵的逆为其转置: $bold(Q)^(-1) = bold(Q)^T$. 逆矩阵将分量换回初始位置:

#dmath[$ "逆 = 转置" quad mat(0, 0, 1; 1, 0, 0; 0, 1, 0) mat(y; z; x) = mat(x; y; z), quad mat(0, 1; 1, 0) mat(y; x) = mat(x; y). $]

#dingli[每个置换矩阵都是正交矩阵.]

#hei[例 3] (反射矩阵)  设 $bold(u)$ 为单位向量, 令 $bold(Q) = bold(I) - 2 bold(u) bold(u)^T$. 注意, $bold(u) bold(u)^T$ 是矩阵, 而 $bold(u)^T bold(u)$ 为数值 $norm(bold(u))^2 = 1$, 于是 $bold(Q)^T$ 和 $bold(Q)^(-1)$ 都等于 $bold(Q)$:

#eqnum($ bold(Q)^T = bold(I) - 2 bold(u) bold(u)^T = bold(Q) quad "以及" quad bold(Q)^T bold(Q) = bold(I) - 4 bold(u) bold(u)^T + 4 bold(u) bold(u)^T bold(u) bold(u)^T = bold(I). $, 2)

因此, 矩阵 $bold(Q) = bold(I) - 2 bold(u) bold(u)^T$ 既是对称矩阵, 也是正交矩阵. 它的平方等于单位矩阵, 即 $bold(Q)^2 = bold(Q)^T bold(Q) = bold(I)$. 这也是称 $bold(Q)$ 为反射矩阵的原因: 通过镜子反射两次就恢复原貌, 如同 $(-1)^2 = 1$, 而 $bold(u)$ 是与镜面垂直的向量. 注意, (2) 式中 $4 bold(u) bold(u)^T bold(u) bold(u)^T$ 包含了 $bold(u)^T bold(u) = 1$.

#figure(image("../assets/fig-p259-fig413.png", width: 92%), numbering: none, caption: [图 4.13　(a) 旋转矩阵 $bold(Q) = mat(cos theta, -sin theta; sin theta, cos theta)$; (b) 关于 $y = x$ 反射的反射矩阵 $bold(Q) = mat(0, 1; 1, 0)$.])

下面举例说明. 选择向量 $bold(u) = (-1/√2, 1/√2)$, 计算 $2 bold(u) bold(u)^T$ (列左乘行), 再从 $bold(I)$ 中减去该矩阵, 得到沿向量 $bold(u)$ 方向反射的反射矩阵 $bold(Q)$ (图 4.13(b)):

#dmath[$ "反射矩阵" quad bold(Q) = bold(I) - 2 mat(0.5, -0.5; -0.5, 0.5) = mat(0, 1; 1, 0), quad mat(0, 1; 1, 0) mat(x; y) = mat(y; x). $]

#pagebreak()