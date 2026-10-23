#import "../theme.typ": *

#figure(image("../assets/fig-p471-complex.png", width: 80%), numbering: none, caption: [图 9.1  复数 $z = a + b i$ 对应点 $(a, b)$ 和向量 $mat(delim: "[", a; b)$. ])

以下为两个有用的结论: 将 $z_1$ 和 $z_2$ 相乘, 所得为 $z_1 z_2$ 的共轭; 将 $z_1$ 和 $z_2$ 相加, 所得为 $z_1 + z_2$ 的共轭, 即

$ overline(z_1) + overline(z_2) = overline(z_1 + z_2), quad overline(z_1) overline(z_2) = overline(z_1 z_2). $

例如, $z_1 = 3 + 2i, z_2 = 1 - i$,

$ overline(z_1) + overline(z_2) = (3 - 2i) + (1 + i) = 4 - i, $

此即 $z_1 + z_2 = 4 + i$ 的共轭;

$ overline(z_1) overline(z_2) = (3 - 2i)(1 + i) = 5 + i, $

此即 $z_1 z_2 = 5 - i$ 的共轭.

加法与乘法正是线性代数关注的运算. 当 $bold(A)$ 为实矩阵时, 对 $bold(A) bold(x) = lambda bold(x)$ 两边取共轭, 可得另一个特征值 $overline(lambda)$ 及其特征向量 $overline(bold(x))$:

#eqnumL([特征值 $lambda$ 与 $overline(lambda)$], $ "如果" bold(A) bold(x) = lambda bold(x) quad "且" bold(A) "为实矩阵, 那么" bold(A) overline(bold(x)) = overline(lambda) overline(bold(x)) . $, 1)

将 $z = 3 + 2i$ 与其复共轭 $overline(z) = 3 - 2i$ 分别相加、相乘时得到特别的结果, 即 $z + overline(z)$ 与 $z overline(z)$ 均为实数:

$ z + overline(z) "为实数" quad quad (3 + 2i) + (3 - 2i) = 6 quad ("实数"), $

$ z overline(z) "为实数" quad quad (3 + 2i)(3 - 2i) = 9 + 6i - 6i - 4i^2 = 13 quad ("实数"). $

复数 $z = a + b i$ 与其共轭 $overline(z) = a - b i$ 的和为实数 $2a$, 乘积为实数 $a^2 + b^2$:

#eqnumL([$z$ 与 $overline(z)$ 相乘得到 $abs(z)^2 = r^2$], $ (a + b i)(a - b i) = a^2 + b^2 . $, 2)

下面分析非零复数 $z$ 的倒数 $1/z$. 如何计算 1 除 $z = a + i b$? 最佳方案是先乘 $overline(z)/z = 1$, 分母中的乘积 $z overline(z)$ 为 $a^2 + b^2$:

$ 1/(a + i b) = 1/(a + i b) dot (a - i b)/(a - i b) = (a - i b)/(a^2 + b^2). $



#pagebreak()
