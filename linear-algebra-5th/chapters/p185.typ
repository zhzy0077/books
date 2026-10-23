#import "../theme.typ": *

#h(1em) 习题 3—15 是关于 $bold(A) bold(x) = bold(b)$ 解的情况的. 按照正文中步骤求出特解 $bold(x)_p$ 和零空间解 $bold(x)_n$. 在 $bold(A)$ 的右侧增加一列 $bold(b)$, 得到增广矩阵, 请由它入手求解方程组.

#ti[3.][将以下方程组的全解写为特解 $bold(x)_p$ 加上零空间解 $bold(s)$ 任意倍数的形式:]

#align(center)[$ cases(x + 3y + 3z = 1, 2x + 6y + 9z = 5, -x - 3y + 3z = 5.) $]

#ti[4.][求解以下方程组的全解 (又称为通解、一般解):]

#align(center)[$ mat(1,3,1,2; 2,6,4,8; 0,0,2,4) mat(x; y; z; t) = mat(1; 3; 1) . $]

#ti[5.][在以下方程组中, $b_1, b_2, b_3$ 满足什么条件时, 方程组是可解的?]

#align(center)[$ cases(x + 2y - 2z = b_1, 2x + 5y - 4z = b_2, 4x + 9y - 8z = b_3.) $]

加入 $bold(b)$ 作为增广矩阵的第四列. 当上述条件满足时, 使用消元法求出全部解.

#ti[6.][当 $b_1, b_2, b_3, b_4$ 分别满足什么条件时, 下述方程组是可解的?]

#grid(columns: (1fr, 1fr), column-gutter: 1em, align: horizon,
  [ (a) $ mat(1,2; 2,4; 2,5; 3,9) mat(x_1; x_2) = mat(b_1; b_2; b_3; b_4) ; $ ],
  [ (b) $ mat(1,2,3; 2,4,6; 2,5,7; 3,9,12) mat(x_1; x_2; x_3) = mat(b_1; b_2; b_3; b_4) . $ ],
)

在可解时, 求出解 $bold(x)$.

#ti[7.][在用消元法解方程组 $bold(A) bold(x) = bold(b)$ 时, 证明: 如果 $b_3 - 2b_2 + 4b_1 = 0$, 那么 $(b_1, b_2, b_3)$ 属于列空间, 其中]

#align(center)[$ bold(A) = mat(1,3,1; 3,8,2; 2,4,0) . $]

$bold(A)$ 各行的哪个线性组合等于全零行?

#ti[8.][对下列各矩阵 $bold(A)$, 哪些向量 $(b_1, b_2, b_3)$ 属于矩阵 $bold(A)$ 的列空间? $bold(A)$ 各行的哪些线性组合等于全零行?]

#grid(columns: (1fr, 1fr), column-gutter: 1em, align: horizon,
  [ (a) $ bold(A) = mat(1,2,1; 2,6,3; 0,2,5) ; $ ],
  [ (b) $ bold(A) = mat(1,1,1; 1,2,4; 2,4,8) . $ ],
)



#pagebreak()
