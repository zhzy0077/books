#import "../theme.typ": *

#ti[15.][请写出各元素为 $a_(i j) = 2i - 3j$ 的 $3 times 3$ 矩阵 $bold(A) = (a_(i j))$. 矩阵 $bold(A)$ 中元素 $a_(32) = 0$, 但是在消元时仍然需要利用 $bold(E)_(32)$ 来将位置 (3,2) 的元素变为 0. 请问是前面哪一步使得该位置的元素不再为 0? 请写出消元所用的 $bold(E)_(32)$.]

习题 16—23 是关于构造特定矩阵并计算矩阵乘积的.

#ti[16.][将下列问题对应的线性方程组写成 $2 times 2$ 矩阵形式的 $bold(A) bold(x) = bold(b)$ 并求解:]

#sub[(a) $X$ 的年龄是 $Y$ 的两倍且二者年龄之和是 33, 求二者各自的年龄;]

#sub[(b) 点 $(2, 5)$ 与 $(3, 7)$ 在直线 $y = m x + c$ 上, 请求出 $m$ 和 $c$.]

#ti[17.][已知抛物线 $y = a + b x + c x^2$ 经过点 $(1, 4), (2, 8)$ 和 $(3, 14)$, 请构造矩阵方程并求解未知数 $(a, b, c)$.]

#ti[18.][首先分别按照 $bold(E) bold(F)$ 和 $bold(F) bold(E)$ 的顺序计算矩阵乘积, 其中]

$ bold(E) = mat(delim: "[", 1, 0, 0; a, 1, 0; b, 0, 1) , quad bold(F) = mat(delim: "[", 1, 0, 0; 0, 1, 0; 0, c, 1) . $

然后计算 $bold(E)^2 = bold(E) bold(E)$ 和 $bold(F)^3 = bold(F) bold(F) bold(F)$. 请猜测 $bold(F)^(100)$.

#ti[19.][分别以 $bold(P) bold(Q), bold(Q) bold(P)$ 和 $bold(P)^2$ 的顺序计算换行矩阵的乘积, 其中]

$ bold(P) = mat(delim: "[", 0, 1, 0; 1, 0, 0; 0, 0, 1) , quad bold(Q) = mat(delim: "[", 0, 0, 1; 0, 1, 0; 1, 0, 0) . $

请找到另一个 (三阶) 非对角矩阵 $bold(M)$, 使得 $bold(M)^2 = bold(I)$.

#ti[20.][(a) 设矩阵 $bold(B)$ 的所有列都相同, 则 $bold(E) bold(B)$ 的每一列也相同, 因为每一列都是 $bold(E)$ 左乘 $#underline[#h(3em)]$;]

#sub[(b) 设矩阵 $bold(B)$ 的所有行都是 $[1 quad 2 quad 4]$, 试举例说明 $bold(E) bold(B)$ 的行不全是 $[1 quad 2 quad 4]$, 但是这些行满足 $#underline[#h(3em)]$.]

#ti[21.][若消元矩阵 $bold(E)$ 的作用是将第 1 行加到第 2 行, $bold(F)$ 的作用是将第 2 行加到第 1 行, 请判断 $bold(E) bold(F)$ 与 $bold(F) bold(E)$ 是否相等.]

#ti[22.][设 $bold(A)$ 和 $bold(x)$ 的元素分别为 $a_(i j)$ 和 $x_j$, 则 $bold(A) bold(x)$ 的第 1 个分量是]

$ sum_(j=1)^n a_(1 j) x_j = a_(11) x_1 + a_(12) x_2 + dots.c + a_(1 n) x_n . $

若消元矩阵 $bold(E)_(21)$ 的作用是从第 2 行中减去第 1 行, 请针对下列元素写出计算公式:

#sub[(a) $bold(A) bold(x)$ 的第三个分量;]

#sub[(b) $bold(E)_(21) bold(A)$ 在位置 (2,1) 的元素;]

#sub[(c) $bold(E)_(21) (bold(E)_(21) bold(A))$ 在位置 (2,1) 的元素;]

#sub[(d) $bold(E)_(21) bold(A) bold(x)$ 的第一个分量.]



#pagebreak()
