#import "../theme.typ": *

#hei[17.] 对角元素之和 (迹) 等于特征值之和:

$ bold(A) = mat(delim: "[", a, b; c, d) quad "有" quad det(bold(A) - lambda bold(I)) = lambda^2 - (a + d) lambda + a d - b c = 0 . $

二次方程求根公式给出特征值 $lambda = 1/2(a + d + sqrt(\_\_\_\_))$ 以及 $lambda = \_\_\_\_$, 它们的和是 \_\_\_\_. 如果 $2 times 2$ 矩阵 $bold(A)$ 的特征值为 $lambda_1 = 3$ 和 $lambda_2 = 4$, 那么 $det(bold(A) - lambda bold(I)) = \_\_\_\_.$

#hei[18.] 如果 $2 times 2$ 矩阵 $bold(A)$ 的特征值为 $lambda_1 = 4$ 和 $lambda_2 = 5$, 那么

$ det(bold(A) - lambda bold(I)) = (lambda - 4)(lambda - 5) = lambda^2 - 9 lambda + 20 . $

找出三个 $2 times 2$ 矩阵 $bold(A)$, 使其满足 $a + d = 9$ 且行列式为 20 以及特征值为 $lambda = 4, 5$.

#hei[19.] 已知 $3 times 3$ 矩阵 $bold(B)$ 的特征值为 $0, 1, 2$, 由此足以求出以下数值中的哪三个 (可求出时给出答案):

#sub[(a) $bold(B)$ 的秩;]
#sub[(b) $bold(B)^T bold(B)$ 的行列式;]
#sub[(c) $bold(B)^T bold(B)$ 的特征值;]
#sub[(d) $(bold(B)^2 + bold(I))^(-1)$ 的特征值.]
#hei[20.] 确定 $bold(A)$ 和 $bold(C)$ 的最后一行, 使其特征值分别为 $4, 7$ 和 $1, 2, 3$:

$ "友矩阵" quad bold(A) = mat(delim: "[", 0, 1; *, *) , quad bold(C) = mat(delim: "[", 0, 1, 0; 0, 0, 1; *, *, *) . $

#hei[21.] $bold(A)$ 的特征值与 $bold(A)^T$ 的特征值相同, 这是因为 $det(bold(A) - lambda bold(I))$ 等于 $det(bold(A)^T - lambda bold(I))$. 该结论成立则是由于 \_\_\_\_. 举例说明 $bold(A)$ 与 $bold(A)^T$ 的特征向量并不相同.

#hei[22.] 构造任意 $3 times 3$ 马尔可夫矩阵 $bold(M)$, 使其元素均为正数, 且各列元素之和为 1. 证明 $bold(M)^T (1, 1, 1) = (1, 1, 1)$. 根据习题 21, $lambda = 1$ 也是 $bold(M)$ 的特征值. 挑战: 若奇异的 $3 times 3$ 马尔可夫矩阵的迹为 $1/2$, 则该矩阵的特征值 $lambda$ 是多少?

#hei[23.] 求出三个 $2 times 2$ 矩阵, 使其特征值为 $lambda_1 = lambda_2 = 0$. 此时迹与行列式均为零. 将这些矩阵均记为 $bold(A)$, 则 $bold(A)$ 未必是零矩阵, 但请验证 $bold(A)^2 = bold(O)$.

#hei[24.] 以下矩阵 $bold(A)$ 为秩 1 的奇异矩阵, 求出 $bold(A)$ 的三个特征值 $lambda$ 和三个特征向量:

$ bold(A) = mat(delim: "[", 1; 2; 1) mat(delim: "[", 2, 1, 2) = mat(delim: "[", 2, 1, 2; 4, 2, 4; 2, 1, 2) . $

#hei[25.] 设 $bold(A)$ 与 $bold(B)$ 有相同的特征值 $lambda_1, lambda_2, dots.c, lambda_n$ 以及相同的线性无关特征向量 $bold(x)_1, bold(x)_2, dots.c, bold(x)_n$, 则有 $bold(A) = bold(B)$. 证明思路: 任意向量 $bold(x)$ 为线性组合 $c_1 bold(x)_1 + c_2 bold(x)_2 + dots.c + c_n bold(x)_n$, 分别计算 $bold(A) bold(x)$ 与 $bold(B) bold(x)$.

#pagebreak()