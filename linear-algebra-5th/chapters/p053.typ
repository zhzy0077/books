#import "../theme.typ": *

#chapterHead("assets/fig-p053-chapter.png")[线性方程组的求解]

#secBracket[2.1  向量与线性方程组]

#yaodian[
  #set enum(numbering: "1.", tight: false)
  1. 线性方程组 $bold(A) bold(x) = bold(b)$ 的列图: 从列向量的视角解读线性方程组, 即矩阵 $bold(A)$ 的 $n$ 个列向量的线性组合生成向量 $bold(b)$.
  2. $bold(A) bold(x) = x_1 bold(a)_1 + x_2 bold(a)_2 + dots.c + x_n bold(a)_n = bold(b)$ 是向量方程: $bold(a)_1, bold(a)_2, dots.c, bold(a)_n$ 是矩阵 $bold(A)$ 的列向量.
  3. 当 $bold(b) = 0$ 时, 矩阵 $bold(A)$ 的列向量组的线性组合 $bold(A) bold(x)$ 是零向量: 一种可能的情况是 $bold(x) = (0, 0, dots.c, 0)$.
  4. 线性方程组 $bold(A) bold(x) = bold(b)$ 的行图: 从行向量的视角解读线性方程组, 即由 $m$ 行方程确定的 $m$ 个平面相交于点 $bold(x)$.
  5. 上述每个平面的方程都可由点积表示:\
    #align(center)[(第 1 行) $· bold(x) = b_1$, #h(1.5em) (第 2 行) $· bold(x) = b_2$, #h(1.5em) $dots.c$, #h(1.5em) (第 $m$ 行) $· bold(x) = b_m$.]
  6. 当 $bold(b) = 0$ 时, 所有平面 (第 $i$ 行) $· bold(x) = 0$ 都经过原点 $bold(x) = (0, 0, dots.c, 0)$.
]

#v(6pt)
线性代数的中心问题是求解线性方程组, “线性”意味着未知数只会与数字相乘——在线性方程组中不会出现 $x$ 乘 $y$ 的项. 如下所示的线性方程组 (线性系统) 规模很小, 但是对它的研究方法可拓展到更一般的情形:

#v(6pt)
#block(stroke: 0.8pt, inset: (x: 14pt, y: 16pt), width: 100%)[
  #eqnumL(align(left, hei[两个方程, \ 两个未知数]), $ cases(x - 2y = 1, 3x + 2y = 11.) $, 1)
]

#v(6pt)
我们先逐行观察该方程组. 第一个方程 $x - 2y = 1$ 在 $x y$ 平面生成了一条直线, 方程的解 $(x, y) = (1, 0)$ 在这条直线上. 此外, $3 - 2 = 1$, 因此点 $(x, y) = (3, 1)$ 也在这条直线上; 而当 $x = 101$ 时, 必有 $y = 50$.

直线的斜率是 #ifrac(1, 2), 故当 $x$ 增加 2 时, $y$ 会增加 1. 斜率在微积分中非常重要, 但在线性



#pagebreak()
