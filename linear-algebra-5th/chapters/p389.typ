#import "../theme.typ": *

该项的二阶导数分别为 $2a, 2b, 2b, 2c$. 同理, 三元函数 $F(x, y, z)$ 对应的正定矩阵 $bold(S)$ 将是 $3 times 3$ 的.

#barHead[■ 要点回顾]

#hei[1.]　正定矩阵的特征值都是正数, 主元也都是正数.

#hei[2.]　利用左上角行列式, 可得一种快速判别二阶正定矩阵 $bold(S) = mat(a, b; b, c)$ 的方法: $a > 0$ 和 $a c - b^2 > 0$.

#hei[3.]　对上述 $bold(S)$, 能量 $x^T S x$ 的图形是从 $x = 0$ 向上开口的 “碗”:

#align(center)[除了在点 $(x, y) = (0, 0)$ 处, $x^T S x = a x^2 + 2 b x y + c y^2$ 都是正数.]

#hei[4.]　如果矩阵 $bold(A)$ 的各列线性无关, 那么 $bold(S) = bold(A)^T bold(A)$ 必然正定.

#hei[5.]　椭球面 $x^T S x = 1$ 的对称轴沿 $bold(S)$ 的特征向量的方向, 半轴长为 $1/sqrt(lambda)$.

#hei[6.]　如果在一点处 $(dif F)/(dif x) = (dif F)/(dif y) = 0$ 且二阶偏导数矩阵 (黑塞矩阵) 是正定的, 那么 $F(x, y)$ 在该点处有最小值.

#barHead[■ 范例解析]

#hei[6.5 A]　在关于对称矩阵的重要分解中, $bold(S) = bold(L) bold(D) bold(L)^T$ 源自主元和乘数, 而 $bold(S) = bold(Q) bold(Lambda) bold(Q)^T$ 源自特征值和特征向量. 试对 pascal(6), ones(6), hilb(6) 以及其他 MATLAB 的 gallery 函数所生成的测试矩阵进行 $n times n$ 矩阵正定性判定.

pascal(6) 是正定的, 因为它的所有主元均为 1 (见范例解析 2.6 A).

ones(6) 是半正定的, 因为它的特征值为 0, 0, 0, 0, 0, 6.

H=hilb(6) 是正定的, 尽管 eig(H) 表明其特征值十分接近零.

希尔伯特矩阵 $bold(H)$ 满足

#dmath[$ x^T H x = integral_0^1 (x_1 + x_2 s + dots.c + x_6 s^5)^2 dif s > 0, quad h_(i j) = 1/(i + j - 1). $]

rand(6)+rand(6)' 可能正定, 也可能不正定. 实验表明, 在生成的 20 000 个矩阵中仅有 2 个是正定的, 代码如下:

```matlab
n=20000; p=0;
for k=1:n, A=rand(6); p=p+all(eig(A+A')>0); end,
p/n
```

#hei[6.5 B]  分块对称矩阵 $bold(M) = mat(delim: "[", bold(A), bold(B); bold(B)^T, bold(C))$ 何时正定?

#pagebreak()
