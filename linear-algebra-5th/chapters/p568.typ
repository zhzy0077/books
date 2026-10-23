#import "../theme.typ": *

#block(stroke: 1pt, inset: (x: 8pt, y: 10pt), width: 100%, above: 18pt, below: 18pt)[
  #hei[解的相对误差小于 $c = norm(bold(A)) norm(bold(A)^(-1))$ 与方程组常数项相对误差的乘积:]

  #eqnumL([#hei[条件数 $c$]], $ norm(Delta bold(x))/norm(bold(x)) <= c norm(Delta bold(b))/norm(bold(b)) . $, 6)

  #hei[若方程组系数矩阵的误差为 $Delta bold(A)$ (而不是常数向量 $bold(b)$ 的误差), $c$ 仍然可以控制 $Delta bold(x)$:]

  #eqnumL([#hei[系数矩阵 $bold(A)$ 的误差 $Delta bold(A)$]], $ norm(Delta bold(x))/norm(bold(x) + Delta bold(x)) <= c norm(Delta bold(A))/norm(bold(A)) . $, 7)
]

#hei[证]  原方程为 $bold(b) = bold(A) bold(x)$. 误差方程 (5) 为 $Delta bold(x) = bold(A)^(-1) Delta bold(b)$. 利用矩阵范数的重要性质 $norm(bold(A) bold(x)) <= norm(bold(A)) norm(bold(x))$ 可得

$ norm(bold(b)) <= norm(bold(A)) norm(bold(x)) quad "及" quad norm(Delta bold(x)) <= norm(bold(A)^(-1)) norm(Delta bold(b)) . $

将上述两个不等式两边相乘, 则 $norm(bold(b)) norm(Delta bold(x)) <= c norm(bold(x)) norm(Delta bold(b))$. 然后, 将不等式两边同时除以 $norm(bold(b)) norm(bold(x))$, 则左边为解的相对误差 $norm(Delta bold(x))/norm(bold(x))$, 右边即 (6) 式中的上界.

当系数矩阵存在误差时, 相同的 $c = norm(bold(A)) norm(bold(A)^(-1))$ 仍会出现. 此时, 在误差方程中用 $Delta bold(A)$ 替代 $Delta bold(b)$, 从 $(bold(A) + Delta bold(A))(bold(x) + Delta bold(x)) = bold(b)$ 中减去 $bold(A) bold(x) = bold(b)$ 可得

$ bold(A)(Delta bold(x)) = -(Delta bold(A))(bold(x) + Delta bold(x)) . $

将等式两边同时左乘 $bold(A)^(-1)$, 然后取范数可得估计式 (7):

$ norm(Delta bold(x)) <= norm(bold(A)^(-1)) norm(Delta bold(A)) norm(bold(x) + Delta bold(x)) quad "或" quad norm(Delta bold(x))/norm(bold(x) + Delta bold(x)) <= norm(bold(A)) norm(bold(A)^(-1)) norm(Delta bold(A))/norm(bold(A)) . $

#hei[结论]  方程组求解的误差由两个因素决定: $Delta bold(A)$ 和 $Delta bold(b)$, 即系数矩阵引入的误差和常数向量 $bold(b)$ 引入的误差. 因此, 方程组自身的误差会影响解的误差 $Delta bold(x)$, 并且 $bold(x)$ 的相对误差被条件数 $c$ 控制.

误差 $Delta bold(b)$ 只取决于计算机的舍入误差和原始测量值 $bold(b)$, 而误差 $Delta bold(A)$ 还取决于消元过程. 小主元会使分解得到的 $bold(L)$ 和 $bold(U)$ 产生较大误差, 而 $(bold(L) + Delta bold(L)) (bold(U) + Delta bold(U)) = bold(A) + Delta bold(A)$. 当 $Delta bold(A)$ 或条件数很大时, 误差 $Delta bold(x)$ 很可能大于预期.

#hei[例 3]  当 $bold(A)$ 为对称矩阵时, 条件数 $c = norm(bold(A)) norm(bold(A)^(-1))$ 由特征值决定:

$ bold(A) = mat(delim: "[", 6, 0; 0, 2) quad "的范数为" 6, quad bold(A)^(-1) = mat(delim: "[", 1/6, 0; 0, 1/2) quad "的范数为" 1/2 . $

上述 $bold(A)$ 为对称正定矩阵, 其范数为 $lambda_max = 6$, $bold(A)^(-1)$ 的范数为 $1/lambda_min = 1/2$. 范数的乘积即条



#pagebreak()