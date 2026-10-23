#import "../theme.typ": *

$(cos theta, sin theta)$ 和 $bold(x)_2 = (-sin theta, cos theta)$，求矩阵 $A$. 以下性质中哪些可以提前预知？

#align(center, dmath[$ A = A^T, quad A^2 = I, quad det A = -1, quad "主元有正有负", quad A^(-1) = A. $])

#hei[解]　所有这些性质均可预知！根据实特征值 $1, -1$ 以及标准正交特征向量 $bold(x)_1$ 和 $bold(x)_2$ 可知，矩阵 $A = bold(Q) bold(Lambda) bold(Q)^T$ 一定是对称的. 由特征值 $1$ 和 $-1$ 推出 $A^2 = I$（因为 $lambda_i^2 = 1$），$A^(-1) = A$（由于 $lambda_i^(-1) = lambda_i$）和 $det A = -1$. 既然 $A$ 是对称的，那么像特征值一样，两个主元必然一正一负.

该矩阵是一个反射矩阵. $bold(x)_1$ 方向上的向量用 $A$ 左乘后不会改变（因为 $lambda_1 = 1$），但垂直于 $bold(x)_1$ 方向上的向量用 $A$ 左乘后会反向（因为 $lambda_2 = -1$）. 反射矩阵 $A = bold(Q) bold(Lambda) bold(Q)^T$ 表示关于 “$theta$ 直线”（过原点且与 $x$ 轴正向成 $theta$ 角）的轴对称. 以下 $c$ 和 $s$ 分别指代 $cos theta$ 与 $sin theta$：

#align(center, dmath[$ A = mat(delim: "[", c, -s; s, c) mat(delim: "[", 1, 0; 0, -1) mat(delim: "[", c, s; -s, c) = mat(delim: "[", c^2 - s^2, 2 c s; 2 c s, s^2 - c^2) = mat(delim: "[", cos 2theta, sin 2theta; sin 2theta, -cos 2theta). $])

注意，用 $A$ 作用后，$bold(x) = (1, 0)$ 映射到 “$2theta$ 直线” 上的 $A bold(x) = (cos 2theta, sin 2theta)$，而 $(cos 2theta, sin 2theta)$ 映射回到 $bold(x) = (1, 0)$.

#hei[6.4 B]　求如下矩阵 $A_3$ 与 $B_4$ 的特征值与特征向量（离散正弦与离散余弦）：

#align(center, dmath[$ A_3 = mat(delim: "[", 2, -1, 0; -1, 2, -1; 0, -1, 2), quad B_4 = mat(delim: "[", 1, -1, , ; -1, 2, -1, ; , -1, 2, -1; , , -1, 1). $])

两个矩阵中的 “$-1, 2, -1$” 模式对应 “二阶差分”，类似于二阶导数. 那么 $A_3 bold(x) = lambda bold(x)$ 和 $B_4 bold(x) = lambda bold(x)$ 很像 $(dif^2 bold(x))/(dif t^2) = lambda bold(x)$. 后者的特征向量 $bold(x) = sin k t$ 和 $bold(x) = cos k t$ 就是傅里叶级数的基.

由 $A_n$ 和 $B_n$ 推出的 “离散正弦” 与 “离散余弦” 正是离散傅里叶变换（discrete Fourier transform，简记为 DFT）的基. DFT 是数字信号处理所有领域的绝对核心. 图像处理中最受人们青睐的 JPEG（joint photographic experts group，联合图像专家组）格式就对应阶数 $n = 8$ 的 $B_8$.

#hei[解]　$A_3$ 的特征值为 $lambda = 2 - sqrt(2), 2$ 和 $2 + sqrt(2)$（见范例 6.3 B 及范例 6.5 C）. 它们的和为 $6$（即 $A_3$ 的迹），而积为 $4$（即 $A_3$ 的行列式）. 特征向量矩阵给出 “离散正弦变换”，而特征向量落在正弦曲线上（指各分量对应正弦曲线上点的纵坐标）.

#grid(columns: (auto, 1fr, auto), column-gutter: 10pt,
  [正弦矩阵], align(center, dmath[$ mat(delim: "[", 1, sqrt(2), 1; sqrt(2), 0, -sqrt(2); 1, -sqrt(2), 1) $]), [对应 $A_3$ 的特征向量,],
  [余弦矩阵], align(center, dmath[$ mat(delim: "[", 1, 1, 1, 1; 1, sqrt(2) - 1, -1, 1 - sqrt(2); 1, 1 - sqrt(2), -1, sqrt(2) - 1; 1, -1, 1, -1) $]), [对应 $B_4$ 的特征向量.],
)



#pagebreak()