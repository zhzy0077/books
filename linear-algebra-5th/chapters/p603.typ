#import "../theme.typ": *

的方差分成三个相对简单的部分:

#dmath[$ sigma_Z^2 = sum_i sum_j p_(i j)(x_i + y_j - m_X - m_Y)^2 \
= sum_i sum_j p_(i j)(x_i - m_X)^2 + sum_i sum_j p_(i j)(y_j - m_Y)^2 + \
2 sum_i sum_j p_(i j)(x_i - m_X)(y_j - m_Y). $]

上式后一个等号右边的第一个和式为 $sigma_X^2$, 第二个和式为 $sigma_Y^2$, 最后一个和式为 $2 sigma_(X Y)$. 因此

#eqnumL([$Z = X + Y$ 的方差], $ sigma_Z^2 = sigma_X^2 + sigma_Y^2 + 2 sigma_(X Y) . $, 16)

#hei[$Z = bold(A) bold(X)$ 的协方差矩阵]

当 $Z = X + Y$ 时, 还有一种很好的方法来分析 $sigma_Z^2$. 将 $(X, Y)$ 视为一个列向量 $bold(X)$ (仍为随机向量), 再用 $1 times 2$ 矩阵 $bold(A) = [1 quad 1]$ 左乘向量 $bold(X)$, 则 $bold(A) bold(X)$ 就是 $Z = X + Y$. (16) 式中的方差 $sigma_Z^2$ 可写成矩阵形式为

#eqnum($ sigma_Z^2 = [1 quad 1] mat(sigma_X^2, sigma_(X Y); sigma_(X Y), sigma_Y^2) mat(1; 1), quad "即" quad sigma_Z^2 = bold(A) bold(V) bold(A)^T . $, 17)

可以看出, (17) 式中的 $sigma_Z^2 = bold(A) bold(V) bold(A)^T$ 与 (16) 式中的 $sigma_X^2 + sigma_Y^2 + 2 sigma_(X Y)$ 是一致的.

现在是重点: 向量 $bold(X)$ 可能包含来自 $M$ 个试验结果的 $M$ 个分量 (而不是只有 2 个分量), 这些试验会有 $M$ 阶协方差矩阵 $bold(V)_X$, 矩阵 $bold(A)$ 可能是 $K times M$ 矩阵, 则 $bold(A) bold(X)$ 是一个包含 $K$ 个分量的向量, 每个分量都是 $M$ 个试验结果的组合 (而不是 2 个试验结果的组合 $X + Y$).

$K$ 维向量 $Z = bold(A) bold(X)$ 有 $K$ 阶协方差矩阵 $bold(V)_Z$, 则关于协方差矩阵的重要结论是一个漂亮的公式:

#dingliC[#eqnumL([$bold(Z) = bold(A) bold(X)$ 的协方差矩阵是], $ bold(V)_Z = bold(A) bold(V)_X bold(A)^T . $, 18)]

(17) 式只是该公式的一个 $1 times 2$ 的例子. 这个简洁的公式展示了矩阵乘法之美, 本书不对该公式进行证明. 在第 12.3 节中将看到这个公式的诸多应用.

#hei[相关系数 $rho$]

相关系数 $rho_(X Y)$ 与协方差 $sigma_(X Y)$ 密切相关, 二者都用于衡量随机变量之间的相关性或独立性. 对随机变量 $X$ 和 $Y$ 进行 “标准化” 得到新的随机变量 $X' = X/sigma_X$ 和 $Y' = Y/sigma_Y$, 方差为 $sigma_(X')^2 = sigma_(Y')^2 = 1$. 这种做法就好比将一个向量 $bold(v)$ 除以自身的长度来构造对应的单位向量 $bold(v)/norm(bold(v))$ (长度为 1).

#pagebreak()