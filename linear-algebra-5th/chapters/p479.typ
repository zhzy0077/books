#import "../theme.typ": *

#gainian[定义][实 (复) 向量 $u$ 与 $v$ 的内积为 $u^H v$:

#eqnum($ u^H v = [overline(u)_1 quad overline(u)_2 quad dots.c quad overline(u)_n] mat(delim: "[", v_1; v_2; dots.v; v_n) = overline(u)_1 v_1 + overline(u)_2 v_2 + dots.c + overline(u)_n v_n . $, 3)]

对于复向量 $u$ 与 $v$, $u^H v$ 并不等于 $v^H u$, 这是因为 $v^H u = overline(v)_1 u_1 + overline(v)_2 u_2 + dots.c + overline(v)_n u_n$ 是 $u^H v$ 的复共轭. 计算复向量内积时, 向量相乘的次序变得相当重要了. 为了使上述定义对实向量与复向量均适用, 我们不得不容忍这一点不便.

#hei[例 1] #h(2em) $ u = mat(delim: "[", 1; i) "与" v = mat(delim: "[", i; 1) "的内积为" [1 quad -i] mat(delim: "[", i; 1) = 0. $

例 1 的结果令人惊讶, 因为向量 $(1, i)$ 与 $(i, 1)$ 看起来并不垂直. 但它们的确互相垂直. 内积为零依然表明 (复) 向量是正交的. 类似地, 向量 $(1, i)$ 正交于向量 $(1, -i)$, 它们的内积为 $1 - 1 = 0$, 这样我们得到了内积的正确结果 0. 相比之下, 如果计算内积时忘记取共轭, 我们就会错误地得到向量 $(1, i)$ 的长度为零.

#hei[注]  计算复向量 $u$ 与 $v$ 的内积时, 一般选择对第一个向量 $u$ 取共轭. 而有些教材的作者习惯于对第二个向量 $v$ 取共轭, 那么向量 $u$ 与 $v$ 的复内积就是 $u^T overline(v)$. 这两种选择都是可以的.

$ A u "和" v "的内积等于" u "与" A^H v "的内积:" $

#eqnumL([$A^H$ 也称为 $A$ 的伴随矩阵], $ (A u)^H v = u^H (A^H v) . $, 4)

$A u$ 的共轭为 $overline(A u)$. 对 $overline(A u)$ 转置, 自然得到 $overline(u)^T overline(A)^T$, 即 $u^H A^H$. 由此可知, 这些运算是相容的, 且共轭转置的运算律继承自转置的运算律.

本节会不断地利用一个事实, 即 $(a - i b)(c - i d)$ 是 $(a + i b)(c + i d)$ 的共轭.

#dingli[$A B$ 的共轭转置为 $(A B)^H = B^H A^H$.]

#hei[埃尔米特矩阵 $S = S^H$]

全体对称矩阵 $S$ (满足 $S = S^T$) 构成了实矩阵中一类最重要的特殊子集. 它们具有实特征值和正交的特征向量, 以这些特征向量为列可构成正交矩阵 $Q$. 每一个实的对称矩阵 $S$ 可以写成 $S = Q Lambda Q^(-1)$ 或者 $S = Q Lambda Q^T$ (因为 $Q$ 是正交矩阵, 满足 $Q^(-1) = Q^T$). 以上结论均基于 $S$ 为实对称矩阵.

与之对应的, 全体埃尔米特矩阵 $S$ 是复矩阵中一类特殊的矩阵, 它满足 $S = S^H$, 反映到元素上就是 $s_(i j) = overline(s)_(j i)$. 由于取共轭对实数无影响, 所以任意一个实对称矩阵都是埃尔米特矩阵. 下例中的矩阵 $S$ 也是埃尔米特矩阵:

#pagebreak()