#import "../theme.typ": *

第 8.3 节展示了 $bold(J)$ 和 $bold(J)^k$ 是如何由具有重复特征值的 “子块” 组成的:

#dmath[$ bold(J) "中的" 2 times 2 "子块矩阵的幂为" quad mat(delim: "[", lambda, 1; 0, lambda)^k = mat(delim: "[", lambda^k, k lambda^(k-1); 0, lambda^k). $]

如果 $|lambda| < 1$, 那么因子 $k$ 的增大被衰减的因子 $lambda^(k-1)$ 抵消, 因此上述矩阵的幂将趋于零矩阵. 这一结论适用于所有的若尔当块, 即

无论矩阵 $bold(B)$ 是否可对角化, 当 $rho = |lambda|_max < 1$ 时, $bold(B)^k -> bold(O)$ 并且收敛速度取决于 $rho$.

#subsec[雅可比迭代法对比高斯-赛德尔迭代法]

现在通过分解矩阵 $bold(A)$ 来求解一个特殊的 $2 times 2$ 问题, 读者要特别注意谱半径 $|lambda|_max$.

#eqnum($ bold(A) bold(x) = bold(b) quad cases(2u - v = 4, -u + 2v = -2) quad "的真解为" quad mat(delim: "[", u; v) = mat(delim: "[", 2; 0). $, 6)

第一种分解使用雅可比迭代法. 将矩阵 $bold(A)$ 的对角元素放到左边 (即得矩阵 $bold(S)$), 并将矩阵 $bold(A)$ 的非对角元素移到右边 (即得矩阵 $bold(T)$), 则可以构造迭代格式:

#boxEq[#hei[雅可比迭代]][$bold(S) bold(x)_(k+1) = bold(T) bold(x)_k + bold(b)$, #h(1.5em) $cases(2u_(k+1) = v_k + 4, 2v_(k+1) = u_k - 2).$]

将初值设置为 $u_0 = v_0 = 0$, 迭代一步可得 $u_1 = 2$ 以及 $v_1 = -1$. 继续迭代下去可得

#dmath[$ mat(delim: "[", 0; 0), mat(delim: "[", 2; -1), mat(delim: "[", 3/2; 0), mat(delim: "[", 2; -1/4), mat(delim: "[", 15/8; 0), mat(delim: "[", 2; -1/16), dots.c, "趋于" mat(delim: "[", 2; 0). $]

由此可见迭代值是收敛的. 在第 1, 3, 5 步迭代中 $v$ 对应的值为 $-1, -1/4, -1/16$, 可以看到它的值每迭代两步变为原来的四分之一. 误差方程为 $bold(S) bold(e)_(k+1) = bold(T) bold(e)_k$:

#eqnumL([#hei[误差方程]], $ mat(delim: "[", 2, 0; 0, 2) bold(e)_(k+1) = mat(delim: "[", 0, 1; 1, 0) bold(e)_k , quad "即" quad bold(e)_(k+1) = mat(delim: "[", 0, 1/2; 1/2, 0) bold(e)_k . $, 7)

最后的矩阵 $bold(B) = bold(S)^(-1) bold(T)$ 的特征值为 $1/2$ 和 $-1/2$, 因此谱半径为 $rho(bold(B)) = 1/2$:

#dmath[$ bold(B) = bold(S)^(-1) bold(T) = mat(delim: "[", 0, 1/2; 1/2, 0) "的谱半径" |lambda|_max = 1/2, quad "且" quad mat(delim: "[", 0, 1/2; 1/2, 0)^2 = mat(delim: "[", 1/4, 0; 0, 1/4). $]

#pagebreak()