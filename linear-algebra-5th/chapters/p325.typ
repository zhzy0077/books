#import "../theme.typ": *

#hei[6.1 C]　求出以下 $3 times 3$ 对称矩阵 $bold(S)$ 的特征值和特征向量:

$ mat(delim: #none, "对称矩阵,"; "奇异矩阵,"; "迹为" 1 + 2 + 1 = 4) quad bold(S) = mat(delim: "[", 1, -1, 0; -1, 2, -1; 0, -1, 1) . $

解　因为 $bold(S)$ 的各行元素相加均为零, 所以向量 $bold(x) = (1, 1, 1)$ 使得 $bold(S) bold(x) = bold(0)$. 这是特征值 $lambda = 0$ 对应的一个特征向量. 为了求出特征值 $lambda_2$ 和 $lambda_3$, 需要计算 $3 times 3$ 行列式:

$ det(bold(S) - lambda bold(I)) &= mat(delim: "|", 1 - lambda, -1, 0; -1, 2 - lambda, -1; 0, -1, 1 - lambda) \
&= (1 - lambda)(2 - lambda)(1 - lambda) - 2(1 - lambda) \
&= (1 - lambda)[(2 - lambda)(1 - lambda) - 2] \
&= (1 - lambda)(-lambda)(3 - lambda) . $

由三个因式得到 $lambda = 0, 1, 3$, 每个特征值对应一个特征向量 (或一条特征向量直线):

$ bold(x)_1 = mat(delim: "[", 1; 1; 1), quad bold(S) bold(x)_1 = 0 bold(x)_1 ; $

$ bold(x)_2 = mat(delim: "[", 1; 0; -1), quad bold(S) bold(x)_2 = 1 bold(x)_2 ; $

$ bold(x)_3 = mat(delim: "[", 1; -2; 1), quad bold(S) bold(x)_3 = 3 bold(x)_3 . $

再次注意, 当 $bold(S)$ 为对称矩阵时, 对应不同特征值的特征向量正交. 对于三阶方阵 $bold(S)$, 我们很幸运地求出了特征值 $lambda = 0, 1, 3$. 对于更高阶方阵, 推荐使用指令 $"eig"(bold(A))$ 来求特征值, 而不要使用行列式方法. 由指令 $[bold(X), bold(E)] = "eig"(bold(A))$ 得到的矩阵 $bold(X)$ 的各列为矩阵 $bold(A)$ 的单位特征向量.

#align(center, image("../assets/fig-p325-icon.png", width: 3.2%))

#xiti[习题集 6.1][

#hei[1.] 本章开头所举例子中, 矩阵 $bold(A)$ 的幂如下:

$ bold(A) = mat(delim: "[", 0.8, 0.3; 0.2, 0.7), quad bold(A)^2 = mat(delim: "[", 0.70, 0.45; 0.30, 0.55), quad bold(A)^infinity = mat(delim: "[", 0.6, 0.6; 0.4, 0.4) . $

求出这些矩阵的特征值. 所有幂有相同的特征向量.

]

#pagebreak()