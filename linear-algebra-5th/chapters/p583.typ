#import "../theme.typ": *

对于共轭梯度法, 残差 $bold(r)_n$ 都是正交的, 并且搜索方向与 $bold(A)$ 正交, 即 $bold(d)_j^T bold(A) bold(d)_k = 0$. 该方法通过在克雷洛夫空间 $= "span"{bold(b), bold(A) bold(b), dots.c, bold(A)^(n-1) bold(b)}$ 中寻找使误差 $bold(e)^T bold(A) bold(e)$ 最小化的向量来迭代求解 $bold(A) bold(x) = bold(b)$. 这是一个很好的算法.

#ti[22.][设对角矩阵 $bold(A) = "diag"([1 2 3 4])$, 向量 $bold(b) = (1, 1, 1, 1)$, 按照上述阿诺尔迪迭代法步骤, 迭代一步求出正交向量 $bold(q)_1$ 和 $bold(q)_2$.]

#ti[23.][由阿诺尔迪迭代法可以逐列求出正交矩阵 $bold(Q)$, 使得 $bold(A) bold(Q) = bold(Q) bold(H)$:]

#dmath[$
  bold(A) bold(Q) &= [bold(A) bold(q)_1 quad bold(A) bold(q)_2 quad dots.c quad bold(A) bold(q)_N] \
  &= [bold(q)_1 quad bold(q)_2 quad dots.c quad bold(q)_N] mat(h_11, h_12, dots.c, h_(1 N); h_21, h_22, dots.c, h_(2 N); dots.v, dots.v, , dots.v; 0, 0, dots.c, h_(N N)) \
  &= bold(Q) bold(H),
$]

$bold(H)$ 是一个具有非零次对角线的 “黑森伯格” 矩阵. 解释为什么当 $bold(A)$ 是对称矩阵时, 黑森伯格矩阵 $bold(H) = bold(Q)^(-1) bold(A) bold(Q) = bold(Q)^T bold(A) bold(Q)$ 是对称的, 因此它是三对角矩阵.

#ti[24.][当 $bold(A)$ 是对称矩阵时, 上述三对角矩阵 $bold(H)$ 给出了兰乔斯迭代格式:]

#dmath[$
  "三项递推式" quad bold(q)_(j+1) = 1/h_(j+1, j) (bold(A) bold(q)_j - h_(j, j) bold(q)_j - h_(j-1, j) bold(q)_(j-1)),
$]

利用 $bold(H) = bold(Q)^(-1) bold(A) bold(Q)$ 说明为什么 $bold(H)$ 的特征值与 $bold(A)$ 的特征值相同? 对于大规模矩阵, “兰乔斯迭代法” 通过得到一个较小的三对角矩阵 $bold(H)_k$ 来计算主特征值. 前文的 QR 方法可用于计算 $bold(H)_k$ 的特征值.

#ti[25.][应用共轭梯度法求解 $bold(A) bold(x) = bold(b) = "ones"(100, 1)$, 其中 $bold(A)$ 为 “$-1, 2, -1$” 二阶差分矩阵, 即 $bold(A) = "toeplitz"([2 -1 "zeros"(1, 98)])$. 画出由共轭梯度法得到的 $bold(x)_10, bold(x)_20$ 以及精确解 $bold(x)$ 的图形. $bold(x)$ 的 100 个分量可表示为 $x_i = 1/2 (i h - i^2 h^2)$, 其中 $h = 1/101$. 由命令 #raw("plot(i, x(i))") 应该可以得到一条抛物线.]

#ti[26.][对于非对称矩阵 $bold(A)$, 谱半径 $rho = max |lambda_i|$ 不是范数. 但是当 $n$ 较大时, $norm(bold(A)^n)$ 仍然会像 $rho^n$ 一样增长或者衰减. 对于 $bold(A) = mat(1, 1; 0, 1.1)$, 使用 norm 命令比较这些值.]

$bold(A)^n -> bold(O)$ 当且仅当 $rho < 1$. 当 $bold(A) = bold(S)^(-1) bold(T)$ 时, 这是判断是否收敛的关键.

#pagebreak()