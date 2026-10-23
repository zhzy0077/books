#import "../theme.typ": *

#align(center, subsec[2.5　逆　矩　阵])

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #hei[1.] 若方阵 $bold(A)$ 可逆, 则 $bold(A)^(-1) bold(A) = bold(I)$ 且 $bold(A) bold(A)^(-1) = bold(I)$.

  #hei[2.] 判断方阵 $bold(A)$ 可逆性的算法是消元法: $bold(A)$ 必须有 $n$ 个 (非零) 主元.

  #hei[3.] 判断方阵 $bold(A)$ 可逆性的代数方法是计算 $bold(A)$ 的行列式: $det bold(A) != 0$.

  #hei[4.] 判断方阵 $bold(A)$ 可逆性的方程组是 $bold(A) bold(x) = 0$: $bold(x) = 0$ 是方程组的唯一解.

  #hei[5.] 若 $bold(A)$ 与 $bold(B)$ 是同阶可逆矩阵, 则 $bold(A) bold(B)$ 也是可逆矩阵: $(bold(A) bold(B))^(-1) = bold(B)^(-1) bold(A)^(-1)$.

  #hei[6.] $bold(A) bold(A)^(-1) = bold(I)$ 是关于 $bold(A)^(-1)$ 的 $n$ 个列的 $n$ 个方程. 用高斯-若尔当 (Gauss-Jordan) 消元法由 $[bold(A) quad bold(I)]$ 可得 $[bold(I) quad bold(A)^(-1)]$.

  #hei[7.] 本书最后 (附录 2) 给出了方阵 $bold(A)$ 可逆的 14 个等价条件.
]

设 $bold(A)$ 是一个 $n$ 阶方阵, 下面要确定的 "逆矩阵" $bold(A)^(-1)$ 与 $bold(A)$ 是同阶方阵, 且 $bold(A)^(-1)$ 左乘 $bold(A)$ 和右乘 $bold(A)$ 都等于 $bold(I)$. $bold(A)^(-1)$ 的作用与 $bold(A)$ 的恰好相反, 它们的乘积是单位矩阵——对向量不产生任何作用, 因此 $bold(A)^(-1) bold(A) bold(x) = bold(x)$. 但是 $bold(A)^(-1)$ 不一定总存在.

矩阵最常见的作用是左乘向量 $bold(x)$. 对 $bold(A) bold(x) = bold(b)$ 两边同时左乘 $bold(A)^(-1)$ (若存在) 得 $bold(A)^(-1) bold(A) bold(x) = bold(A)^(-1) bold(b)$, 从而 $bold(x) = bold(A)^(-1) bold(b)$. $bold(A)^(-1) bold(A)$ 的作用就好像先乘一个数然后再除以这个数. 一个不为零的数必存在倒数, 而矩阵情形更复杂且更有意思. 若方阵 $bold(A)^(-1)$ 存在, 则称 $bold(A)^(-1)$ 为 "A 的逆矩阵".

#gainian[定义][若存在矩阵 $bold(A)^(-1)$ 具有 "逆转" $bold(A)$ 的作用, 即有

#dmath[$ bold(A)^(-1) bold(A) = bold(I) quad "且" quad bold(A) bold(A)^(-1) = bold(I), $]

则称方阵 $bold(A)$ 是可逆矩阵.]

不是所有矩阵都可逆. 关于方阵的第一个问题就是: $bold(A)$ 是否可逆? 本节不会马上利用定义计算 $bold(A)^(-1)$, 甚至在大部分问题中根本就不需要计算逆矩阵! 以下是关于矩阵 $bold(A)^(-1)$ 的六个 "注".

注 1  方阵 $bold(A)$ 可逆当且仅当仅用消元法可得 $n$ 个主元 (允许换行). 用消元法解 $bold(A) bold(x) = bold(b)$ 时并未明确使用逆矩阵 $bold(A)^(-1)$.

注 2  若矩阵 $bold(A)$ 可逆, 则逆矩阵唯一. 设 $bold(B) bold(A) = bold(I)$ 且 $bold(A) bold(C) = bold(I)$, 则 $bold(B) = bold(C)$, 因为根据 "乘法结合律",

#dmath[$ bold(B) (bold(A) bold(C)) = (bold(B) bold(A)) bold(C), quad "得" quad bold(B) bold(I) = bold(I) bold(C) quad "或" quad bold(B) = bold(C) . $]

这表明左逆 $bold(B)$ (从左边乘 $bold(A)$ 得 $bold(I)$) 与右逆 $bold(C)$ (从右边乘 $bold(A)$ 得 $bold(I)$) 一定是同一矩阵.

注 3  若矩阵 $bold(A)$ 可逆, 则方程组 $bold(A) bold(x) = bold(b)$ 有唯一解 $bold(x) = bold(A)^(-1) bold(b)$:

#dingli[对 $bold(A) bold(x) = bold(b)$ 两边同时左乘 $bold(A)^(-1)$, 得 $bold(x) = bold(A)^(-1) bold(A) bold(x) = bold(A)^(-1) bold(b)$.]



#pagebreak()
