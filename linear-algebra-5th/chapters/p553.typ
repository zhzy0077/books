#import "../theme.typ": *

#v(10pt)
#align(center)[#hei(size: 26pt)[第] #h(0.4em) #hei(size: 52pt)[11] #h(0.4em) #hei(size: 26pt)[章]]

#v(24pt)
#align(center, hei(size: 22pt)[数值线性代数])
#v(8pt)
#line(length: 100%, stroke: (thickness: 0.6pt, dash: "dotted"))

#v(24pt)
#block(stroke: 0.6pt, radius: 4pt, inset: 8pt, width: 100%)[
  #set enum(numbering: "1.", spacing: 0.6em)
  + 数值线性代数追求的目标是效率、精度以及稳定性: 矩阵的阶数 $n > 10^3$ 或 $10^6$.
  + 当系数矩阵为稠密矩阵、稀疏矩阵、带状矩阵或结构矩阵时, 这些矩阵都对应特定的求解算法.
  + 消元法的精度由条件数 $norm(bold(A)) norm(bold(A)^(-1))$ 控制.
  + 格拉姆-施密特算法通常利用豪斯霍尔德反射矩阵 $bold(H) = bold(I) - 2 bold(u) bold(u)^T$ 来求矩阵 $bold(Q)$.
  + 可利用 $bold(Q R)$ 迭代法计算矩阵的特征值:

    $ bold(A)_0 = bold(Q)_0 bold(R)_0 -> bold(R)_0 bold(Q)_0 = bold(A)_1 = bold(Q)_1 bold(R)_1 -> dots.c -> bold(A)_n. $

  + 带位移的 $bold(Q R)$ 迭代法计算效果更佳: 正向 $bold(A)_k - c_k bold(I) = bold(Q)_k bold(R)_k$, 反向 $bold(A)_(k+1) = bold(R)_k bold(Q)_k + c_k bold(I)$.
  + 若 $bold(S)^(-1) bold(T)$ 的所有特征值满足 $|lambda| < 1$, 则可利用迭代格式 $bold(S) bold(x)_(k+1) = bold(b) - bold(T) bold(x)_k$ 求解 $(bold(S) + bold(T)) bold(x) = bold(b)$.
  + 迭代法经常使用预条件子 $bold(P)$. 可将 $bold(A) bold(x) = bold(b)$ 转化为 $bold(P) bold(A) bold(x) = bold(P) bold(b)$, 其中 $bold(P) bold(A) approx bold(I)$.
  + 共轭梯度法和广义最小残差法均为克雷洛夫 (Krylov) 方法, 见 Trefethen-Bau 的著作 (或其他参考文献).
]

#v(18pt)
#secBracket[11.1  高斯消元法的应用]

#v(10pt)

数值线性代数的目标之一是兼顾快速求解以及精确求解. 数值求解需要较高的计算效率, 但又必须避免数值不稳定. 在高斯消元法中, 需要权衡的是如何交换方程的顺序. 本节将阐明何时应该为了提高计算速度而交换行, 以及何时应该为了提高计算精度而交换行.

精确求解的关键是在计算过程中避免绝对值很大的数, 通常这也要求我们避免绝对值过小的数! 绝对值较小的主元意味着大乘数, 因为消元过程中需要除以该主元. 一个好的解决方法是使用“列主元消元法”, 其基本思想是每一步选择一个绝对值最大的元素, 然后通过行变换将它交换到主元素的位置上, 再用其消去主对角线以下的其他元素. 本节将解释为什么在程序实现中要使用该主元选择策略.

当然, 也可进行其他行交换以减少消元计算量. 在实践中, 大多数高阶方阵都是稀疏的

#pagebreak()