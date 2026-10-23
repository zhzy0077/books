#import "../theme.typ": *

#sub[(a) 若 $bold(A)$ 是 $2 times 4$ 矩阵, $bold(B)$ 是 $4 times 7$ 矩阵, $bold(C)$ 是 $7 times 10$ 矩阵, 请问在计算时一般会采用 $(bold(A) bold(B)) bold(C)$ 还是 $bold(A) (bold(B) bold(C))$?]

#sub[(b) 对于 $N$ 维向量 $bold(u), bold(v), bold(w)$, 在计算时是采用 $(bold(u)^T bold(v)) bold(w)^T$ 还是 $bold(u)^T (bold(v) bold(w)^T)$?]

#sub[(c) 当 $n^(-1) + q^(-1) < m^(-1) + p^(-1)$ 时, 证明计算 $(bold(A) bold(B)) bold(C)$ 更快捷 (提示: 可利用乘法次数除以 $m n p q$).]

#ti[37.][请利用矩阵 $bold(B)$ 的列向量 $bold(b)_1, bold(b)_2, dots.c, bold(b)_n$ 来证明 $(bold(A) bold(B)) bold(C) = bold(A) (bold(B) bold(C))$. 首先假设 $bold(C)$ 只有一列 $bold(c)$, 分量为 $c_1, c_2, dots.c, c_n$:]

$bold(A) bold(B)$ 的列是 $bold(A) bold(b)_1, bold(A) bold(b)_2, dots.c, bold(A) bold(b)_n$, 故

#dmath[$ (bold(A) bold(B)) bold(c) = c_1 bold(A) bold(b)_1 + c_2 bold(A) bold(b)_2 + dots.c + c_n bold(A) bold(b)_n; $]

$bold(B) bold(c)$ 仅有一列 $c_1 bold(b)_1 + c_2 bold(b)_2 + dots.c + c_n bold(b)_n$, 故

#dmath[$ bold(A) (bold(B) bold(c)) = bold(A) (c_1 bold(b)_1 + c_2 bold(b)_2 + dots.c + c_n bold(b)_n) . $]

由线性性质可得以上两个和相等, 得证 $(bold(A) bold(B)) bold(c) = bold(A) (bold(B) bold(c))$. 结论对于 $bold(C)$ 的其他所有 #underline(h(3em)) 都成立, 因此 $(bold(A) bold(B)) bold(C) = bold(A) (bold(B) bold(C))$. 将问题联系逆矩阵有:

若 $bold(B) bold(A) = bold(I)$ 且 $bold(A) bold(C) = bold(I)$, 证明 $bold(A)$ 的左逆 $bold(B)$ 等于其右逆 $bold(C)$.

#ti[38.][(a) 设 $bold(A)$ 的行是 $bold(a)_1^T, bold(a)_2^T, dots.c, bold(a)_m^T$. 分析 $bold(A)^T bold(A)$ 为何等于 $bold(a)_1 bold(a)_1^T + bold(a)_2 bold(a)_2^T + dots.c + bold(a)_m bold(a)_m^T$;]

#sub[(b) 若 $bold(C)$ 是一个对角矩阵, 主对角线上的元素是 $c_1, c_2, dots.c, c_m$, 请为 $bold(A)^T bold(C) bold(A)$ 求出一个类似于列左乘行后再求和的计算式. (首先可用 $m = n = 2$ 的示例进行分析.)]



#pagebreak()
