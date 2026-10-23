#import "../theme.typ": *

#ti[2.][画出 $bold(b)$ 到过 $bold(a)$ 的直线上的投影并依据 $bold(p) = hat(x) bold(a)$ 计算出该投影:]

#align(center)[#grid(columns: (auto, auto), column-gutter: 3em, align: horizon,
  [(a) $bold(b) = mat(delim: "[", cos theta; sin theta), quad bold(a) = mat(delim: "[", 1; 0)$;],
  [(b) $bold(b) = mat(delim: "[", 1; 1), quad bold(a) = mat(delim: "[", 1; -1) .$],
)]

#ti[3.][在习题 1 中, 求到过向量 $bold(a)$ 的直线上的投影矩阵 $bold(P) = (bold(a) bold(a)^T)/(bold(a)^T bold(a))$. 验证 (a) 与 (b) 中均有 $bold(P)^2 = bold(P)$, 并在每种情形下利用 $bold(P) bold(b)$ 计算投影 $bold(p)$.]

#ti[4.][在习题 2 中, 求到过 $bold(a)$ 的直线上的投影矩阵 $bold(P)_1$ 与 $bold(P)_2$. $(bold(P)_1 + bold(P)_2)^2 = bold(P)_1 + bold(P)_2$ 是否成立? 当 $bold(P)_1 bold(P)_2 = bold(O)$ 时, 该等式就会成立.]

#ti[5.][计算分别到过 $bold(a)_1 = (-1, 2, 2)$ 和 $bold(a)_2 = (2, 2, -1)$ 的直线上的投影矩阵]

#dmath[$ bold(P)_i = (bold(a)_i bold(a)_i^T)/(bold(a)_i^T bold(a)_i), quad i = 1, 2 . $]

将两个投影矩阵 $bold(P)_1$ 与 $bold(P)_2$ 相乘, 并解释乘积 $bold(P)_1 bold(P)_2$ 的成因.

#hei[6.] 在习题 5 中, 将 $bold(b) = (1, 0, 0)$ 分别投影到过 $bold(a)_1$ 和 $bold(a)_2$ 以及 $bold(a)_3 = (2, -1, 2)$ 的直线上. 进一步将三个投影相加, 即求 $bold(p)_1 + bold(p)_2 + bold(p)_3$.

#hei[7.] 接着习题 5 和习题 6, 求到过 $bold(a)_3 = (2, -1, 2)$ 的直线上的投影矩阵 $bold(P)_3$. 验证 $bold(P)_1 + bold(P)_2 + bold(P)_3 = bold(I)$. 这是由于基向量 $bold(a)_1, bold(a)_2, bold(a)_3$ 是正交的 (图 4.7(a))!

#figure(image("../assets/fig-p239-fig47.png", width: 95%), numbering: none, caption: [图 4.7　(a) 习题 5—7: 正交; (b) 习题 8—10: 不正交.])

#hei[8.] 将向量 $bold(b) = (1, 1)$ 分别投影到过 $bold(a)_1 = (1, 0)$ 和 $bold(a)_2 = (1, 2)$ 的两条直线上. 画出投影 $bold(p)_1$ 和 $bold(p)_2$ 以及它们的和 $bold(p)_1 + bold(p)_2$. 由于 $bold(a)_1, bold(a)_2$ 不正交, 所以两个投影相加并不等于 $bold(b)$.

#hei[9.] 在习题 8 中, $bold(b)$ 在 $bold(a)_1$ 与 $bold(a)_2$ 确定的平面上的投影应等于 $bold(b)$. 对于可逆矩阵 $bold(A) = mat(delim: "[", bold(a)_1, bold(a)_2) = mat(delim: "[", 1, 1; 0, 2)$, 求出 $bold(P) = bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T$.

#hei[10.] 先将 $bold(a)_1 = (1, 0)$ 投影到过 $bold(a)_2 = (1, 2)$ 的直线上, 再将结果投影到过 $bold(a)_1$ 的直线上. 画出这些投影, 并分析两个投影矩阵的乘积 $bold(P)_1 bold(P)_2$ 是否仍然对应一个投影 (图 4.7(b)).

习题 11—20 求到子空间上的投影以及投影矩阵.

#pagebreak()