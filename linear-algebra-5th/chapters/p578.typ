#import "../theme.typ": *

当 $n > 4$ 时, 求解 $det(bold(A) - lambda bold(I)) = 0$ 的一般公式不存在. 更糟糕的是, $lambda$ 的值可能非常不稳定, 即 $bold(A)$ 的微小变化可能引发 $lambda$ 的较大变化. 最好利用矩阵 $bold(A)$ 的自身特征, 逐渐将其化为对角矩阵或三角形矩阵, 这时特征值会出现在对角线上. 相关程序代码可参见 LAPACK 库——搜索 netlib.org lapack 以免费使用这些代码. 这个库结合了早期的 LINPACK 和 EISPACK, 并进行了许多改进 (使用位于 BLAS 第 3 级的矩阵-矩阵运算). 这是一个 Fortran 77 程序包, 用于在高性能计算机上求解线性代数问题. 在个人电脑上, 一个高质量的矩阵计算包是必须的. 对于能够实现并行计算的超级计算机, 可以利用 ScaLAPACK 程序包和块消元方法.

我们将简要讨论用幂法和 QR 法 (LAPACK 选用了该方法) 计算矩阵的特征值. 这里仅给出计算方法, 而不提供具体代码.

(1) 幂法和反幂法 选择任意向量 $bold(u)_0$ 作为初始值. 用矩阵 $bold(A)$ 左乘 $bold(u)_0$ 可得 $bold(u)_1$, 再用 $bold(A)$ 左乘可得 $bold(u)_2$. 如果将 $bold(u)_0$ 表示为 $bold(A)$ 的特征向量的线性组合, 那么 $bold(A)$ 左乘特征向量 $bold(x)_i$ 相当于特征值 $lambda_i$ 乘 $bold(x)_i$, 逐次进行 $k$ 步之后可以得到 $(lambda_i)^k$:

#eqnum($ bold(u)_k = bold(A)^k bold(u)_0 = c_1 lambda_1^k bold(x)_1 + c_2 lambda_2^k bold(x)_2 + dots.c + c_n lambda_n^k bold(x)_n. $, 10)

随着上述幂法的继续, 最大特征值#footnote[译者注: 这里都是按绝对值来讨论特征值.]开始占主导地位. 如果 $lambda_1$ 最大, 则向量 $bold(u)_k$ 的方向趋于占主导的特征向量 $bold(x)_1$ 的方向. 利用如下马尔可夫矩阵计算可以看出这一点:

$ bold(A) = mat(0.9, 0.3; 0.1, 0.7) quad "的最大特征值" quad lambda_max = 1, quad "对应特征向量" quad mat(0.75; 0.25). $

初始值设置为 $bold(u)_0$, 并且每一步都用矩阵 $bold(A)$ 左乘:

$ bold(u)_0 = mat(1; 0), quad bold(u)_1 = mat(0.9; 0.1), quad bold(u)_2 = mat(0.84; 0.16), quad dots.c, quad "趋于" quad bold(u)_infinity = mat(0.75; 0.25). $

幂法的收敛速度取决于第二大特征值 $lambda_2$ 与最大特征值 $lambda_1$ 的比值. 我们并非希望 $lambda_1$ 很小, 而是希望 $lambda_2/lambda_1$ 比较小. 这里 $lambda_2 = 0.6$ 且 $lambda_1 = 1$, 因此收敛速度较快. 对于大规模矩阵, 经常会出现情形是比值 $|lambda_2/lambda_1|$ 非常接近 1, 这时幂法的收敛速度就很慢了.

有没有办法求出最小特征值? 这在实际应用中非常重要. 事实上, 可以通过反幂法求最小特征值: 用矩阵 $bold(A)^(-1)$ 而不是矩阵 $bold(A)$ 左乘 $bold(u)_0$. 因为通常不想计算 $bold(A)^(-1)$, 所以实际上是要求解方程组 $bold(A) bold(u)_1 = bold(u)_0$. 通过保存 LU 分解因子, 下一步计算 $bold(A) bold(u)_2 = bold(u)_1$ 就非常高效了, 重复 $k$ 步可得 $bold(A) bold(u)_k = bold(u)_(k-1)$:

#eqnumL([#hei[反幂法]], $ bold(u)_k = bold(A)^(-k) bold(u)_0 = (c_1 bold(x)_1)/(lambda_1^k) + (c_2 bold(x)_2)/(lambda_2^k) + dots.c + (c_n bold(x)_n)/(lambda_n^k). $, 11)

现在最小特征值 $lambda_min$ 处于主导地位: 当它非常小时, 因子 $1/lambda_min^k$ 是非常大的.



#pagebreak()
