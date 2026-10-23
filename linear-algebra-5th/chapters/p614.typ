#import "../theme.typ": *

#subsec[补充材料: $bold(A)$ 的变化引发 $bold(A)^(-1)$ 的变化]

这里将本书开头 (逆矩阵与矩阵的秩) 和结尾 (动态最小二乘法与卡尔曼滤波) 联系起来. 先介绍以下基本公式:

#dingliC[$ bold(M) = bold(I) - bold(u) bold(v)^T quad "的逆矩阵是" quad bold(M)^(-1) = bold(I) + (bold(u) bold(v)^T)/(1 - bold(v)^T bold(u)). $]

以上结论可利用

#dmath[$ bold(M) bold(M)^(-1) = bold(I) - bold(u) bold(v)^T + (bold(I) - bold(u) bold(v)^T) (bold(u) bold(v)^T)/(1 - bold(v)^T bold(u)) = bold(I) - bold(u) bold(v)^T + bold(u) bold(v)^T = bold(I) $]

快速证明.

若 $bold(v)^T bold(u) = 1$, 则 $bold(M)$ 不可逆 (此时 $bold(M) bold(u) = 0$). 若令 $bold(v)^T = bold(u)^T = mat(1, 1, 1)$, 则

#dmath[$ bold(M) = bold(I) - mat(1, 1, 1; 1, 1, 1; 1, 1, 1) quad "的逆矩阵是" quad bold(M)^(-1) = bold(I) + 1/(1 - 3) mat(1, 1, 1; 1, 1, 1; 1, 1, 1). $]

但实际问题并不总包含单位矩阵, 很多应用需要对 $bold(M) = bold(A) - bold(u) bold(v)^T$ 求逆. 例如, 在求解 $bold(A) bold(x) = bold(b)$ 之后, 期望对 $bold(A)$ 减去秩 1 矩阵 $bold(u) bold(v)^T$ 来求解 $bold(M) bold(y) = bold(b)$. 此时需将上面公式中的分母 $1 - bold(v)^T bold(u)$ 变成 $c = 1 - bold(v)^T bold(A)^(-1) bold(u) = 1 - bold(v)^T bold(z)$.

#yaodian[
  #hei[步骤 1]  求解 $bold(A) bold(z) = bold(u)$ 并计算 $c = 1 - bold(v)^T bold(z)$;\
  #hei[步骤 2]  若 $c != 0$, 则 $bold(M)^(-1) bold(b)$ 是 $bold(y) = bold(x) + (bold(v)^T bold(x))/c bold(z)$.
]

假设矩阵 $bold(A)$ 很容易处理, 可能已用消元法分解为 $bold(L) bold(U)$, 则上述舍曼-伍德伯里-莫里森 (Sherman-Woodbury-Morrison) 公式是快速求解 $bold(M) bold(y) = bold(b)$ 的方法. 以下是本书结束时的三个问题!

#ti[1.][当 $bold(A) = bold(I)$, $bold(u)^T = bold(v)^T = mat(1, 2, 3)$ 且 $bold(b)^T = mat(2, 1, 4)$ 时, 使用步骤 1 和步骤 2 求解 $bold(y)$.]

#ti[2.][在上述 “更新公式” 中, 步骤 2 表明

#dmath[$ bold(M) bold(y) = (bold(A) - bold(u) bold(v)^T) (bold(x) + (bold(v)^T bold(x))/c bold(z)) = bold(b). $]

请将其化简为 $(bold(u) bold(v)^T bold(x))/c [1 - c - bold(v)^T bold(z)] = 0$. 因为 $c = 1 - bold(v)^T bold(z)$, 因此该结论成立.]

#ti[3.][当对 $bold(A)$ 新增一行 $bold(v)^T$ 时, 最小二乘方程中的 $bold(A)^T bold(A)$ 变为 $bold(M)$:

#dmath[$ bold(M) = mat(bold(A)^T, bold(v)) mat(bold(A); bold(v)^T) = bold(A)^T bold(A) + bold(v) bold(v)^T, quad "对应" bold(A)^T bold(A) "的秩 1 变化." $]

为什么这个乘积是正确的? 通过步骤 1 和步骤 2 可得到更新的 $hat(bold(x))_"新"$.]

#pagebreak()