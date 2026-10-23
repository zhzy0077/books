#import "../theme.typ": *

#chapterHead("assets/fig-p438-chapter.png")[线 性 变 换]

#secBracket[8.1  线性变换的思想]

#v(8pt)
#yaodian[
  #set enum(numbering: "1.", tight: false)
  1. 线性变换 $T$ 将向量 $bold(v)$ 变成 $T(bold(v))$, 线性性质要求 $T(c bold(v) + d bold(w)) = c T(bold(v)) + d T(bold(w))$.
  2. 输入向量 $bold(v)$ 和输出向量 $T(bold(v))$ 可以在 $R^n$ 或矩阵空间或函数空间中.
  3. 设 $bold(A)$ 为 $m times n$ 实矩阵, 则 $T(bold(x)) = bold(A) bold(x)$ 为输入空间 $R^n$ 到输出空间 $R^m$ 的线性变换.
  4. 微分变换 $T(f) = (dif f)/(dif x)$ 是线性的, 积分变换 $T^+(f) = integral_0^x f(t) dif t$ 是其广义逆.
  5. 两个线性变换 $bold(S), T$ 的乘积 $bold(S) T$ 仍是线性的: $(bold(S) T)(bold(v)) = bold(S)(T(bold(v)))$.
]

#v(6pt)
当用矩阵 $bold(A)$ 左乘向量 $bold(v)$ 时, $bold(v)$ 将 “变换” 成另一个向量 $bold(A) bold(v)$. 输入为 $bold(v)$, 输出为 $T(bold(v)) = bold(A) bold(v)$. 变换 $T$ 的作用与函数的类似: 对于函数 $f$, 输入为数字 $x$, 输出为 $f(x)$; 对于变换 $T$, 输入为向量 $bold(v)$, 输出为 $T(bold(v))$ (如与矩阵相乘). 我们通常研究某个向量空间 $V$ 上的变换. 当用矩阵 $bold(A)$ 左乘每一个向量 $bold(v) in V$ 时, 这恰是在变换整个空间 $V$.

对确定的矩阵 $bold(A)$, 它将 $bold(v)$ 变成 $bold(A) bold(v)$, 将 $bold(w)$ 变成 $bold(A) bold(w)$. 由此可知, 由 $bold(u) = bold(v) + bold(w)$ 变换得到的 $bold(A) bold(u)$, 将毫无疑问地等于 $bold(A) bold(v) + bold(A) bold(w)$. 矩阵乘法 $T(bold(v)) = bold(A) bold(v)$ 给出了一个线性变换:

#dingli[
  一个变换 $T$ 对向量空间 $V$ 中每个输入向量 $bold(v)$ 指定一个输出 $T(bold(v))$. 该变换称为线性的, 若其对所有 $bold(v)$ 和 $bold(w)$ 均满足下述条件:

  #align(center)[(a) $T(bold(v) + bold(w)) = T(bold(v)) + T(bold(w))$; #h(2em) (b) $forall c, T(c bold(v)) = c T(bold(v))$.]
]

由上述定义, 若输入为 $bold(v) = 0$, 则输出必然为 $T(bold(v)) = 0$. 条件 (a) 和 (b) 可以合并为一个条件:



#pagebreak()