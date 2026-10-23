#import "../theme.typ": *

#h(1.5em) (b) 如果 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$, 那么 $bold(A)^3 = (quad)(quad)(quad)$, $bold(A)^(-1) = (quad)(quad)(quad)$.

#hei[2.] 设矩阵 $bold(A)$ 的特征值为 $lambda_1 = 2$ 和 $lambda_2 = 5$, 对应的特征向量分别为 $bold(x)_1 = mat(delim: "[", 1; 0)$ 和 $bold(x)_2 = mat(delim: "[", 1; 1)$, 利用 $bold(X) bold(Lambda) bold(X)^(-1)$ 求出 $bold(A)$. 这样得到的 $bold(A)$ 是唯一的, 因为不会有别的矩阵也具有上述同样的 $lambda_i$ 和 $bold(x)_i$.

#hei[3.] 设矩阵 $bold(A) = bold(X) bold(Lambda) bold(X)^(-1)$. $bold(A) + 2 bold(I)$ 的特征值矩阵是什么? 它的特征向量矩阵是什么? 验证: $bold(A) + 2 bold(I) = (quad)(quad)(quad)^(-1)$.

#hei[4.] 判断正误: 如果 $bold(X)$ 的各列 (即 $bold(A)$ 的特征向量) 线性无关, 那么

#h(1.5em) (a) $bold(A)$ 可逆; #h(1.5em) (b) $bold(A)$ 可对角化; #h(1.5em) (c) $bold(X)$ 可逆; #h(1.5em) (d) $bold(X)$ 可对角化.

#hei[5.] 如果 $bold(A)$ 的特征向量是 $bold(I)$ 的各列, 那么 $bold(A)$ 是一个 \_\_\_\_ 矩阵. 如果特征向量矩阵 $bold(X)$ 为三角形矩阵, 那么 $bold(X)^(-1)$ 就是三角形矩阵. 证明 $bold(A)$ 也是三角形矩阵.

#hei[6.] 描述可将如下矩阵 $bold(A)$ 对角化的所有矩阵 $bold(X)$ (即求出全部特征向量):

$ bold(A) = mat(delim: "[", 4, 0; 1, 2) , $

然后描述可将 $bold(A)^(-1)$ 对角化的所有矩阵.

#hei[7.] 写出特征向量为 $mat(delim: "[", 1; 1)$ 和 $mat(delim: "[", 1; -1)$ 的矩阵的一般形式.

习题 8—10 是关于斐波那契数和 Gibonacci#footnote[译者注: 这是作者仿照 Fibonacci (斐波那契) 造的词.] 数 $G_k$ 的.

#hei[8.] 求出下式中的 $bold(X)^(-1)$, 由此完成斐波那契矩阵的对角化:

$ bold(A) = mat(delim: "[", 1, 1; 1, 0) = mat(delim: "[", lambda_1, lambda_2; 1, 1) mat(delim: "[", lambda_1, 0; 0, lambda_2) mat(delim: "[", , ; , ) . $

计算乘积 $bold(X) bold(Lambda)^k bold(X)^(-1) mat(delim: "[", 1; 0)$, 所得向量的第二个分量就是第 $k$ 个斐波那契数 $F_k = (lambda_1^k - lambda_2^k)/(lambda_1 - lambda_2)$.

#hei[9.] 设 $G_(k+2)$ 是它前面两数 $G_(k+1)$ 和 $G_k$ 的平均数:

#grid(columns: (auto, auto),
  align(horizon)[$ cases(
    G_(k+2) = 1/2 G_(k+1) + 1/2 G_k,
    G_(k+1) = G_(k+1),
  ) $],
  align(horizon)[$ "写成" quad mat(delim: "[", G_(k+2); G_(k+1)) = bold(A) mat(delim: "[", G_(k+1); G_k) . $],
)

#h(1.5em) (a) 写出矩阵 $bold(A)$, 并求出 $bold(A)$ 的特征值与特征向量;

#h(1.5em) (b) 当 $n -> oo$ 时, 求矩阵 $bold(A)^n = bold(X) bold(Lambda)^n bold(X)^(-1)$ 的极限;



#pagebreak()