#import "../theme.typ": *
#set math.equation(numbering: none)


#chapterHead("assets/fig-p272-chapter.png")[行 列 式]

#secBracket[5.1  行列式的性质]

#block(stroke: 1pt, inset: (x: 10pt, y: 32pt), width: 100%, above: 24pt, below: 28pt)[
  #set par(first-line-indent: 0em, spacing: 20pt, leading: 14.5pt)
  #show math.equation.where(block: true): set block(above: 16pt, below: 16pt)
  #hei[1.] 矩阵 $bold(A) = mat(a, b; c, d)$ 的行列式是 $det bold(A) = a d - b c$. 奇异矩阵 $bold(A) = mat(a, x a; c, x c)$ 满足 $det bold(A) = 0$.

  #hei[2.] 换行改变正负号:
  $ bold(P) bold(A) = mat(0, 1; 1, 0) mat(a, b; c, d) = mat(c, d; a, b), $
  则 $det bold(P) bold(A) = b c - a d = -det bold(A)$.

  #hei[3.] 矩阵 $mat(delim: "[", x a + y A, x b + y B; c, d)$ 的行列式是 $x(a d - b c) + y(A d - B c)$.\ 行列式对单独的每一行是一个线性函数.

  #hei[4.] 由消元法, $bold(E) bold(A) = mat(a, b; 0, d - c/a b)$,
  $ det bold(E) bold(A) = a(d - c/a b) = "主元的乘积" = det bold(A) . $

  #hei[5.] 当 $bold(A)$ 是 $n$ 阶方阵时, 以上 1—4 仍然成立: 若 $bold(A)$ 是奇异矩阵, 则 $det bold(A) = 0$; 每一次换行都改变行列式的正负符号; 行列式对第 1 行是线性的; $det bold(A)$ 等于主元的乘积. 此外, 总有 $det bold(B) bold(A) = (det bold(B))(det bold(A))$ 以及 $det bold(A)^T = det bold(A)$. 行列式是一个神奇的数字.
]

#set par(spacing: 16pt, leading: 13.5pt)
方阵 $bold(A)$ 的行列式是一个数字, 记为 $det bold(A)$ 或 $|bold(A)|$, 这个数字中包含了关于这个方阵的大量信息. 例如, 能立刻判断方阵是否可逆——当一个方阵不可逆时, 它的行列式等于零. 当 $bold(A)$ 可逆时, $bold(A)^(-1)$ 的行列式是 $1/(det bold(A))$. 若 $det bold(A) = 2$, 则 $det bold(A)^(-1) = 1/2$. 实际上, 利用行列式能得到 $bold(A)^(-1)$ 中每个元素的计算公式.





#pagebreak()
