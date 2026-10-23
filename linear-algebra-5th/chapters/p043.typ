#import "../theme.typ": *

#align(center, subsec[1.3　矩　阵])

#yaodian[
  #hei[1.] $A = mat(delim: "[", 1,2; 3,4; 5,6)$ 是一个 $3 times 2$ 矩阵, 行数 $m = 3$, 列数 $n = 2$.

  #hei[2.] $A bold(x) = mat(delim: "[", 1,2; 3,4; 5,6) mat(delim: "[", x_1; x_2)$ 是矩阵 $A$ 列向量组的一个线性组合, 即

  #dmath[$ A bold(x) = x_1 mat(delim: "[", 1;3;5) + x_2 mat(delim: "[", 2;4;6) . $]

  #hei[3.] $A bold(x)$ 的 3 个分量是 $A$ 的 3 行分别与向量 $bold(x)$ 的点积:

  #grid(columns: (auto, 1fr), column-gutter: 1.2em, align: (right+horizon, center+horizon),
    [逐行计算],
    [$ mat(delim: "[", 1,2; 3,4; 5,6) mat(delim: "[", 7;8) = mat(delim: "[", 1 dot 7 + 2 dot 8; 3 dot 7 + 4 dot 8; 5 dot 7 + 6 dot 8) = mat(delim: "[", 23; 53; 83) . $],
  )

  #hei[4.] $A bold(x) = bold(b)$ 是矩阵形式的线性方程组: $ cases(2x_1 + 5x_2 = b_1, 3x_1 + 7x_2 = b_2) $ 可以写成

  #dmath[$ mat(delim: "[", 2,5; 3,7) mat(delim: "[", x_1; x_2) = mat(delim: "[", b_1; b_2) . $]

  #hei[5.] $A bold(x) = bold(b)$ 的解有时可以写成 $bold(x) = A^(-1) bold(b)$, 但是有些矩阵 $A$ 不存在逆矩阵 $A^(-1)$.
]

本节以三个向量 $bold(u), bold(v), bold(w)$ 引入学习内容, 后续会将它们合并为矩阵:

#grid(columns: (auto, 1fr), column-gutter: 1.2em, align: (right+horizon, center+horizon),
  [三个向量],
  [$ bold(u) = mat(delim: "[", 1;-1;0), quad bold(v) = mat(delim: "[", 0;1;-1), quad bold(w) = mat(delim: "[", 0;0;1) . $],
)

它们在三维空间中的线性组合是 $x_1 bold(u) + x_2 bold(v) + x_3 bold(w)$:

#grid(columns: (auto, 1fr, auto), column-gutter: 1.2em, align: (right+horizon, center+horizon, right+horizon),
  [向量的\ 线性组合],
  [$ x_1 mat(delim: "[", 1;-1;0) + x_2 mat(delim: "[", 0;1;-1) + x_3 mat(delim: "[", 0;0;1) = mat(delim: "[", x_1; x_2 - x_1; x_3 - x_2) . $],
  [$(1)$],
)

重点: 可利用矩阵来改写上述组合. 将向量 $bold(u), bold(v), bold(w)$ 作为矩阵 $A$ 的列, 再用矩阵“左乘”向量 $(x_1, x_2, x_3)$:



#pagebreak()
