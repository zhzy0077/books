#import "../theme.typ": *
#set par(spacing: 16.5pt, leading: 13.5pt)
#show math.equation.where(block: true): set block(above: 18pt, below: 18pt)

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 12pt, y: 22pt), width: 100%, above: 20pt, below: 22pt)[
  #grid(
    columns: (auto, 1fr, auto),
    column-gutter: 12pt,
    align: (left + horizon, center + horizon, right + horizon),
    [
      $bold(S)$ 有恰当的特征向量 $bold(q)_i$, \
      它们是标准正交的
    ],
    [
      $ bold(S) bold(q)_i = (sum_(k=1)^n lambda_k bold(q)_k bold(q)_k^T) bold(q)_i = lambda_i bold(q)_i. $
    ],
    [$(7)$],
  )
]

#hei[实矩阵的复特征向量]

对于任意实矩阵 $bold(S)$，由 $bold(S) bold(x) = lambda bold(x)$ 取共轭可得 $bold(S) overline(bold(x)) = overline(lambda) overline(bold(x))$. 而对于对称（实）矩阵，它的特征值 $lambda$ 和特征向量 $bold(x)$ 都是实的. 于是上述两个式子相同. 但是非对称（实）矩阵 $bold(A)$ 的特征值 $lambda$ 和特征向量 $bold(x)$ 通常都是复的，那么 $bold(A) overline(bold(x)) = overline(lambda) overline(bold(x))$ 虽成立，却不同于 $bold(A) bold(x) = lambda bold(x)$. 此时可以得到另一个复特征值（即 $overline(lambda)$）和新的特征向量（即 $overline(bold(x))$）：

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 20pt), width: 100%, above: 18pt, below: 20pt)[
  #dmath[对实矩阵 $bold(A)$，复特征值 $lambda$ 和特征向量 $bold(x)$ “成对共轭”出现.]
  #eqnum($ mat(delim: #none, lambda = a + i b; overline(lambda) = a - i b) quad "如果" quad bold(A) bold(x) = lambda bold(x), quad "那么" quad bold(A) overline(bold(x)) = overline(lambda) overline(bold(x)). $, 8)
]

#hei[例 3]　矩阵 $A = mat(cos theta, -sin theta; sin theta, cos theta)$ 的特征值为 $lambda_1 = cos theta + i sin theta$ 与 $lambda_2 = cos theta - i sin theta$.

这些特征值互为共轭，可分别记为 $lambda$ 和 $overline(lambda)$. 由于 $A$ 为实矩阵，所以特征向量一定可写成 $x$ 和 $overline(x)$：

#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 10pt,
  align: (left + horizon, center + horizon, right + horizon),
  [
    这是 $lambda bold(x)$\
    #v(14pt)
    这是 $overline(lambda) overline(bold(x))$
  ],
  [
    $ bold(A) bold(x) = mat(cos theta, -sin theta; sin theta, cos theta) mat(1; -i) = (cos theta + i sin theta) mat(1; -i), $
    $ bold(A) overline(bold(x)) = mat(cos theta, -sin theta; sin theta, cos theta) mat(1; i) = (cos theta - i sin theta) mat(1; i). $
  ],
  [(9)],
)

由于 $A$ 为实矩阵，所以特征向量 $(1, -i)$ 和 $(1, i)$ 是复共轭的.

矩阵 $A$ 也是旋转矩阵，由于 $cos^2 theta + sin^2 theta = 1$，所以特征值的绝对值为 $|lambda| = 1$. 结论 $|lambda| = 1$ 对于每个正交矩阵 $Q$ 的特征值 $lambda$ 均成立.

这里穿插了少许复数内容，有的读者可能对此不太熟悉. 不过即便只讨论实矩阵，这也是无法避免的. 第 9 章将讨论范围由复特征值 $lambda$ 和复特征向量 $x$ 推广到复矩阵 $A$，由此就可以领略矩阵理论的全貌了.

本节最后是两个选学内容.

#hei[特征值与主元（选学）]

矩阵 $A$ 的特征值迥异于主元. 求特征值需要解方程 $det(A - lambda I) = 0$，而求主元则需要利用消元法. 目前为止，两者仅有的联系就是

#dmath[主元之积 = 行列式 = 特征值之积.]

#pagebreak()