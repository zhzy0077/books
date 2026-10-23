#import "../theme.typ": *

#ti[10.][和 $z + overline(z)$ 总为 \_\_\_\_, 差 $z - overline(z)$ 总为 \_\_\_\_. 设 $z != 0$, 则乘积 $z overline(z)$ 总为 \_\_\_\_, 比值 $z/overline(z)$ 的绝对值为 \_\_\_\_.]

#ti[11.][对于实矩阵 $A$, 将 $A x = lambda x$ 两边取共轭得 $A overline(x) = overline(lambda) overline(x)$. 由此可得两个结论: $overline(lambda)$ 为 $A$ 的另一个特征值, 而 $overline(x)$ 为其对应的特征向量. 求出实矩阵 $A = mat(delim: "[", a, b; -b, a)$ 的特征值 $lambda, overline(lambda)$ 及特征向量 $x, overline(x)$.]

#ti[12.][$2 times 2$ 实矩阵 $mat(delim: "[", a, b; c, d)$ 的特征值可由二次方程求根公式得到:

#dmath[$ det mat(delim: "[", a - lambda, b; c, d - lambda) = lambda^2 - (a + d) lambda + (a d - b c) = 0, $]

推出两个特征值 $lambda = 1/2 [a + d plus.minus sqrt((a + d)^2 - 4(a d - b c))]$.

#sub[(a) 如果 $a = b = d = 1$, 那么当 $c$ 为 \_\_\_\_ 时, 特征值为复数;]

#sub[(b) 当 $a d = b c$ 时, 特征值是多少?]]

#ti[13.][对习题 12, 当迹的平方 $(a + d)^2$ 小于 \_\_\_\_ 时, 特征值不是实数. 证明: 当 $b c > 0$ 时, $lambda$ 为实数.]

#ti[14.][实反称矩阵 $A$ (满足 $A^T = -A$) 的特征值为纯虚数. 先证: 由 $A x = lambda x$ 以及分块矩阵乘法可得

#dmath[$ mat(delim: "[", O, A; -A, O) mat(delim: "[", x; i x) = i lambda mat(delim: "[", x; i x) . $]

上式中的分块矩阵是对称的, 它的特征值必为 \_\_\_\_! 因此 $lambda$ 为 \_\_\_\_.]

#hei[习题 15—22 是关于复数 $r cos theta + i r sin theta$ 的极形式 $r e^(i theta)$ 的.]

#ti[15.][将以下各数写成极形式 $r e^(i theta)$, 然后再求各数的平方:

#sub[(a) $1 + sqrt(3) i$; #h(2em) (b) $cos 2 theta + i sin 2 theta$; #h(2em) (c) $-7i$; #h(2em) (d) $5 - 5i$.]]

#ti[16.][(作者偏爱之题) 请小心求出 $z = sin theta + i cos theta$ 的绝对值与辐角, 并在复平面上描出 $z$. 用 $cos theta + i sin theta$ 乘 $z$ 得到 \_\_\_\_.]

#ti[17.][在复平面上画出 $z^8 = 1$ 的全部八个解, 其中的根 $z = overline(w) = e^(-2 pi i slash 8)$ 对应的矩形形式 $a + i b$ 是什么?]

#ti[18.][在复平面上分别描出 1 的立方根与 $-1$ 的立方根. 两者合起来就是 \_\_\_\_ 的六次方根.]

#ti[19.][比较 $e^(3 i theta) = cos 3 theta + i sin 3 theta$ 与 $(e^(i theta))^3 = (cos theta + i sin theta)^3$, 进而求出三倍角公式. 这是由 $cos theta$ 和 $sin theta$ 计算 $cos 3 theta$ 和 $sin 3 theta$ 的公式.]

#ti[20.][设 $z$ 满足共轭 $overline(z)$ 等于倒数 $1/z$, 求出所有可能的 $z$.]

#pagebreak()