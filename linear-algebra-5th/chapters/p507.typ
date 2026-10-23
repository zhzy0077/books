#import "../theme.typ": *

(7) 式中矩阵 $C$ 的对角元素 $c_1, c_2, c_3, c_4$ 由变系数 $c(x) = 1 + x$ 生成. 前面的两端固定边值问题对应矩阵的对角元素为 $1, 1, 1, 1$. 固定-自由边值问题对应矩阵

#eqnum($ A^T A = mat(delim: "[", 2,-1,,; -1,2,-1,; ,-1,2,-1; ,,-1,1), quad A^T C A = mat(delim: "[", c_1 + c_2, -c_2,,; -c_2, c_2 + c_3, -c_3,; ,-c_3,c_3 + c_4,-c_4; ,,-c_4,c_4) . $, 8)

#subsec[两端自由边值条件]

假设杆的两端都是自由的. 此时在两个端点 $x = 0$ 和 $x = 1$ 处都有 $(d u)/(d x) = 0$. 这意味着杆未被固定! 物理上这是不稳定的, 因为它可以在没有外力的作用下移动. 从数学角度而言, 所有的常值函数, 比如 $u = 1$, 都满足这两个边值条件. 从代数角度而言, 对应的矩阵 $A^T A$ 和 $A^T C A$ 是不可逆的:

#grid(columns: (1.3fr, 1fr, 1fr), align: (left + horizon, center + horizon, center + horizon),
  [两端自由的例子 #linebreak() 未知量 $u_0, u_1, u_2$ #linebreak() $Delta x = 0.5$],
  $ A^T A = mat(delim: "[", 1,-1,0; -1,2,-1; 0,-1,1), $,
  $ A^T C A = mat(delim: "[", c_0, -c_0,; -c_0, c_0 + c_1, -c_1; ,-c_1,c_1). $)

向量 $(1,1,1)$ 在上述两个矩阵的零空间中, 并且与连续模型的解 $u(x) = 1$ 相吻合. 但对于这种含外力的情形, 方程 $A^T A u = f$ 和 $A^T C A u = f$ 通常是不可解的.

在解释更多物理例子之前, 先给出如下六个矩阵:

#grid(columns: (1fr, 1fr), row-gutter: 10pt, column-gutter: 12pt,
  align(center)[$ bold(K)_0 = A_0^T A_0 = mat(delim: "[", 2,-1,; -1,2,-1; ,-1,2), $ #linebreak() 两端固定],
  align(center)[$ A_0^T C_0 A_0 = mat(delim: "[", c_1 + c_2, -c_2,; -c_2, c_2 + c_3, -c_3; ,-c_3,c_3 + c_4), $ #linebreak() 包含弹性常数],
  align(center)[$ bold(K)_1 = A_1^T A_1 = mat(delim: "[", 2,-1,; -1,2,-1; ,-1,1), $ #linebreak() 固定-自由],
  align(center)[$ A_1^T C_1 A_1 = mat(delim: "[", c_1 + c_2, -c_2,; -c_2, c_2 + c_3, -c_3; ,-c_3,c_3), $ #linebreak() 包含弹性系数],
  align(center)[$ bold(K)_"奇异" = mat(delim: "[", 1,-1,; -1,2,-1; ,-1,1), $ #linebreak() 两端自由],
  align(center)[$ bold(K)_"循环" = mat(delim: "[", 2,-1,-1; -1,2,-1; -1,-1,2). $ #linebreak() 周期性: $u(0) = u(1)$])

其中, 三对角矩阵 $bold(K)_0$ 在书中多次出现, 现在我们看到了它的应用. 这些矩阵都具有对称性, 并且前 4 个矩阵还具有正定性.

为了方便起见, 也可以认为矩阵 $bold(K)_0, bold(K)_1, bold(K)_"奇异"$ 和 $bold(K)_"循环"$ 都包含乘积因子 $C = I$, 这意味着所有“弹性系数”都为 $c_i = 1$. 这里给出 $A_0^T C_0 A_0$ 和 $A_1^T C_1 A_1$ 的具体形式是为了



#pagebreak()