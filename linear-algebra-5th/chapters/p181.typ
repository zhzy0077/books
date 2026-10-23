#import "../theme.typ": *
#set par(spacing: 15pt, leading: 13pt)
#show math.equation.where(block: true): set block(above: 16pt, below: 16pt)

#block[#set par(first-line-indent: 0em); 类型 1 与类型 2 是行满秩的, 即 $r = m$; 类型 1 与类型 3 是列满秩的, 即 $r = n$. 理论上类型 4 是最为一般的情形, 但在实际中却是最不常见的. 当 $bold(R) bold(x) = bold(d)$ (以及原方程组 $bold(A) bold(x) = bold(b)$) 有解时, $bold(d)$ 的后 $m - r$ 个分量必为零. $bold(F)$ 为 $bold(R)$ 中对应自由列的部分.]

#v(16pt)
#barHead[■ 要点回顾]

#enum(numbering: "1.", tight: false,
  [秩 $r$ 为主元的数目. 最简行阶梯形矩阵 $bold(R)$ 有 $m - r$ 个全零行.],
  [$bold(A) bold(x) = bold(b)$ 有解当且仅当后 $m - r$ 个方程经初等行变换后化为 $0 = 0$.],
  [当所有自由变量均取值为零时, 就得到一个特解 $bold(x)_p$.],
  [自由变量的值一旦取定, 主元变量也就确定了.],
  [列满秩, 即 $r = n$, 意味着没有自由变量, 方程组有唯一解或无解.],
  [行满秩, 即 $r = m$, 意味着当 $m = n$ 时, 方程组有唯一解; 当 $m < n$ 时, 方程组有无穷多解.],
)

#v(16pt)
#barHead[■ 范例解析]
#v(12pt)

#hei[3.3 A]  本题将消元法 (涉及主元列和回代) 与列空间、零空间、秩、可解性等更高层面的概念联系在一起. 设矩阵 $bold(A)$ 的秩为 2:

#dmath[$bold(A) bold(x) = bold(b) quad cases(x_1 + 2x_2 + 3x_3 + 5x_4 = b_1, 2x_1 + 4x_2 + 8x_3 + 12x_4 = b_2, 3x_1 + 6x_2 + 7x_3 + 13x_4 = b_3) .$]

#hei[(1)] 用初等行变换将 $[bold(A) quad bold(b)]$ 化简为 $[bold(U) quad bold(c)]$, 使得 $bold(A) bold(x) = bold(b)$ 变为一个三角形方程组 $bold(U) bold(x) = bold(c)$;

#hei[(2)] 当 $b_1, b_2, b_3$ 满足什么条件时, $bold(A) bold(x) = bold(b)$ 有解?

#hei[(3)] 描述矩阵 $bold(A)$ 的列空间, 它是 $R^3$ 中的什么平面?

#hei[(4)] 描述 $bold(A)$ 的零空间, 其中的特殊解是 $R^4$ 中的哪些向量?

#hei[(5)] 用初等行变换继续将 $[bold(U) quad bold(c)]$ 化简为 $[bold(R) quad bold(d)]$, 其中 $bold(c) = (0, 6, 0)$; 然后由 $bold(R)$ 求出特殊解, 由 $bold(d)$ 求出特解;

#hei[(6)] 求出方程组 $bold(A) bold(x) = (0, 6, -6)$ 的一个特解, 进而求出全解.

#hei[解]  (1) 消元法中的乘数分别为 2, 3 和 -1, 由此将 $[bold(A) quad bold(b)]$ 化为 $[bold(U) quad bold(c)]$:

#dmath[$ mat(delim: "[", 1,2,3,5,b_1; 2,4,8,12,b_2; 3,6,7,13,b_3) &-> mat(delim: "[", 1,2,3,5,b_1; 0,0,2,2,b_2 - 2b_1; 0,0,-2,-2,b_3 - 3b_1) \ &-> mat(delim: "[", 1,2,3,5,b_1; 0,0,2,2,b_2 - 2b_1; 0,0,0,0,b_3 + b_2 - 5b_1) . $]



#pagebreak()
