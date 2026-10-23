#import "../theme.typ": *

#hei[2.]　对于如下矩阵 $bold(A)$, 求出 $bold(A)^T bold(A), bold(V), bold(Sigma), u_i = (bold(A) v_i)/sigma_i$ 以及完整的 SVD:

#dmath[$ bold(A) = mat(delim: "[", 2, 2; -1, 1) = bold(U) bold(Sigma) bold(V)^T. $]

#hei[3.]　证明习题 2 中的 $bold(A) bold(A)^T$ 是对角矩阵. 它的特征向量 $u_1, u_2$ 为 \_\_\_\_, 特征值 $sigma_1^2, sigma_2^2$ 为 \_\_\_\_. $bold(A)$ 的各行相互正交, 但它们并非 \_\_\_\_. 因此 $bold(A)$ 的各列并不正交.

#hei[4.]　对如下矩阵 $bold(A)$, 计算 $bold(A)^T bold(A), bold(A) bold(A)^T$ 及其特征值、单位特征向量, 从而得到 $bold(V)$ 和 $bold(U)$:

#dmath[$ "长方针" quad bold(A) = mat(delim: "[", 1, 1, 0; 0, 1, 1). $]

验证 $bold(A) bold(V) = bold(U) bold(Sigma)$ (这决定了 $bold(U)$ 中元素的正负符号). 矩阵 $bold(Sigma)$ 与 $bold(A)$ 的形状相同, 均为 $2 times 3$ 的.

#hei[5.]　(a) 矩阵 $bold(A) = mat(delim: "[", 1, 1; 3, 3)$ 的行空间是 1 维的. 对 SVD, 求出行空间中的 $v_1$ 和列空间中的 $u_1$. 奇异值 $sigma_1$ 是什么? 为什么 $sigma_2$ 不存在?

(b) 找出 $bold(U)$ 中的 $v_2$ 和 $bold(V)$ 中的 $u_2$, 那么 $bold(A) = bold(U) bold(Sigma) bold(V)^T = u_1 sigma_1 v_1^T$ (只有一项).

#hei[6.]　利用矩阵 $bold(A)$ 的 SVD 证明 $bold(A)^T bold(A)$ 的特征值在 $bold(Sigma)^T bold(Sigma)$ 中, 而 $bold(A) bold(A)^T$ 的特征值在 $bold(Sigma) bold(Sigma)^T$ 中. 鉴于对角矩阵 $bold(Sigma)^T bold(Sigma)$ 和 $bold(Sigma) bold(Sigma)^T$ 有相同的非零元素, 故再次得到 $bold(A)^T bold(A)$ 和 $bold(A) bold(A)^T$ 有相同的非零特征值.

#hei[7.]　设 $(bold(A)^T bold(A)) v = sigma^2 v$, 两边左乘 $bold(A)$, 更变更括号位置, 得到 $(bold(A) bold(A)^T) bold(A) v = sigma^2 (bold(A) v)$. 由此可知, 如果 $v$ 是 $bold(A)^T bold(A)$ 的特征向量, 那么 \_\_\_\_ 是 $bold(A) bold(A)^T$ 的特征向量.

#hei[8.]　求出 $bold(A)^T bold(A)$ 的特征值和单位特征向量 $v_1, v_2$, 再求 $u_1 = (bold(A) v_1)/sigma_1$:

#dmath[$ bold(A) = mat(delim: "[", 1, 2; 3, 6), quad bold(A)^T bold(A) = mat(delim: "[", 10, 20; 20, 40), quad bold(A) bold(A)^T = mat(delim: "[", 5, 15; 15, 45). $]

证明 $u_1$ 为 $bold(A) bold(A)^T$ 的单位特征向量. 最后补全矩阵 $bold(U), bold(Sigma), bold(V)$:

#dmath[$ "SVD" quad mat(delim: "[", 1, 2; 3, 6) = mat(delim: "[", u_1, u_2) mat(delim: "[", sigma_1, ; , 0) mat(delim: "[", v_1, v_2)^T. $]

#hei[9.]　写出上题中矩阵 $bold(A)$ 的四个基本子空间的标准正交基.

#hei[10.]　(a) 为什么 $bold(A)^T bold(A)$ 的迹等于所有 $a_(i j)^2$ 之和? 例 3 中该值为 50;

(b) 对每个秩 1 矩阵, 为什么 $sigma_1^2$ 等于所有 $a_(i j)^2$ 之和?

#hei[11.]　对如下斐波那契矩阵 $bold(A)$, 求出 $bold(A)^T bold(A)$ 和 $bold(A) bold(A)^T$ 的特征值和单位特征向量:

#dmath[$ "斐波那契矩阵" quad bold(A) = mat(delim: "[", 1, 1; 1, 0). $]

写出每组 $bold(A) v = sigma u$, 然后构造奇异值分解, 并验证 $bold(A)$ 等于 $bold(U) bold(Sigma) bold(V)^T$.

#pagebreak()