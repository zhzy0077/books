#import "../theme.typ": *

达式 $bold(A) v_1 = sigma_1 u_1$ 正是奇异值分解. 最大奇异值 $sigma_1$ 是矩阵 $bold(A)$ 的 “范数”. 范数 $||bold(A)||$ 为 $(||bold(A) x||)/(||x||)$ 的最大值:

#eqnum($ ||bold(A)|| = max_(x != 0) (||bold(A) x||)/(||x||) = sigma_1 . $, 2)

MATLAB 软件使用命令 norm(x) 和 norm(A) 分别给出向量 $x$ 的长度和矩阵 $bold(A)$ 的范数, 在数学中则使用双竖线: $||x||$ 和 $||bold(A)||$. 这里 $||x||$ 是指向量的长度, 它满足

#dmath[$ ||x||^2 = |x_1|^2 + |x_2|^2 + dots.c + |x_n|^2. $]

矩阵范数源自向量范数, 取 $x = v_1$, $bold(A) x = sigma_1 u_1$, 则 $||bold(A) x|| \/ ||x|| = sigma_1$, 即最大比值 $||bold(A)||$.

数值 norm(A) 的两条重要性质直接来自其定义:

#dingliC[#eqnum($ "三角不等式" quad ||bold(A) + bold(B)|| <= ||bold(A)|| + ||bold(B)||, quad "乘积不等式" quad ||bold(A) bold(B)|| <= ||bold(A)|| ||bold(B)|| . $, 3)]

定义 (2) 表明, 对每个向量 $x$, $||bold(A) x|| <= ||bold(A)|| ||x||$. 这是显然的! 再由向量的三角不等式推出矩阵的三角不等式:

对于向量 $||(bold(A) + bold(B)) x|| <= ||bold(A) x|| + ||bold(B) x|| <= ||bold(A)|| ||x|| + ||bold(B)|| ||x||$,

上式除以 $||x||$, 然后遍历所有 $x$ 取最大值, 就有 $||bold(A) + bold(B)|| <= ||bold(A)|| + ||bold(B)||$.

由 $||bold(A) bold(B) x|| <= ||bold(A)|| ||bold(B) x|| <= ||bold(A)|| ||bold(B)|| ||x||$ 立即可得乘积不等式. 只需除以 $||x||$, 再遍历所有 $x$ 取最大值, 结果就是 $||bold(A) bold(B)|| <= ||bold(A)|| ||bold(B)||$.

#hei[例 1]　秩 1 矩阵 $bold(A) = u v^T$ 最为基础. 它有一个非零特征值 $lambda_1$ 和一个非零奇异值 $sigma_1$. 此外, 其特征向量为 $u$, (左和右) 奇异向量分别是 $u$ 和 $v$.

特征向量　$bold(A) u = (u v^T) u = u (v^T u) = lambda_1 u$, 故 $lambda_1 = v^T u$;

奇异向量　$bold(A)^T bold(A) v = (v u^T)(u v^T) v = v (u^T u)(v^T v) = sigma_1^2 v$, 故 $sigma_1 = ||u|| ||v||$.

而 $|lambda_1| <= sigma_1$ 正好对应施瓦茨不等式 $|v^T u| <= ||u|| ||v||$.

如何知道 $|lambda_1| <= sigma_1$? $bold(A) x = lambda_1 x$ 中的特征向量 $x$ 给出比值 $||bold(A) x|| \/ ||x|| = ||lambda_1 x|| \/ ||x||$, 即 $|lambda_1|$, 而最大比值 $sigma_1$ 不会小于 $|lambda_1|$.

$|lambda_2| <= sigma_2$ 也是正确的吗? 不, 完全错误. 事实上, 对 $2 times 2$ 矩阵 $bold(A)$,

#dmath[$ |det bold(A)| = |lambda_1 lambda_2| = sigma_1 sigma_2. $]

此时由 $|lambda_1| <= sigma_1$ 可得 $|lambda_2| >= sigma_2$.

距离 $bold(A)$ “最近” 的秩 $k$ 矩阵为 $bold(A)_k = sigma_1 u_1 v_1^T + sigma_2 u_2 v_2^T + dots.c + sigma_k u_k v_k^T$.

这是矩阵逼近理论中的关键结果——埃卡特-杨-米尔斯基 (Eckart-Young-Mirsky) 定理, 其表述为

#pagebreak()