#import "../theme.typ": *

#hei[23.] 已知 $bold(A) = mat(4,1;2,3)$, 请计算 $bold(A)^2$, $bold(A)^(-1)$ 和 $bold(A) - lambda bold(I)$ 以及它们的行列式. $lambda$ 取哪两个数值时 $det(bold(A) - lambda bold(I)) = 0$?

#hei[24.] 利用消元法将 $bold(A)$ 化简为 $bold(U)$ 后得分解式 $bold(A) = bold(L) bold(U)$:

#dmath[$ bold(A) = mat(3,3,4;6,8,7;-3,5,-9) = mat(1,0,0;2,1,0;-1,4,1) mat(3,3,4;0,2,-1;0,0,-1) = bold(L) bold(U) . $]

请计算 $bold(L)$, $bold(U)$, $bold(A)$, $bold(U)^(-1) bold(L)^(-1)$ 和 $bold(U)^(-1) bold(L)^(-1) bold(A)$ 的行列式.

#hei[25.] 设方阵 $bold(A)$ 的阶数大于 1, 若 $bold(A)$ 中 $(i,j)$ 元素的值是 $i j$, 请证明 $det bold(A) = 0$.

#hei[26.] 设方阵 $bold(A)$ 的阶数大于 2, 若 $bold(A)$ 中 $(i,j)$ 元素的值是 $i + j$, 请证明 $det bold(A) = 0$.

#hei[27.] 利用行变换来计算以下矩阵的行列式:

#dmath[$ bold(A) = mat(0,a,0;0,0,b;c,0,0), quad bold(B) = mat(0,a,0,0;0,0,b,0;0,0,0,c;d,0,0,0), quad bold(C) = mat(a,a,a;a,b,b;a,b,c) . $]

#hei[28.] 判断正误 (若结论正确请说明原因, 若结论错误请举出一个二阶的反例):

(a) 若 $bold(A)$ 是不可逆矩阵, 则 $bold(A) bold(B)$ 也是不可逆矩阵;

(b) $bold(A)$ 的行列式始终是主元的乘积;

(c) $bold(A) - bold(B)$ 的行列式等于 $det bold(A) - det bold(B)$;

(d) $bold(A) bold(B)$ 和 $bold(B) bold(A)$ 有相同的行列式.

#hei[29.] 以下关于投影矩阵 $bold(P)$ 的行列式 $det bold(P) = 1$ 的证明有什么错误?

#dmath[$ bold(P) = bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T, quad "因此" quad |bold(P)| = |bold(A)| 1/(|bold(A)^T| |bold(A)|) |bold(A)^T| = 1 . $]

#hei[30.] (微积分问题) 设 $bold(A) = mat(a,b;c,d)$, 证明 $ln(det bold(A))$ 的“偏导数” 是 $bold(A)^(-1)$!

#dmath[$ f(a,b,c,d) = ln(a d - b c), quad "得到" quad mat((partial f)/(partial a), (partial f)/(partial c); (partial f)/(partial b), (partial f)/(partial d)) = bold(A)^(-1) . $]

#hei[31.] (MATLAB) 希尔伯特矩阵 $op("hilb")(n)$ 的 $(i,j)$ 元素等于 $1/(i + j - 1)$. 请输出 $op("hilb")(1)$, $op("hilb")(2)$, $dots.c$, $op("hilb")(10)$ 的行列式. 希尔伯特矩阵很难处理! 请问 $op("hilb")(5)$ 的主元是什么?

#hei[32.] (MATLAB) 当 $n = 50, 100, 200, 400$ 时, $op("rand")(n)$ 和 $op("randn")(n)$ 生成的行列式 (用实验方法) 是什么? (MATLAB 中 “Inf” 是什么意思?)



#pagebreak()