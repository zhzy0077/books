#import "../theme.typ": *

#hei[19.] 请说明如下所示的 4 阶范德蒙德行列式中为什么包含 $x^3$ 但是不包含 $x^4$ 或 $x^5$:

#dmath[$ V_4 = det mat(delim: "[", 1, a, a^2, a^3; 1, b, b^2, b^3; 1, c, c^2, c^3; 1, x, x^2, x^3) . $]

当 $x = $ \_\_\_\_, \_\_\_\_ 或 \_\_\_\_ 时, 行列式 $V_4$ 等于零. 元素 $x^3$ 的代数余子式是 $V_3 = (b-a)(c-a)(c-b)$, 则

#dmath[$ V_4 = (b-a)(c-a)(c-b)(x-a)(x-b)(x-c) . $]

#hei[20.] 请首先计算 $G_2$ 和 $G_3$, 然后利用行变换消元来计算 $G_4$:

#dmath[$ G_2 = mat(delim: "|", 0, 1; 1, 0), quad G_3 = mat(delim: "|", 0, 1, 1; 1, 0, 1; 1, 1, 0), quad G_4 = mat(delim: "|", 0, 1, 1, 1; 1, 0, 1, 1; 1, 1, 0, 1; 1, 1, 1, 0) . $]

通过已知信息能够预测 $G_n$ 吗?

#hei[21.] 计算如下 “1,3,1” 三对角矩阵的行列式 $S_1, S_2, S_3$, 请通过斐波那契数列来猜测并验证 $S_4$:

#dmath[$ S_1 = |3|, quad S_2 = mat(delim: "|", 3, 1; 1, 3), quad S_3 = mat(delim: "|", 3, 1, 0; 1, 3, 1; 0, 1, 3) . $]

#hei[22.] 将习题 21 中矩阵左上角的元素 3 换成 2, 请说明为什么这相当于从行列式 $S_n$ 中减去 $S_(n-1)$? 请证明新矩阵的行列式 $2,5,13$ 变成了斐波那契数列的一部分 (始终是 $F_(2n+1)$).

习题 23—26 是关于分块矩阵和分块行列式的.

#hei[23.] 将 4 阶方阵分割成 $2 times 2$ 分块矩阵后, 并不能总是直接利用子块来计算行列式:

#dmath[$ mat(delim: "|", bold(A), bold(B); bold(O), bold(D)) = |bold(A)| |bold(D)|, quad "但是" quad mat(delim: "|", bold(A), bold(B); bold(C), bold(D)) != |bold(A)| |bold(D)| - |bold(C)| |bold(B)| . $]

#sub[(a) 请说明为什么第一个等式是正确的? $bold(B)$ 似乎并未参与计算;]

#sub[(b) 请举例证明当子块 $bold(C)$ 不是零矩阵时, 第二个等式不成立;]

#sub[(c) 请举例证明第二个行列式也不等于 $det(bold(A) bold(D) - bold(C) bold(B))$.]

#hei[24.] 根据分块矩阵乘法运算可知, 当 $bold(A) = bold(L) bold(U)$ 时, 左上角的子块 $bold(A)_k = bold(L)_k bold(U)_k$:

#dmath[$ bold(A) = mat(delim: "[", bold(A)_k, *; *, *) = mat(delim: "[", bold(L)_k, bold(O); *, *) mat(delim: "[", bold(U)_k, *; bold(O), *) . $]

#pagebreak()