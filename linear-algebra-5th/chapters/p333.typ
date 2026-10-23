#import "../theme.typ": *

相较于 #hei[A]，$bold(A)^2$ 的特征向量不变 (在 $bold(X)$ 中), 特征值均平方 (在 $bold(Lambda)^2$ 中).

为什么 $bold(A) bold(X) = bold(X) bold(Lambda)$? $n$ 阶矩阵 $bold(A)$ 左乘其特征向量, 也就是左乘 $bold(X)$ 的各列, 结果等于 $bold(X)$ 的各列乘对应的特征值. 例如, $bold(A) bold(X)$ 的第 1 列 $bold(A) bold(x)_1$ 等于 $lambda_1 bold(x)_1$:

#dmath[$ bold(A) "左乘" bold(X) quad quad bold(A) bold(X) = bold(A) mat(delim: "[", bold(x)_1, bold(x)_2, dots.c, bold(x)_n) = mat(delim: "[", lambda_1 bold(x)_1, lambda_2 bold(x)_2, dots.c, lambda_n bold(x)_n) , $]

接下来的技巧就是将 $bold(A) bold(X)$ 分解成 $bold(X)$ 左乘 $bold(Lambda)$:

#dmath[$ bold(X) "左乘" bold(Lambda) quad quad mat(delim: "[", lambda_1 bold(x)_1, lambda_2 bold(x)_2, dots.c, lambda_n bold(x)_n) = mat(delim: "[", bold(x)_1, bold(x)_2, dots.c, bold(x)_n) mat(delim: "[", lambda_1, , , ; , lambda_2, , ; , , dots.down, ; , , , lambda_n) = bold(X) bold(Lambda) . $]

注意这些矩阵相乘的次序! 于是结果为 $lambda_1$ 乘首列 $bold(x)_1, dots.c$, 如上式所示, 这样就实现了对角化. 然后可将 $bold(A) bold(X) = bold(X) bold(Lambda)$ 写成两种常用的形式:

#dingliC[$ bold(A) bold(X) = bold(X) bold(Lambda) quad "为" quad bold(X)^(-1) bold(A) bold(X) = bold(Lambda) quad "或" quad bold(A) = bold(X) bold(Lambda) bold(X)^(-1) . $]

矩阵 $bold(X)$ 具有逆矩阵, 这是由于它的各列 (即 $bold(A)$ 的特征向量) 已设定为线性无关. 没有 $n$ 个线性无关的特征向量, 不可能实现 $n$ 阶矩阵 $bold(A)$ 的对角化.

矩阵 $bold(Lambda)$ 与 $bold(A)$ 有相同的特征值 $lambda_1, lambda_2, dots.c, lambda_n$, 但特征向量通常是不同的. 原特征向量 $bold(x)_1, bold(x)_2, dots.c, bold(x)_n$ 的任务是对角化 $bold(A)$, 这些 $bold(X)$ 中的特征向量使得 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$. 读者很快将体会到它们的简约、重要以及涵义. 而 $k$ 次幂 $bold(A)^k = bold(X) bold(Lambda)^k bold(X)^(-1)$ 易于计算:

#dmath[$ bold(A)^k = (bold(X) bold(Lambda) bold(X)^(-1))(bold(X) bold(Lambda) bold(X)^(-1)) dots.c (bold(X) bold(Lambda) bold(X)^(-1)) = bold(X) bold(Lambda)^k bold(X)^(-1) . $]

#grid(columns: (auto, 1fr),
  align(horizon)[例 1 中\ $bold(A)$ 的幂],
  align(center)[$ mat(delim: "[", 1, 5; 0, 6)^k = mat(delim: "[", 1, 1; 0, 1) mat(delim: "[", 1^k, 0; 0, 6^k) mat(delim: "[", 1, -1; 0, 1) = mat(delim: "[", 1, 6^k - 1; 0, 6^k) = bold(A)^k . $],
)

上式右边当 $k = 1$ 时, 为 $bold(A)$; 当 $k = 0$ 时, 为 $bold(A)^0 = bold(I)$ (其中 $lambda^0 = 1$); 当 $k = -1$ 时, 为 $bold(A)^(-1)$. 还可以看到当 $k = 2$ 时, $bold(A)^2 = mat(delim: "[", 1, 35; 0, 36)$ 符合该公式. 例 2 中将再次使用 $bold(Lambda)$. 在此之前, 先介绍四个简单的注.

注 1　假设特征值 $lambda_1, lambda_2, dots.c, lambda_n$ 各不相同, 那么特征向量 $bold(x)_1, bold(x)_2, dots.c, bold(x)_n$ 线性无关 (见后续证明), 因此特征向量矩阵 $bold(X)$ 是可逆的. 从而任何没有重复特征值的矩阵均可对角化.

注 2　可用任意非零常数乘特征向量 (仍得特征向量). $bold(A)(c bold(x)) = lambda (c bold(x))$ 依然成立. 例 1 中, 可用 $sqrt(2)$ 去除 $bold(x) = (1,1)$, 由此产生单位特征向量. MATLAB 和几乎所有其他程序都生成单位特征向量.

#pagebreak()