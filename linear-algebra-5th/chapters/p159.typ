#import "../theme.typ": *

#hei[16.]　设 $P$ 为过点 $(0,0,0)$ 的平面, $L$ 为过点 $(0,0,0)$ 的直线. 既包含 $P$ 又包含 $L$ 的最小向量空间是 \_\_\_\_ 或 \_\_\_\_.

#hei[17.]　(a) 证明 $bold(M)$ 中的可逆矩阵集合不是子空间;
(b) 证明 $bold(M)$ 中的奇异矩阵集合不是子空间.

#hei[18.]　判断正误 (用例子检验以下情形中的加法):

(a) $bold(M)$ 中的全体对称矩阵 $bold(A)$ (满足 $bold(A)^T = bold(A)$) 构成子空间;
(b) $bold(M)$ 中的全体反称矩阵 $bold(A)$ (满足 $bold(A)^T = -bold(A)$) 构成子空间;
(c) $bold(M)$ 中的全体非对称矩阵 $bold(A)$ (满足 $bold(A)^T != bold(A)$) 构成子空间.

习题 19—27 是关于列空间 $bold(C) (bold(A))$ 以及方程组 $bold(A) bold(x) = bold(b)$ 的.

#ti[19.][描述以下具体矩阵的列空间 (直线或平面):]

#dmath[$ bold(A) = mat(delim: "[", 1, 2; 0, 0; 0, 0), quad bold(B) = mat(delim: "[", 1, 0; 0, 2; 0, 0), quad bold(C) = mat(delim: "[", 1, 0; 2, 0; 0, 0). $]

#ti[20.][当等号右边满足什么 (关于 $b_1, b_2, b_3$ 的) 条件时, 下述方程组是可解的?]

#align(center)[#grid(columns: (auto, auto), column-gutter: 3em, align: horizon,
  [(a) $mat(delim: "[", 1, 4, 2; 2, 8, 4; -1, -4, -2) mat(delim: "[", x_1; x_2; x_3) = mat(delim: "[", b_1; b_2; b_3);$,],
  [(b) $mat(delim: "[", 1, 4; 2, 9; -1, -4) mat(delim: "[", x_1; x_2) = mat(delim: "[", b_1; b_2; b_3) .$],
)]

#ti[21.][对如下矩阵 $bold(A)$, 将 $bold(A)$ 的第 1 行加到它的第 2 行上, 得到矩阵 $bold(B)$; 将 $bold(A)$ 的第 1 列加到它的第 2 列上, 得到矩阵 $bold(C)$:]

#dmath[$ bold(A) = mat(delim: "[", 1, 2; 2, 4), quad bold(B) = mat(delim: "[", 1, 2; 3, 6), quad bold(C) = mat(delim: "[", 1, 3; 2, 6). $]

$bold(B)$ 与 $bold(C)$ 中, 哪个矩阵的列向量的线性组合也是 $bold(A)$ 的列向量的线性组合? 哪两个矩阵有相同的列空间?

#ti[22.][对于哪些向量 $(b_1, b_2, b_3)$, 以下方程组分别是有解的?]

#dmath[
  $ mat(delim: "[", 1, 1, 1; 0, 1, 1; 0, 0, 1) mat(delim: "[", x_1; x_2; x_3) = mat(delim: "[", b_1; b_2; b_3), quad mat(delim: "[", 1, 1, 1; 0, 1, 1; 0, 0, 0) mat(delim: "[", x_1; x_2; x_3) = mat(delim: "[", b_1; b_2; b_3), $
  $ mat(delim: "[", 1, 1, 1; 0, 0, 1; 0, 0, 1) mat(delim: "[", x_1; x_2; x_3) = mat(delim: "[", b_1; b_2; b_3). $
]

#ti[23.][(推荐) 如果对矩阵 $bold(A)$ 多增加一列 $bold(b)$, 那么列空间将变大, 除非 #underline[#h(3em)]. 分别就列空间变大和列空间不变大各举一例. 为什么正好当列空间不变大, 即 $bold(A)$ 与 $[bold(A) quad bold(b)]$ 的列空间相同时, $bold(A) bold(x) = bold(b)$ 是可解的?]



#pagebreak()
