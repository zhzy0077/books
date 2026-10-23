#import "../theme.typ": *

#hei[第四种方法: 列左乘行]

计算矩阵乘法还有第四种方法, 其重要性通常被人忽视#footnote[译者注: 第二—四种方法实际上是分块矩阵乘法的特殊情形, 见本节后续内容和习题 28.]. 以下讲解如同魔术解密, 不过魔术师通常不会揭示魔术的奥秘, 而数学家则试图将事物本质解释透彻. 在本书之前的版本中虽然也介绍了这个方法, 但是强调得还不够.

#hei[4.] $bold(A)$ 的第 $1$—$n$ 列左乘 $bold(B)$ 中对应的第 $1$—$n$ 行, 然后将所得矩阵相加.

设矩阵 $bold(A)$ 有 3 列, $bold(B)$ 有 3 行, 则计算 $bold(A) bold(B)$ 时, 可将 $bold(A)$ 的第 1 列、第 2 列和第 3 列分别左乘 $bold(B)$ 的第 1 行、第 2 行和第 3 行, 然后相加:


$ bold(A B) = [bold("第 1 列") quad bold("第 2 列") quad bold("第 3 列")] mat(bold("第 1 行"); bold("第 2 行"); bold("第 3 行")) $
$ = (bold("第 1 列"))(bold("第 1 行")) + (bold("第 2 列"))(bold("第 2 行")) + (bold("第 3 列"))(bold("第 3 行")) . $


如下所示, 用列左乘行的方法来计算二阶方阵的乘法 $bold(A) bold(B)$, 结果准确无误:


$ bold(A) bold(B) = mat(a, b; c, d) mat(E, F; G, H) = mat(a E + b G, a F + b H; c E + d G, c F + d H) , $


#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
#grid(columns: (auto, auto), column-gutter: 3em, align: (center+horizon, center+horizon),
  [A的列左乘 $bold(B)$ 对应的行, \ 然后求和],
  [$ bold(A B) = mat(a; c) [E quad F] + mat(b; d) [G quad H] . $ #h(2em) (3)],
)
]

对于一般情形, 用 $bold(A)$ 的第 $k$ 列左乘 $bold(B)$ 的第 $k$ 行得到一个矩阵 (通常不是一个数), 然后对 $k = 1, 2, dots.c, n$ 将所有矩阵相加得 $bold(A) bold(B)$. 若 $bold(A)$ 是 $m times n$ 矩阵, $bold(B)$ 是 $n times p$ 矩阵, 则通过上述的 (列)(行) 计算共得 $n$ 个矩阵, 其中每个都是 $m times p$ 矩阵. 这个方法和点积方法都有 $m n p$ 个计算步骤——但是执行顺序上有所差异.

#hei[矩阵运算的定律]

下面描述矩阵运算遵守的六条定律, 同时强调了不遵守的一条定律, 其中的矩阵可能是方阵也可能是一般形式. 矩阵加法遵守以下三条简单的定律:


$ bold(A) + bold(B) = bold(B) + bold(A), quad quad ("交换律") $
$ c (bold(A) + bold(B)) = c bold(A) + c bold(B), quad quad ("分配律") $
$ bold(A) + (bold(B) + bold(C)) = (bold(A) + bold(B)) + bold(C) . quad ("结合律") $


矩阵乘法也遵守三条运算定律, 但是通常 $bold(A) bold(B) = bold(B) bold(A)$ 不成立:


$ bold(A) bold(B) != bold(B) bold(A), quad quad ("一般不满足 “交换律”") $
$ bold(A) (bold(B) + bold(C)) = bold(A) bold(B) + bold(A) bold(C), quad ("左分配律") $
$ (bold(A) + bold(B)) bold(C) = bold(A) bold(C) + bold(B) bold(C), quad ("右分配律") $
$ bold(A) (bold(B) bold(C)) = (bold(A) bold(B)) bold(C) . quad ("ABC 的结合律, 此处无需写括号") $




#pagebreak()
