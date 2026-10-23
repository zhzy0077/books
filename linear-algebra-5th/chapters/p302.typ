#import "../theme.typ": *

对于 $n = 3$ 的情形也能看到代数余子式. 可求解 $bold(A) bold(x) = (1, 0, 0)$ 来计算 $bold(A)^(-1)$ 的第 1 列:

#grid(
  columns: (auto, 1fr, auto),
  align: (left + horizon, center, right + horizon),
  [$B_i$ 的行列式为 \ $A$ 的代数余子式],
  $ mat(delim: "|", 1, a_12, a_13; 0, a_22, a_23; 0, a_32, a_33), quad mat(delim: "|", a_11, 1, a_13; a_21, 0, a_23; a_31, 0, a_33), quad mat(delim: "|", a_11, a_12, 1; a_21, a_22, 0; a_31, a_32, 0) . $,
  [(5)],
)

如上所示, 行列式 $|bold(B)_1|$ 是代数余子式 $C_11 = a_22 a_33 - a_23 a_32$, $|bold(B)_2|$ 是代数余子式 $C_12$. 注意, 在 $-(a_21 a_33 - a_23 a_31)$ 中要正确写出负号, 且代数余子式 $C_12$ 位于 $bold(A)^(-1)$ 的第 1 列. 用这些代数余子式除以 $det bold(A)$ 就能得到逆矩阵!

#yaodian[
  $bold(A)^(-1)$ 的 $(i, j)$ 元素是代数余子式 $C_(j i)$ (而非 $C_(i j)$) 除以 $det bold(A)$:

  #eqnumL([计算 $bold(A)^(-1)$ 的公式], $ (bold(A)^(-1))_(i, j) = (C_(j i))/(det bold(A)), quad "故" quad bold(A)^(-1) = (bold(C)^T)/(det bold(A)) . $, 6)
]

用 $C_(i j)$ 构建 “代数余子式矩阵” $bold(C)$, 则 $bold(C)$ 的转置可用于计算 $bold(A)^(-1)$. 为计算 $bold(A)^(-1)$ 的 $(i, j)$ 元素, 首先划去 $bold(A)$ 第 $j$ 行和第 $i$ 列, 再将所得矩阵的行列式乘 $(-1)^(i+j)$ 来得到代数余子式 $C_(j i)$, 然后除以 $det bold(A)$.

这里针对 $bold(A)^(-1)$ 的 $(3, 1)$ 元素来检验这个方法. 针对第 1 列可以求解 $bold(A) bold(x) = (1, 0, 0)$, 而第三个分量 $x_3$ 需用 (5) 式中的第三个行列式来除以 $det bold(A)$. 这个行列式恰好是代数余子式 $C_13 = a_21 a_32 - a_22 a_31$, 因此 $(bold(A)^(-1))_(3, 1) = (C_13)/(det bold(A))$.

#barHead[■ 小结]　在求解 $n times n$ 方程组 $bold(A) bold(A)^(-1) = bold(I)$ 时, 利用 $bold(I)$ 的每一列都能得到 $bold(A)^(-1)$ 对应的一列. $bold(A)^(-1)$ 的每一个元素都是一个比值: $(n-1)$ 阶行列式 / $n$ 阶行列式.

#barHead[■ 公式] $bold(A)^(-1) = (bold(C)^T)/(det bold(A))$ #hei[的直接证明]　这意味着 $bold(A) bold(C)^T = (det bold(A)) bold(I)$:

#dingliC[
  #eqnum($ mat(delim: "[", a_11, a_12, a_13; a_21, a_22, a_23; a_31, a_32, a_33) mat(delim: "[", C_11, C_21, C_31; C_12, C_22, C_32; C_13, C_23, C_33) = mat(delim: "[", det bold(A), 0, 0; 0, det bold(A), 0; 0, 0, det bold(A)) . $, 7)
]

($bold(A)$ 的第 1 行) 左乘 ($bold(C)^T$ 的第 1 列) 得到等式右边的第一个 $det bold(A)$:

#dmath[$ a_11 C_11 + a_12 C_12 + a_13 C_13 = det bold(A), quad "这正是代数余子式性质!" $]

同理, $bold(A)$ 的第 2 行左乘 $bold(C)^T$ (注意转置) 的第 2 列结果也是 $det bold(A)$, 即各元素 $a_(2 j)$ 乘对应的代数余子式 $C_(2 j)$ 得到行列式.

如何解释 (7) 式主对角线之外的元素为零? 这些元素由 $bold(A)$ 的一行元素乘另一行元素

#pagebreak()