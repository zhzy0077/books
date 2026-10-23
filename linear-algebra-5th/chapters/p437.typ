#import "../theme.typ": *

#hei[21.]　由 $bold(A)$ 与 $bold(A)^+$ 验证 $bold(A)^+ bold(A)$, 且 $(bold(A)^+ bold(A))^2 = bold(A)^+ bold(A)$ 为投影矩阵:

#dmath[$ bold(A) = sum_(i=1)^r sigma_i bold(u)_i bold(v)_i^T, quad bold(A)^+ = sum_(i=1)^r (bold(v)_i bold(u)_i^T)/sigma_i, quad bold(A)^+ bold(A) = sum_(i=1)^r bold(v)_i bold(v)_i^T, quad bold(A) bold(A)^+ = sum_(i=1)^r bold(u)_i bold(u)_i^T. $]

#hei[22.]　矩阵 $bold(A)$ 的每组奇异向量 $bold(v)$ 与 $bold(u)$ 满足 $bold(A) bold(v) = sigma bold(u)$ 与 $bold(A)^T bold(u) = sigma bold(v)$. 证明分块对称矩阵 $bold(M) = mat(delim: "[", bold(O), bold(A)^T; bold(A), bold(O))$ 的特征向量为向量 $mat(delim: "[", bold(v); bold(u))$. $bold(A)$ 的奇异值分解等价于对称矩阵 $bold(M)$ 的对角化分解.

#pagebreak()