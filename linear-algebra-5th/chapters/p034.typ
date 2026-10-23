#import "../theme.typ": *

#figure(image("../assets/fig-p034-fig17.png", width: 86%), numbering: none, caption: [#text(size: 13pt)[图 1.7　坐标轴上的向量 $bold(i)$ 与 $bold(j)$. (a) 与 $x$ 轴正向的夹角为 45° 的单位向量 $bold(u)$ 由向量 $bold(v) = (1,1)$ 除以自身的长度 $norm(bold(v)) = sqrt(2)$ 得到; (b) 单位向量 $bold(u) = (cos theta, sin theta)$ 与 $x$ 轴正向的夹角为 $theta$.]])

对任意的非零向量 $bold(v)$ 除以自身的长度 $norm(bold(v))$ 就得到对应的单位向量. 例如, 向量 $(2,2,1)$ 长度为 3, 则向量 $bold(u) = (2/3, 2/3, 1/3)$ 长度为 1, 经验算有 $bold(u) dot bold(u) = 4/9 + 4/9 + 1/9 = 1$.

#yaodian[
  单位向量 #h(2em) $ bold(u) = bold(v)/norm(bold(v)) $ #h(2em) 是与 $bold(v)$ 同向的单位向量.
]

#subsec[两个向量的夹角]

对于两个垂直的向量 $bold(v), bold(w)$ 有 $bold(v) dot bold(w) = 0$, 即当点积为 0 时, 两个向量的夹角为 90°. 为解释这一现象, 必须在向量的夹角与点积之间建立联系. 在本节后续部分将学习对两个非零向量 $bold(v)$ 与 $bold(w)$ 如何利用 $bold(v) dot bold(w)$ 来计算它们之间的夹角.

#gainian[直角][当向量 $bold(v)$ 与 $bold(w)$ 垂直时, 点积 $bold(v) dot bold(w) = 0$.]

#hei[证]  当向量 $bold(v)$ 与 $bold(w)$ 垂直时, 它们构成一个直角三角形的两条直角边, 第三条边就是 $bold(v) - bold(w)$, 如图 1.8(a) 所示. 由毕达哥拉斯定理, 直角三角形两条直角边 $a, b$ 与斜边 $c$ 满足 $a^2 + b^2 = c^2$:

#grid(columns: (auto, 1fr, auto), column-gutter: 8pt,
  align(center + horizon)[互相垂直的两个向量 $bold(v), bold(w)$],
  align(center)[$ norm(bold(v))^2 + norm(bold(w))^2 = norm(bold(v) - bold(w))^2. $],
  align(bottom)[$(2)$],
)

将上述公式中的长度写成二维向量的计算形式得

#grid(columns: (auto, 1fr, auto), column-gutter: 8pt,
  align(center + horizon)[毕达哥拉斯定理],
  align(center)[$ (v_1^2 + v_2^2) + (w_1^2 + w_2^2) = (v_1 - w_1)^2 + (v_2 - w_2)^2. $],
  align(bottom)[$(3)$],
)

等式右边的第一个平方式展开为 $v_1^2 - 2 v_1 w_1 + w_1^2$. 显然等式两边都包含 $v_1^2$ 与 $w_1^2$, 消去这两项后还余下 $-2 v_1 w_1$. 类似地, 消去 $v_2^2$ 与 $w_2^2$ 余下 $-2 v_2 w_2$. (如果是三维向量还会余下 $-2 v_3 w_3$.) 对化简后的公式两边同时除以 $-2$ 得 $bold(v) dot bold(w) = 0$#footnote[译者注: 英文版误作“$bold(v) - bold(w) = 0$”.]:

#grid(columns: (1fr, auto), column-gutter: 8pt,
  align(center)[$ 0 = -2 v_1 w_1 - 2 v_2 w_2 quad "等价于" quad v_1 w_1 + v_2 w_2 = 0. $],
  align(bottom)[$(4)$],
)



#pagebreak()
