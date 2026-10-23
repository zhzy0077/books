#import "../theme.typ": *

现在有两类简单的正交矩阵可用来取代消元矩阵: 反射矩阵 $bold(I) - 2 bold(u) bold(u)^T$ (也称为豪斯霍尔德矩阵), 平面旋转矩阵 (也称为吉文斯矩阵).

先考虑吉文斯矩阵, 将 $x y$ 平面逆时针旋转 $theta$ 的变换矩阵可记为 $bold(Q)_(21)$:

#grid(
  columns: (1fr, 2fr),
  align(right + horizon, [在 $x y$ 平面上的\ 吉文斯旋转]),
  $ bold(Q)_(21) = mat(cos theta, -sin theta, 0; sin theta, cos theta, 0; 0, 0, 1). $
)

与消元过程类似, 将消元矩阵 $bold(E)_(21)$ 换为 $bold(Q)_(21)$, 选择适当的角度 $theta$, 就可将 (2, 1) 位置的元素变为零. 比尔·黑格尔 (Bill Hager) 在 #emph[Applied Numerical Linear Algebra] 中给出了这样的例子:

$ bold(Q)_(21) bold(A) = mat(0.6, 0.8, 0; -0.8, 0.6, 0; 0, 0, 1) mat(90, -153, 114; 120, -79, -223; 200, -40, 395) = mat(150, -155, -110; 0, 75, -225; 200, -40, 395). $

最后的零元来自 $-0.8 times 90 + 0.6 times 120$. 此过程不需要计算 $theta$, 仅需计算 $cos theta$:

#eqnum($ cos theta = 90/sqrt(90^2 + 120^2), quad sin theta = (-120)/sqrt(90^2 + 120^2) . $, 2)

现在消去 (3, 1) 位置的元素. 旋转变换体现在第 1, 3 行以及第 1, 3 列的元素中. $cos theta$ 和 $sin theta$ 由 150 和 200 确定, 而不是之前的 90 和 120.

$ bold(Q)_(31) bold(Q)_(21) bold(A) = mat(0.6, 0, 0.8; 0, 1, 0; -0.8, 0, 0.6) mat(150, -155, -110; 0, 75, -225; 200, -40, 395) = mat(250, -125, 250; 0, 75, -225; 0, 100, 325). $

至此, 变换至 $bold(R)$ 只需一步, 即消去 (3, 2) 位置的元素. 现在 $cos theta$ 和 $sin theta$ 由 75 和 100 确定, 旋转变换体现在第 2, 3 行以及第 2, 3 列的元素中:

$ bold(Q)_(32) bold(Q)_(31) bold(Q)_(21) bold(A) = mat(1, 0, 0; 0, 0.6, 0.8; 0, -0.8, 0.6) mat(250, -125, 250; 0, 75, -225; 0, 100, 325) = mat(250, -125, 250; 0, 125, 125; 0, 0, 375). $

现已得到上三角形矩阵 $bold(R)$. 那么 $bold(Q)$ 是什么? 将平面旋转矩阵 $bold(Q)_(i j)$ 移到等式的另一边, 即可得 $bold(A) = bold(Q) bold(R)$——这与消元法中将初等矩阵 $bold(E)_(i j)$ 移到另一边得到 $bold(A) = bold(L) bold(U)$ 是一样的:

#eqnum($ bold(Q)_(32) bold(Q)_(31) bold(Q)_(21) bold(A) = bold(R), quad "即" quad bold(A) = (bold(Q)_(21)^(-1) bold(Q)_(31)^(-1) bold(Q)_(32)^(-1)) bold(R) = bold(Q) bold(R) . $, 3)



#pagebreak()
