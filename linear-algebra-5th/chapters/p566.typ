#import "../theme.typ": *

若 $bold(x)$ 为对称正定矩阵 $bold(A)$ 最大特征值所对应的特征向量, 则 $norm(bold(A) bold(x))/norm(bold(x))$ 等于 $lambda_max$. 进一步可知, 没有其他向量 $bold(x)$ 可以使这个比值更大: 矩阵 $bold(A) = bold(Q) bold(Lambda) bold(Q)^T$, 正交矩阵 $bold(Q)$ 和 $bold(Q)^T$ 保持长度不变, 则 $norm(bold(A) bold(x))/norm(bold(x))$ 的最大值即为 $norm(bold(Lambda) bold(x))/norm(bold(x))$ 的最大值. 因此, $bold(A)$ 的范数是对角矩阵 $bold(Lambda)$ 中的最大特征值.

#subsec[对称矩阵] 若 $bold(A)$ 是对称非正定矩阵, 则 $bold(A) = bold(Q) bold(Lambda) bold(Q)^T$ 仍然成立. 那么, 范数是 $|lambda_1|, |lambda_2|, dots.c, |lambda_n|$ 中的最大值. 由于范数是与长度相关的概念, 因此需要取绝对值: 对于特征向量 $bold(x)$, $norm(bold(A) bold(x)) = norm(lambda bold(x)) = |lambda| norm(bold(x))$. 显然, 最大比值对应的向量 $bold(x)$ 就是最大 $|lambda|$ 对应的特征向量.

#subsec[非对称矩阵] 若 $bold(A)$ 是非对称矩阵, 它的特征值可能无法度量比值 $norm(bold(A) bold(x))/norm(bold(x))$ 的真实大小. 此时, 范数可能大于任意特征值. 比如下面非对称矩阵 $bold(A)$ 满足 $lambda_1 = lambda_2 = 0$, 但 $bold(A)$ 的范数不为零:

#dmath[$ norm(bold(A)) > lambda_max, quad bold(A) = mat(0, 2; 0, 0) quad "的范数为" quad norm(bold(A)) = max_(bold(x) != 0) norm(bold(A) bold(x))/norm(bold(x)) = 2 . $]

例如, 由向量 $bold(x) = (0, 1)$ 可知 $bold(A) bold(x) = (2, 0)$, 长度比值 $norm(bold(A) bold(x))/norm(bold(x))$ 为 2, 这也是最大比值 $norm(bold(A))$, 但是 $bold(x)$ 不是 $bold(A)$ 的特征向量.

事实上, $bold(x) = (0, 1)$ 是对称矩阵 $bold(A)^T bold(A)$ 的特征向量, 而不是非对称矩阵 $bold(A)$ 的特征向量. 范数实际上是由 $bold(A)^T bold(A)$ 的最大特征值决定的:

#yaodian[
  #hei[矩阵 $bold(A)$ (无论是否对称) 的范数是 $lambda_max(bold(A)^T bold(A))$ 的算术平方根, 即]

  #dmath[$ norm(bold(A))^2 = max_(bold(x) != 0) norm(bold(A) bold(x))^2/norm(bold(x))^2 = max_(bold(x) != 0) (bold(x)^T bold(A)^T bold(A) bold(x))/(bold(x)^T bold(x)) = lambda_max(bold(A)^T bold(A)) . $ (4)]
]

考虑前述非对称矩阵的例子, 其中 $lambda_max(bold(A)) = 0$, $lambda_max(bold(A)^T bold(A)) = 4$: 由 $bold(A) = mat(0, 2; 0, 0)$ 可得 $bold(A)^T bold(A) = mat(0, 0; 0, 4)$, 则 $lambda_max = 4$, 因此范数 $norm(bold(A)) = sqrt(4)$.

#subsec[证] 对任意矩阵 $bold(A)$, 取向量 $bold(x)$ 为 $bold(A)^T bold(A)$ 最大的特征值 $lambda_max$ 对应的特征向量, 则 (4) 式中的比值为

#dmath[$ (bold(x)^T bold(A)^T bold(A) bold(x))/(bold(x)^T bold(x)) = (bold(x)^T (lambda_max) bold(x))/(bold(x)^T bold(x)) = lambda_max . $]

接下来证明任意 $bold(x)$ 均无法使这个比值大于 $lambda_max$. 设对称矩阵 $bold(A)^T bold(A)$ 的特征值为 $lambda_1, lambda_2, dots.c, lambda_n$, 对应于各特征值的标准正交特征向量为 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$. 任意 $bold(x)$ 可以表示为这些向量的

#pagebreak()