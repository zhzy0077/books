#import "../theme.typ": *

#dmath[$ [bold(A) quad bold(I)] = mat(2, 0, 1, 0; 2, 1, 0, 1) -> mat(2, 0, 1, 0; 0, 1, 2, 1) $]

#dmath[$ "第 1 行乘以" 2^(-1) equiv 2 (mod 3) -> mat(1, 0, 2, 0; 0, 1, 2, 1) = [bold(I) quad bold(A)^(-1)]. $]

上式表明, 此时恰有 $bold(A)^(-1) equiv bold(A) (mod 3)$! $bold(A)$ 左乘 $bold(A)$ 确实给出了 mod 3 意义下的单位矩阵:

#dmath[$ bold(A) bold(A)^(-1) equiv bold(A)^2 = mat(2, 0; 2, 1) mat(2, 0; 2, 1) = mat(4, 0; 6, 1) equiv mat(1, 0; 0, 1) (mod 3). $]

$bold(A)$ 的行列式为 2, 而由第 5.3 节中的代数余子式公式也可得出 $bold(A)^(-1) equiv bold(A) (mod 3)$:

#dmath[$ mat(2, 0; 2, 1)^(-1) = 2^(-1) mat(1, -0; -2, 2) equiv 2 mat(1, -0; -2, 2) equiv mat(2, 0; 2, 1) (mod 3). $]

#dingli[#hei[定理]  在 mod $p$ 意义下, $bold(A)^(-1)$ 存在当且仅当 $(det bold(A))^(-1)$ 存在.]

上述要求相当于: det $bold(A)$ 和 $p$ 没有公因数.

#subsec[使用希尔密码算法加密]

原始明文使用字母 A 到 Z, 于是取 $p = 26$. 希尔选取 $n times n$ 加密矩阵 $bold(E)$, 使得 det $bold(E)$ 不能被 2 或 13 整除. 那么数 det $bold(E)$ 有 mod 26 意义下的逆, 矩阵 $bold(E)$ 也是如此. 逆矩阵 $bold(E)^(-1) equiv bold(D) (mod 26)$ 将是解码信息的解密矩阵.

现在将信息的每个字母转换为从 0 到 25 的整数. 通常令 A = 0, B = 1, ..., Z = 25, 这是可以接受的, 因为运用矩阵会使所得密文不易被破解. 希尔密码算法大致步骤如下:

(1) 忽略空格并将信息划分成大小为 $n$ 的块 $bold(v)_1, bold(v)_2, dots.c$;

(2) 然后将每个信息块在 mod $p$ 意义下左乘加密矩阵 $bold(E)$;

(3) 编码信息即为 $bold(E) bold(v)_1, bold(E) bold(v)_2, dots.c$ (后续步骤省略, 读者应该知道解码器会怎么做).

Spikler 教授文章中的例子为

#dmath[$ bold(D) = bold(E)^(-1) = mat(2, 3, 15; 5, 8, 12; 1, 13, 4)^(-1) equiv mat(10, 19, 16; 4, 23, 7; 17, 5, 19) (mod 26), $]

#dmath[$ det bold(E) = 583 equiv 11 (mod 26). $]

当然, 密码破译者不知道矩阵 $bold(E)$ 或 $bold(D)$. 一般而言, 块大小 $n$ 也是未知的. 但是在希尔的想法里 $n$ 并不大, 因此当今的计算机可以快速发现 $bold(E)$ 和 $bold(D)$.

作者不确定如果进行以下处理, 希尔密码是否会变得非常难以破解: 选择非常大的矩阵和大素数 $p$ 做第一次编码, 再使用不同的块大小 $n_2$、大矩阵 $bold(E)_2$ 和大素数 $p_2$ 对已编码的信息做第二次编码.

#pagebreak()