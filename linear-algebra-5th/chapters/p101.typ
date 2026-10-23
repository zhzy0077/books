#import "../theme.typ": *

$bold(B)$ 和 $bold(C)$ 恰好相乘时可交换, 其中部分原因是 $bold(B)$ 对角线上的元素恰好可对应 $bold(I)$, 而二阶单位矩阵与任意二阶方阵可交换. 当 $p, q, r, z$ 都是 4 阶子块时 (此时 1 变成 $bold(I)$), 上述表达式中所有的乘积仍然成立, 因此问题的答案保持不变.

#align(center)[#image("../assets/fig-p101-icon.png", width: 3.2%)]

#xiti[习题集 2.4]

习题 1—16 是关于矩阵乘法运算定律的.

#ti[1.][设 $bold(A)$ 是 $3 times 5$ 矩阵, $bold(B)$ 是 $5 times 3$ 矩阵, $bold(C)$ 是 $5 times 1$ 矩阵, $bold(D)$ 是 $3 times 1$ 矩阵, 且各矩阵的元素全为 1. 请确定下列运算是否有意义, 若有意义请计算相应的结果:]

#dmath[$ bold(B A), quad bold(A B), quad bold(A B D), quad bold(D C), quad bold(A) (bold(B) + bold(C)) . $]

#ti[2.][请确定哪些行、列或矩阵相乘能得到下列结果:]

#sub[(a) $bold(A) bold(B)$ 的第 2 列;]

#sub[(b) $bold(A) bold(B)$ 的第 1 行;]

#sub[(c) $bold(A) bold(B)$ 第 3 行第 5 列的元素;]

#sub[(d) $bold(C) bold(D) bold(E)$ 第 1 行第 1 列的元素.]

#ti[3.][请对 $bold(A) bold(B)$ 与 $bold(A) bold(C)$ 求和, 再与 $bold(A) (bold(B) + bold(C))$ 对比, 其中]

#dmath[$ bold(A) = mat(1, 5; 2, 3) , quad bold(B) = mat(0, 2; 0, 1) , quad bold(C) = mat(3, 1; 0, 0) . $]

#ti[4.][利用习题 3 中的矩阵首先计算 $bold(A)$ 左乘 $bold(B) bold(C)$, 然后计算 $bold(A) bold(B)$ 左乘 $bold(C)$.]

#ti[5.][请针对下列矩阵 $bold(A)$ 计算 $bold(A)^2$ 和 $bold(A)^3$, 并猜测 $bold(A)^5$ 和 $bold(A)^n$:]

#dmath[$ (a) quad bold(A) = mat(1, b; 0, 1) ; quad quad (b) quad bold(A) = mat(2, 2; 0, 0) . $]

#ti[6.][利用下列矩阵来证明 $(bold(A) + bold(B))^2$ 不等于 $bold(A)^2 + 2 bold(A) bold(B) + bold(B)^2$:]

#dmath[$ bold(A) = mat(1, 2; 0, 0) , quad bold(B) = mat(1, 0; 3, 0) . $]

请写出正确的计算法则: $(bold(A) + bold(B))(bold(A) + bold(B)) = bold(A)^2 +$ #underline(h(2.5em)) $+ bold(B)^2$.

#ti[7.][请对以下结论判断正误, 若结论错误, 请举出一个反例:]

#sub[(a) 若 $bold(B)$ 的第 1 列与第 3 列相同, 则 $bold(A) bold(B)$ 的第 1 列与第 3 列也相同;]

#sub[(b) 若 $bold(B)$ 的第 1 行与第 3 行相同, 则 $bold(A) bold(B)$ 的第 1 行与第 3 行也相同;]

#sub[(c) 若 $bold(A)$ 的第 1 行与第 3 行相同, 则 $bold(A) bold(B) bold(C)$ 的第 1 行与第 3 行也相同;]

#sub[(d) $(bold(A) bold(B))^2 = bold(A)^2 bold(B)^2$.]



#pagebreak()
