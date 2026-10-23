#import "../theme.typ": *

#hei[15.] 利用行变换来化简和计算以下行列式:

#dmath[$ det mat(delim: "|", 101, 201, 301; 102, 202, 302; 103, 203, 303), quad det mat(delim: "|", 1, t, t^2; t, 1, t; t^2, t, 1) . $]

#hei[16.] 计算以下秩 1 矩阵以及反称矩阵的行列式:

#grid(columns: (auto, 1fr, auto, 1fr), column-gutter: 8pt,
  [(a) $bold(A) = mat(1;2;3) mat(1,-4,5);$],
  [],
  [(b) $bold(A) = mat(0,1,3;-1,0,4;-3,-4,0) .$],
  [],
)

#hei[17.] 对于反称矩阵 $bold(A)$ 有 $bold(A)^T = -bold(A)$. 请将习题 16 中的 1, 3, 4 替换成 $a, b, c$, 然后证明 $|bold(A)| = 0$. 写出一个 $|bold(A)| = 1$ 的 4 阶反称矩阵 $bold(A)$.

#hei[18.] 利用行变换来证明 3 阶“范德蒙德行列式”的计算公式:

#dmath[$ det mat(delim: "|", 1, a, a^2; 1, b, b^2; 1, c, c^2) = (b-a)(c-a)(c-b) . $]

#hei[19.] 计算以下矩阵 $bold(U)$ 以及 $bold(U)^(-1)$ 和 $bold(U)^2$ 的行列式:

#grid(columns: (auto, 1fr, auto, 1fr), column-gutter: 8pt,
  [(a) $bold(U) = mat(1,4,6;0,2,5;0,0,3);$],
  [],
  [(b) $bold(U) = mat(a,b;0,d) .$],
  [],
)

#hei[20.] 假设同时对两行进行变形, 即从

#dmath[$ mat(a,b;c,d) quad text("到") quad mat(a - L c, b - L d; c - l a, d - l b) . $]

请计算第二个矩阵的行列式. 它会等于 $a d - b c$ 吗?

#hei[21.] 换行: 将 $bold(A)$ 的第 1 行加到第 2 行, 然后从第 1 行中减去第 2 行; 再将第 1 行加到第 2 行, 最后用 $-1$ 乘第 1 行, 得到矩阵 $bold(B)$. 应用哪些性质可以证明

#dmath[$ det bold(B) = mat(delim: "|", c, d; a, b) quad "等于" quad -det bold(A) = -mat(delim: "|", a, b; c, d) ? $]

这些性质能够代替性质 2 来定义行列式.

#hei[22.] 利用 $a d - b c$ 来计算 $bold(A)$, $bold(A)^(-1)$ 和 $bold(A) - lambda bold(I)$ 的行列式:

#dmath[$ bold(A) = mat(2,1;1,2), quad bold(A)^(-1) = 1/3 mat(2,-1;-1,2), quad bold(A) - lambda bold(I) = mat(2 - lambda, 1; 1, 2 - lambda) . $]

当 $lambda$ 取哪两个数值时, $det(bold(A) - lambda bold(I)) = 0$? 结合 $lambda$ 的这两个取值, 写出对应的矩阵 $bold(A) - lambda bold(I)$——它们都是不可逆矩阵.



#pagebreak()