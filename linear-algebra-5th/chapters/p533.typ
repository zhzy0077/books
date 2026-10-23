#import "../theme.typ": *

#align(center, hei(size: 14pt)[10.5  傅里叶级数：用线性代数研究函数])

本节研究的向量空间从有限维转向无穷维. 这里将解释无限维向量空间中的线性代数, 并说明前面章节的大部分结论仍然成立. 先回顾一下有限维的情形. 本书开头给出了向量、点积和线性组合的定义, 因此首先将这些基本定义推广到无穷维的情形——然后其余的结果就是自然的了.

向量具有无限多个分量意味着什么? 有两个不同的答案, 都是可行的:

(1) 向量的分量构成无穷数列: $bold(v) = (v_1, v_2, v_3, dots)$, 例如, $bold(v) = (1, 1/2, 1/4, dots)$;

(2) 向量 $bold(v)$ 是一个函数 $f(x)$, 例如, $bold(v) = sin x$.

下面将分别使用这两种定义, 而利用傅里叶级数则可将它们联系起来.

有了向量就可以定义点积. 两个无限维向量 $bold(v) = (v_1, v_2, dots)$ 和 $bold(w) = (w_1, w_2, dots)$ 的自然点积是一个无穷级数:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ "点积" quad bold(v) dot bold(w) = v_1 w_1 + v_2 w_2 + dots. $],
  align(bottom)[$(1)$],
)

这带来了一个新问题, 这个无穷级数之和是一个有限数吗? 即该级数是否收敛? 对 $R^n$ 中的向量绝对不会产生这样的问题. 这是有限情形和无限情形的第一个也是最大的不同.

当 $bold(v) = bold(w) = (1, 1, 1, dots)$ 时, 级数肯定不收敛: $bold(v) dot bold(w) = 1 + 1 + 1 + dots$ 是无限大. 由于 $bold(v)$ 等于 $bold(w)$, 计算内积 $bold(v) dot bold(w)$ 实际上是在计算 $bold(v) dot bold(v) = norm(bold(v))^2$, 即 $bold(v)$ 的模的平方. 按上述定义, 向量 $(1, 1, 1, dots)$ 的模是无限大. 我们不考虑这样的向量. 由于目前的规则由我们制定, 因此可不将它们包括在向量空间内, 即仅仅考虑模有限的向量:

定义  向量 $bold(v) = (v_1, v_2, dots)$ 和函数 $f(x)$ 在无限维的“希尔伯特空间”(分别记为 $ell^2$ 和 $L^2$) 中, 当且仅当它们的模 $norm(bold(v))^2$ 和 $norm(f)^2$ (见后续内容) 是有限的:

#dmath[$ norm(bold(v))^2 = bold(v) dot bold(v) = v_1^2 + v_2^2 + dots quad "必须为有限数," $]

#dmath[$ norm(f)^2 = (f, f) = integral_0^(2 pi) abs(f(x))^2 dif x quad "必须为有限积分." $]

例 1  向量 $bold(v) = (1, 1/2, 1/4, dots)$ 包含在希尔伯特空间中, 因为它的长度为 $2/sqrt(3)$. 计算过程中得到一个和为 $4/3$ 的几何级数, $bold(v)$ 的长度为其平方根:

#dmath[$ "长度的平方" quad bold(v) dot bold(v) = 1 + 1/4 + 1/16 + dots = 1/(1 - 1/4) = 4/3. $]

问题  若 $bold(v)$ 和 $bold(w)$ 的长度是有限的, 则它们的点积可以有多大?

答  和 $bold(v) dot bold(w) = v_1 w_1 + v_2 w_2 + dots$ 仍然是一个有限数, 即点积存在. 施瓦茨不等式仍然成立:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ "施瓦茨不等式" quad abs(bold(v) dot bold(w)) <= norm(bold(v)) norm(bold(w)). $],
  align(bottom)[$(2)$],
)

#pagebreak()