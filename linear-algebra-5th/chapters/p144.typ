#import "../theme.typ": *

#align(center)[(a) $bold(A) = mat(1,0;9,3)$;  (b) $bold(A) = mat(1,c;c,0)$.]

#hei[2.] 请验证 $(bold(A) bold(B))^T = bold(B)^T bold(A)^T$, 但是二者不等于 $bold(A)^T bold(B)^T$:

#align(center)[$ bold(A) = mat(1,0;2,1) , quad bold(B) = mat(1,3;0,1) , quad bold(A) bold(B) = mat(1,3;2,7) . $]

请证明 $bold(A) bold(A)^T$ 也不等于 $bold(A)^T bold(A)$, 但这两个矩阵都是 \_\_\_\_.

#hei[3.] (a) 请问矩阵 $((bold(A) bold(B))^(-1))^T$ 可由 $(bold(A)^(-1))^T$ 和 $(bold(B)^(-1))^T$ 按照什么顺序相乘来表示?

(b) 若 $bold(U)$ 是上三角形矩阵, 则 $(bold(U)^(-1))^T$ 是 \_\_\_\_ 三角形矩阵.

#hei[4.] 试证明对于非零矩阵 $bold(A)$ 必有 $bold(A)^T bold(A) != bold(O)$, 但是可能会有 $bold(A)^2 = bold(O)$.

#hei[5.] (a) 设 $bold(x)$ 为 $m$ 维列向量, $bold(y)$ 为 $n$ 维列向量, $bold(A)$ 为 $m times n$ 矩阵, 则 $bold(x)^T bold(A) bold(y)$ 结果是什么数字? 例如,

#align(center)[$ bold(x)^T bold(A) bold(y) = mat(0,1) mat(1,2,3;4,5,6) mat(0;1;0) = "\_\_\_\_ ;" $]

(b) 上述运算可看成行向量 $bold(x)^T bold(A) = $ \_\_\_\_ 左乘列向量 $bold(y) = (0, 1, 0)$;

(c) 上述运算也可看成行向量 $bold(x)^T = mat(0,1)$ 左乘列向量 $bold(A) bold(y) = $ \_\_\_\_.

#hei[6.] 分块矩阵 $bold(M) = mat(bold(A), bold(B); bold(C), bold(D))$ 的转置矩阵是 $bold(M)^T = $ \_\_\_\_, 并举例进行验证. 当 $bold(A)$, $bold(B)$, $bold(C)$, $bold(D)$ 满足什么条件时, $bold(M)$ 是一个对称的分块矩阵?

#hei[7.] 判断正误:

(a) 分块矩阵 $mat(bold(O), bold(A); bold(A), bold(O))$ 一定是对称矩阵;

(b) 若 $bold(A)$ 和 $bold(B)$ 是对称矩阵, 则乘积 $bold(A) bold(B)$ 也是对称矩阵;

(c) 若 $bold(A)$ 不是对称矩阵, 则 $bold(A)^(-1)$ 也不是对称矩阵;

(d) 当 $bold(A), bold(B), bold(C)$ 是对称矩阵时, $(bold(A) bold(B) bold(C))^T = bold(C) bold(B) bold(A)$.

习题 8—15 是关于置换矩阵的.

#hei[8.] 请分析为什么会有 $n!$ 个 $n$ 阶置换矩阵?

#hei[9.] 若 $bold(P)_1$ 和 $bold(P)_2$ 是置换矩阵, 证明 $bold(P)_1 bold(P)_2$ 也是置换矩阵, 即是 $bold(I)$ 的行按照一定顺序排列所得. 举例说明存在置换矩阵 $bold(P)_1, bold(P)_2, bold(P)_3, bold(P)_4$ 使得 $bold(P)_1 bold(P)_2 != bold(P)_2 bold(P)_1$ 以及 $bold(P)_3 bold(P)_4 = bold(P)_4 bold(P)_3$.



#pagebreak()
