#import "../theme.typ": *

#subsec[差分方程 (选学)]

为了研究友矩阵 $bold(A)$ 的特征值对 (10) 式中方程 $(dif bold(u))/(dif t) = bold(A) bold(u)$ 的解的影响, 用差分方程代替 $y'' = -y$, 并考虑 $(y, y')$ 形成的图形. 以下有三种选择来使用式子 $Y(t + Delta t) - 2Y(t) + Y(t - Delta t)$, 该式除以 $(Delta t)^2$ 近似为 $y''$.

#dingliC[
  #grid(
    columns: (auto, auto, auto),
    align: (left + horizon, center + horizon, left + horizon),
    [向前 (Forward) 差分\ 中心 (Centered) 差分\ 向后 (Backward) 差分],
    [$ (Y_(n+1) - 2Y_n + Y_(n-1))/((Delta t)^2) = $],
    [$ cases(-Y_(n-1) quad (11"F"), -Y_n quad (11"C"), -Y_(n+1). quad (11"B")) $],
  )
]

上式中 $Y_(n+i) = Y(t + i Delta t)$. 图 6.4(a) 展示了 $y(t) = cos t$ 对应的 $(y, y')$ 当 $t in (0, 2 pi)$ 时正好构成一个圆. 上述三种差分方程的解在步长为 $Delta t = (2 pi)/32$ 的 32 步内不对应一个完整的圆. 这些图像将用特征值来说明:

向前差分 $|lambda| > 1$ (旋出), 中心差分 $|lambda| = 1$ (最佳), 向后差分 $|lambda| < 1$ (旋入).

2 步方程 (11) 可化为 1 步方程组 $bold(U)_(n+1) = bold(A) bold(U)_n$. 此时, 离散未知量为 $bold(U)_n = (Y_n, Z_n)$ 而非 $bold(u) = (y, y')$, 其中 $Z_n = (Y_(n+1) - Y_n)/(Delta t)$. 从 $bold(U)_0$ 开始迭代 $n$ 步:

#dingliC[
  #eqnumL([向前差分 (11F)], $ cases(Y_(n+1) = Y_n + Delta t Z_n ",", Z_(n+1) = Z_n - Delta t Y_n) quad "变成" quad bold(U)_(n+1) = mat(delim: "[", 1, Delta t; -Delta t, 1) mat(delim: "[", Y_n; Z_n) = bold(A) bold(U)_n . $, 12)
]

上式类似于 $Y' = Z$ 和 $Z' = -Y$. 它们是关于 $n$ 和 $n+1$ 的一阶方程, 消去 $Z_n, Z_(n+1)$ 就恢复为 "向前" 二阶方程 (11F).

现在要研究的问题很简单: 点列 $(Y_n, Z_n)$ 会一直在圆周 $Y^2 + Z^2 = 1$ 上吗? 答案是否定的, 在图 6.4(b) 中, 它们趋于无穷远处. 这里考虑的是矩阵幂 $bold(A)^n$ 而非 $e^(bold(A) t)$, 所以应关注模 $|lambda|$, 而非特征值的实部.

#dingliC[
  $ bold(A) "的特征值" lambda = 1 plus.minus i Delta t, quad "于是" |lambda| > 1 "且点" (Y_n, Z_n) "旋出." $
]

如果选择 (11B) 式中的向后差分, 结果会正好相反, 如图 6.5(a) 所示. 注意新的系数矩阵 $bold(A)$ 的位置:

#eqnumL([向后差分], $ cases(Y_(n+1) = Y_n + Delta t Z_(n+1) ",", Z_(n+1) = Z_n - Delta t Y_(n+1)) quad "即" quad mat(delim: "[", 1, -Delta t; Delta t, 1) mat(delim: "[", Y_(n+1); Z_(n+1)) = mat(delim: "[", Y_n; Z_n) = bold(U)_n . $, 13)

矩阵 $bold(A)^(-1) = mat(1, -Delta t; Delta t, 1)$ 的特征值也为 $1 plus.minus i Delta t$, 但其为 $bold(A)$ 的逆矩阵, 作用是将 $bold(U)_(n+1)$ 转化为 $bold(U)_n$. 那么 $|lambda| < 1$ 就解释了为什么向后差分的解陷入到 $(0, 0)$.

#pagebreak()