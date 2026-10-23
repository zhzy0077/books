#import "../theme.typ": *

#dingliC[
  #eqnum($ bold(u)_1 (t) = e^(lambda_1 t) bold(x)_1 = e^t mat(delim: "[", 1; 1) , quad quad bold(u)_2 (t) = e^(lambda_2 t) bold(x)_2 = e^(-t) mat(delim: "[", 1; -1) . $, 4)
]

注意: $bold(u)_1$ 与 $bold(u)_2$ 分别满足 $bold(A) bold(u)_1 = bold(u)_1$ 和 $bold(A) bold(u)_2 = -bold(u)_2$, 这一点与 $bold(x)_1$ 和 $bold(x)_2$ 类似. 因子 $e^t$ 和 $e^(-t)$ 随 $t$ 变化而变. 这两个因子使得

#dmath[$ (dif bold(u)_1)/(dif t) = bold(u)_1 = bold(A) bold(u)_1, quad quad (dif bold(u)_2)/(dif t) = -bold(u)_2 = bold(A) bold(u)_2 . $]

于是就得到了 $(dif bold(u))/(dif t) = bold(A) bold(u)$ 的两个解. 为了得到其他所有解, 用任意常数 $C$ 和 $D$ 分别乘这两个特解, 再相加:

#dingliC[
  #eqnumL([通解], $ bold(u)(t) = C e^t mat(delim: "[", 1; 1) + D e^(-t) mat(delim: "[", 1; -1) = mat(delim: "[", C e^t + D e^(-t); C e^t - D e^(-t)) . $, 5)
]

利用常数 $C$ 与 $D$, $bold(u)(t)$ 可以匹配任何初值向量 $bold(u)(0) = (u_1 (0), u_2 (0))$: 令 $t = 0$, 则 $e^0 = 1$, 再解对应的方程组即可. 例 1 要求初值为 $bold(u)(0) = (4, 2)$:

#dmath[$ "由" bold(u)(0) "确定" C, D quad quad C mat(delim: "[", 1; 1) + D mat(delim: "[", 1; -1) = mat(delim: "[", 4; 2) , quad "解得" quad C = 3, D = 1 . $]

将 $C = 3$ 和 $D = 1$ 代入 (5) 式, 初值问题被完全解决.

#h(1.5em) 解 $bold(u)_(k+1) = bold(A) bold(u)_k$ 时使用的三步现在可用来解 $(dif bold(u))/(dif t) = bold(A) bold(u)$:

#yaodian[
  (1) 将 $bold(u)(0)$ 写成 $bold(A)$ 的特征向量的线性组合 $c_1 bold(x)_1 + c_2 bold(x)_2 + dots.c + c_n bold(x)_n$;

  (2) 每个特征向量 $bold(x)_i$ 乘它的增长因子 $e^(lambda_i t)$;

  (3) 解就是各 $e^(lambda_i t) bold(x)_i$ 的线性组合, 其中系数由 $bold(u)(0)$ 决定:

  #eqnumL([$ (dif bold(u))/(dif t) = bold(A) bold(u) $], dingliC[$ bold(u)(t) = c_1 e^(lambda_1 t) bold(x)_1 + c_2 e^(lambda_2 t) bold(x)_2 + dots.c + c_n e^(lambda_n t) bold(x)_n . $], 6)
]

第一步需要对角化分解式 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$, 得到 $n$ 个特征向量构成的一组基. 例外情形: 如果两个特征值 $lambda$ 相同, 却只对应一个特征向量, 那么就需要另一个解. (它是 $t e^(lambda t) bold(x)$.)

#h(1.5em) 例 2　已知三阶方阵 $bold(A)$ 的特征值 $lambda = 1, 2, 3$, 求解 $(dif bold(u))/(dif t) = bold(A) bold(u)$:

#grid(columns: (auto, 1fr, auto),
  align(horizon)[典型例子\ 关于 $bold(u)$ 的方程\ 初值条件 $bold(u)(0)$],
  align(center)[$ (dif bold(u))/(dif t) = mat(delim: "[", 1, 1, 1; 0, 2, 1; 0, 0, 3) bold(u) quad "满足初值条件" quad bold(u)(0) = mat(delim: "[", 9; 7; 4) . $],
  align(horizon)[],
)

特征向量为 $bold(x)_1 = (1, 0, 0)$, $bold(x)_2 = (1, 1, 0)$ 和 $bold(x)_3 = (1, 1, 1)$.

#pagebreak()