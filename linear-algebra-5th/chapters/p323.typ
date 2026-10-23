#import "../theme.typ": *

错误的证明暗示了什么是正确的结论. 设 $bold(x)$ 的确是 $bold(A)$ 和 $bold(B)$ 共同的特征向量, 于是确有 $bold(A) bold(B) bold(x) = lambda beta bold(x)$ 和 $bold(B) bold(A) bold(x) = lambda beta bold(x)$. 当全部 $n$ 个特征向量均为 $bold(A)$, $bold(B)$ 共同的特征向量时, 特征值可以由相乘得到. 在量子力学中, 利用 $bold(A) bold(B) = bold(B) bold(A)$ 成立与否检验是否具有相同的特征向量相当重要——线性代数这一应用的介绍到此为止:

#dingli[
  $n$ 阶矩阵 $bold(A)$ 与 $bold(B)$ 具有相同的 $n$ 个线性无关的特征向量当且仅当 $bold(A) bold(B) = bold(B) bold(A)$.
]

#hei[海森堡 (Heisenberg) 不确定原理]　在量子力学中, 位置矩阵 $bold(P)$ 和动量矩阵 $bold(Q)$ 乘法不可交换. 事实上, $bold(Q) bold(P) - bold(P) bold(Q) = bold(I)$ (这些都是无穷矩阵). 当 $bold(Q) bold(x) = 0$ 时, 若还有 $bold(P) bold(x) = 0$, 则必有 $bold(x) = bold(I) bold(x) = 0$. 这说明, 即便确切知晓位置, 也不可能准确知晓动量. 习题 36 推得海森堡不确定原理 $norm(bold(P) bold(x)) norm(bold(Q) bold(x)) >= 1/2 norm(bold(x))^2$.

#barHead[■ 要点回顾]

#hei[1.] $bold(A) bold(x) = lambda bold(x)$ 表明特征向量 $bold(x)$ 用 $bold(A)$ 左乘后方向不变.

#hei[2.] $bold(A) bold(x) = lambda bold(x)$ 还表明 $det(bold(A) - lambda bold(I)) = 0$, 由此确定 $n$ 阶方阵 $bold(A)$ 的 $n$ 个特征值.

#hei[3.] 若 $lambda$ 为矩阵 $bold(A)$ 的特征值, 则 $lambda^2$ 和 $lambda^(-1)$ 分别为 $bold(A)^2$ 和 $bold(A)^(-1)$ 的特征值, 且对应相同的特征向量.

#hei[4.] 矩阵 $bold(A)$ 的特征值之和等于对角元素之和 (迹), 特征值之积等于 $bold(A)$ 的行列式.

#hei[5.] 投影矩阵 $bold(P)$、反射矩阵 $bold(R)$、90° 旋转矩阵 $bold(Q)$ 具有特殊的特征值 $1, 0, -1, i, -i$; 奇异矩阵有特征值 $lambda = 0$; 三角形矩阵的特征值分布在主对角线上.

#hei[6.] 由矩阵的特殊性质可求出特殊的特征值和特征向量, 这也是本章的主题之一 (本章末尾将罗列相关结论).

#barHead[■ 范例解析]

#hei[6.1 A]　对如下矩阵 $bold(A)$, 求出 $bold(A)$, $bold(A)^2$, $bold(A)^(-1)$ 和 $bold(A) + 4 bold(I)$ 的特征值和特征向量:

$ bold(A) = mat(delim: "[", 2, -1; -1, 2), quad bold(A)^2 = mat(delim: "[", 5, -4; -4, 5) . $

验证 $bold(A)$ 的迹为 $lambda_1 + lambda_2 = 4$, 行列式为 $lambda_1 lambda_2 = 3$.

解　$bold(A)$ 的特征值出自 $det(bold(A) - lambda bold(I)) = 0$:

$ det(bold(A) - lambda bold(I)) = mat(delim: "|", 2 - lambda, -1; -1, 2 - lambda) = lambda^2 - 4 lambda + 3 = 0 . $

因式分解为 $(lambda - 1)(lambda - 3) = 0$, 故 $bold(A)$ 的特征值为 $lambda_1 = 1$ 和 $lambda_2 = 3$. $bold(A)$ 的迹 $"tr"(bold(A)) = 2 + 2$ 与 $lambda_1 + lambda_2 = 1 + 3$ 一致, 行列式 3 与乘积 $lambda_1 lambda_2$ 一致.

特征向量分别来自求解各 $lambda$ 对应的 $(bold(A) - lambda bold(I)) bold(x) = bold(0)$, 即 $bold(A) bold(x) = lambda bold(x)$:



#pagebreak()