#import "../theme.typ": *

#subsec[估计量 $hat(bold(x))$ 的方差]

还有一个重点: 对一组特定的测量值 $bold(b)$ 而言, 重要的不是求出最优解 $hat(bold(x))$, 这只对应一个样本! 真正的目标是了解整个试验的可靠性, 这需要用估计量 $hat(bold(x))$ 的方差来度量 (方差通常用于度量可靠性). 首先, $bold(b)$ 的均值为零向量给出了 $hat(bold(x))$ 的均值为零向量; 然后, 结合输入 $bold(b)$ 的协方差矩阵 $bold(V)$ 与输出 $hat(bold(x))$ 的协方差矩阵 $bold(W)$ 可构造一个非常优美的公式:

#eqnumL([$hat(bold(x))$ 的协方差矩阵 $bold(W)$], $"E"[(hat(bold(x)) - bold(x))(hat(bold(x)) - bold(x))^T] = (bold(A)^T bold(V)^(-1) bold(A))^(-1) .$, 13)

可能的最小方差来自可能的最优加权矩阵, 即 $bold(V)^(-1)$.

这个关键公式是第 12.2 节知识的一个完美应用. 若 $bold(b)$ 的协方差矩阵为 $bold(V)$, 则 $hat(bold(x)) = bold(L) bold(b)$ 的协方差矩阵是 $bold(L) bold(V) bold(L)^T$. (12) 式表明 $bold(L)$ 是 $(bold(A)^T bold(V)^(-1) bold(A))^(-1) bold(A)^T bold(V)^(-1)$, 代入 $bold(L) bold(V) bold(L)^T$ 中可得 (13) 式:

#dmath[$ bold(L) bold(V) bold(L)^T = [(bold(A)^T bold(V)^(-1) bold(A))^(-1) bold(A)^T bold(V)^(-1)] bold(V) [bold(V)^(-1) bold(A)(bold(A)^T bold(V)^(-1) bold(A))^(-1)] = (bold(A)^T bold(V)^(-1) bold(A))^(-1). $]

这就是最优估计量 $hat(bold(x))$ 的协方差矩阵 $bold(W)$. 下面给出有关例题.

#hei[例 1] 设医生对心率 $x$ 进行了三次测量 ($m = 3, n = 1$):

#dmath[$ cases(x = b_1, x = b_2, x = b_3,) quad "即" quad bold(A) bold(x) = bold(b), $]

其中

#dmath[$ bold(A) = mat(delim: "[", 1; 1; 1), quad bold(V) = mat(delim: "[", sigma_1^2, 0, 0; 0, sigma_2^2, 0; 0, 0, sigma_3^2), $]

方差是 $sigma_1^2 = 1/9, sigma_2^2 = 1/4$ 和 $sigma_3^2 = 1$. 由方差可知, 与 $b_3$ 相比, $b_2$ 和 $b_1$ 更可靠: 测量时, 被测者越来越紧张. 这三次测量都包含了一些有效信息, 所以将它们都加入最优 (加权) 估计 $hat(bold(x))$:

#dmath[$ bold(V)^(-1\/2) bold(A) hat(bold(x)) = bold(V)^(-1\/2) bold(b) quad "是" quad cases(3 x = 3 b_1, 2 x = 2 b_2, 1 x = 1 b_3,) $]

进一步得到 $bold(A)^T bold(V)^(-1) bold(A) hat(bold(x)) = bold(A)^T bold(V)^(-1) bold(b)$, 即

#dmath[$ [1 quad 1 quad 1] mat(delim: "[", 9, 0, 0; 0, 4, 0; 0, 0, 1) mat(delim: "[", 1; 1; 1) hat(bold(x)) = [1 quad 1 quad 1] mat(delim: "[", 9, 0, 0; 0, 4, 0; 0, 0, 1) mat(delim: "[", b_1; b_2; b_3), $]

因此,

#dmath[$ hat(bold(x)) = (9 b_1 + 4 b_2 + b_3)/14 quad "是" b_1, b_2, b_3 "的加权平均." $]

#pagebreak()