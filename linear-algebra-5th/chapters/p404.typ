#import "../theme.typ": *

#hei[8.]　在 (3) 式中, $bold(A) bold(V) = bold(U) bold(Sigma)$ 的两列为 $bold(A) v_1 = sigma_1 u_1$ 和 $bold(A) v_2 = sigma_2 u_2$. 由此对 $bold(A) = mat(delim: "[", 1, 0; 1, 1)$, 希望有

$ bold(A) v_1 = mat(delim: "[", 1, 0; 1, 1) mat(delim: "[", sigma_1; 1) = sigma_1 mat(delim: "[", 1; sigma_1), $

$ mat(delim: "[", 1, 0; 1, 1) mat(delim: "[", 1; -sigma_1) = sigma_2 mat(delim: "[", sigma_1; -1). $

前者要求 $sigma_1 + 1 = sigma_1^2$, 而后者要求 $1 - sigma_1 = -sigma_2$. 这些要求可行吗?

#hei[9.]　MATLAB 指令 A=rand(20, 40) 和 B=randn(20, 40) 生成 $20 times 40$ 随机矩阵: $bold(A)$ 中元素服从 0 到 1 之间的均匀分布, $bold(B)$ 中元素服从 “钟形” 正态分布. 利用 svd 指令, 求出并画出上述矩阵的奇异值 $sigma_1, sigma_2, dots.c, sigma_20$. 为什么它们均有 20 个奇异值?

#pagebreak()