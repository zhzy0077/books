#import "../theme.typ": *

#dingliC[
  #grid(columns: (auto, 1fr, auto), column-gutter: 1.2em, align: (left+horizon, center+horizon, right+horizon),
    [#hei[循环差分]],
    [$ C bold(x) = mat(delim: "[", 1,0,-1; -1,1,0; 0,-1,1) mat(delim: "[", x_1; x_2; x_3) = mat(delim: "[", x_1 - x_3; x_2 - x_1; x_3 - x_2) = bold(b) . $],
    [$(11)$],
  )
]

矩阵 $C$ 外观上不是三角形的, 因而对给定的 $bold(b)$ 不能方便地求解 $bold(x)$. 实际上不可能求出 $C bold(x) = bold(b)$ 的唯一解, 因为这个方程组要么有无穷多解（偶尔）, 要么无解（经常）:

#eqnumL([$C bold(x) = 0$ 有\ 无穷多解 $bold(x)$], $ mat(delim: "[", x_1 - x_3; x_2 - x_1; x_3 - x_2) = mat(delim: "[", 0;0;0) "的解" mat(delim: "[", x_1; x_2; x_3) "是所有形如" mat(delim: "[", c;c;c) "的向量." $, 12)

每一个常数向量, 例如, $bold(x) = (3,3,3)$ 的循环差分都得到 0. 未定的常数 $c$ 就像不定积分结果中的常数 $C$ 一样. 循环差分的第一个分量为 $x_1 - x_3$, 而不是 $x_1 - x_0 = x_1 - 0$.

线性方程组 $C bold(x) = bold(b)$ 更可能出现的情况是 $bold(x)$ 根本无解.

#dingliC[
  #grid(columns: (auto, 1fr, auto, auto), column-gutter: 1.2em, align: (right+horizon, center+horizon, center+horizon, right+horizon),
    [$C bold(x) = bold(b)$],
    [$ mat(delim: "[", x_1 - x_3; x_2 - x_1; x_3 - x_2) = mat(delim: "[", 1;3;5) $],
    [左侧分量相加等于 0,\ 右侧分量相加等于 9,\ $x_1, x_2, x_3$ 无解.],
    [$(13)$],
  )
]

这个例题能从几何观点来分析: $bold(u), bold(v)$ 与 $bold(w)^*$ 的线性组合不能生成向量 $bold(b) = (1,3,5)$. 这些向量的线性组合不能生成整个三维空间. 因为方程左侧的 $x_1 - x_3$, $x_2 - x_1$ 与 $x_3 - x_2$ 相加始终为 0, 所以右侧必须满足 $b_1 + b_2 + b_3 = 0$, 方程组 $C bold(x) = bold(b)$ 才有解. 换而言之,

#dmath[$ x_1 bold(u) + x_2 bold(v) + x_3 bold(w)^* "的全体线性组合都落在由" b_1 + b_2 + b_3 = 0 "确定的平面上." $]

这样就在代数与几何之间建立了联系. 向量组的线性组合可以生成整个空间或者只生成一个平面, 图 1.11 展示了 $bold(u), bold(v), bold(w)$（第一个例子）与 $bold(u), bold(v), bold(w)^*$（在同一平面内）之间的重要区别.

#figure(image("../assets/fig-p047.png", width: 74%), numbering: none, caption: [图 1.11　（a）线性无关向量组 $bold(u), bold(v), bold(w)$;（b）同一平面内的线性相关向量组 $bold(u), bold(v), bold(w)^*$.])



#pagebreak()
