#import "../theme.typ": *

#figure(image("../assets/fig-p361-67.png", width: 95%), numbering: none, caption: [图 6.7　(a) 热量由 2 号盒扩散出去; (b) 波由 2 号盒传播出去.])

#subsec[6.3 C 求解方程组]

$ cases((dif a)/(dif t) = 0 ",", (dif b)/(dif t) = a ",", (dif c)/(dif t) = 2b ",", (dif z)/(dif t) = 3c ",") $

初值条件 $bold(u)(0) = (a(0), b(0), c(0), z(0))$. 利用矩阵指数函数形式的解 $bold(u)(t) = e^(bold(A) t) bold(u)(0)$ 求解同一组方程. 方程组改写为

#align(center)[
#grid(
  columns: (auto, auto),
  column-gutter: 1.2em,
  align: horizon,
  text(size: 13pt)[
    #set par(leading: 6pt)
    #align(left)[
      四个方程,\
      $lambda = 0, 0, 0, 0$,\
      特征值在\
      对角线上
    ]
  ],
  $ (dif)/(dif t) mat(delim: "[", a; b; c; z) = mat(delim: "[", 0, 0, 0, 0; 1, 0, 0, 0; 0, 2, 0, 0; 0, 0, 3, 0) mat(delim: "[", a; b; c; z) quad "即" quad (dif bold(u))/(dif t) = bold(A) bold(u). $
)
]

首先求出 $bold(A)^2, bold(A)^3, bold(A)^4$ 和 $e^(bold(A) t) = bold(I) + bold(A) t + 1/2 (bold(A) t)^2 + 1/6 (bold(A) t)^3$. 为什么该级数只有 4 项? 为什么 $e^bold(A) dot e^bold(A) = e^(2 bold(A))$ 成立? $e^(bold(A) s) dot e^(bold(A) t) = e^(bold(A)(s + t))$ 总是成立的.

#hei[解法一]　依次对原方程组中的 4 个方程积分, 得

$ a(t) = a(0), $
$ b(t) = t a(0) + b(0), $
$ c(t) = t^2 a(0) + 2t b(0) + c(0), $
$ z(t) = t^3 a(0) + 3t^2 b(0) + 3t c(0) + z(0). $

左乘 $(a(0), b(0), c(0), d(0))$ 以生成 $(a(t), b(t), c(t), d(t))$ 的 $4 times 4$ 矩阵必然与以下 $e^(bold(A) t)$ 相同.

#hei[解法二]　严格下三角形矩阵 $bold(A)$ 的幂在 $bold(A)^3$ 之后均为零矩阵:

$ bold(A) = mat(delim: "[", 0, 0, 0, 0; 1, 0, 0, 0; 0, 2, 0, 0; 0, 0, 3, 0), quad bold(A)^2 = mat(delim: "[", 0, 0, 0, 0; 0, 0, 0, 0; 2, 0, 0, 0; 0, 6, 0, 0), quad bold(A)^3 = mat(delim: "[", 0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0; 6, 0, 0, 0), quad bold(A)^4 = bold(O). $

#pagebreak()