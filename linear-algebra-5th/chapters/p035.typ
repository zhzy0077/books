#import "../theme.typ": *

#hei[结论]  直角使得点积 $bold(v) dot bold(w) = 0$, 即向量 $bold(v), bold(w)$ 的夹角 $theta = 90 degree$ 时点积为 0, 夹角余弦 $cos theta = 0$. 当 $bold(v) = 0$ 时, 对任意向量 $bold(w)$, 一定有 $0 dot bold(w)$ 始终为 0, 故零向量垂直于任意向量.

假设 $bold(v) dot bold(w)$ 不为零, 则点积可能为正, 也可能为负. 由 $bold(v) dot bold(w)$ 的正负号立刻可知向量 $bold(v), bold(w)$ 的夹角是大于 90° 还是小于 90°: 当 $bold(v) dot bold(w)$ 为正数时, 向量的夹角小于 90°; 当 $bold(v) dot bold(w)$ 为负数时, 向量的夹角大于 90°, 如图 1.8(b) 所示. 已知向量 $bold(v) = (3,1)$, 因向量 $bold(w) = (1,3)$ 与它的点积为 $bold(v) dot bold(w) = 6$, 故二者的夹角小于 90°.

#figure(image("../assets/fig-p035-fig18.png", width: 90%), numbering: none, caption: [图 1.8　对垂直的向量 $bold(v), bold(w)$ 有 $bold(v) dot bold(w) = 0$ 且 $norm(bold(v))^2 + norm(bold(w))^2 = norm(bold(v) - bold(w))^2$.])

与 $bold(v)$ 垂直的向量构成点积正负值的分界线. 例如, 向量 $(1,-3)$ 垂直于 $(3,1)$, 二者点积为 0, 从而向量 $(1,-3)$ 就在向量 $(3,1)$ 点积正负值的分界线上.

利用向量的点积可以计算夹角 $theta$ 的准确值. 对于两个单位向量 $bold(u)$ 与 $bold(U)$, 点积 $bold(u) dot bold(U)$ 的符号可以揭示夹角 $theta < 90 degree$ 或 $theta > 90 degree$, 更重要的是, 点积 $bold(u) dot bold(U)$ 是夹角 $theta$ 的余弦. 这一结论对于 $n$ 维向量同样成立.

#dingli[将两个单位向量 $bold(u)$ 与 $bold(U)$ 的夹角记为 $theta$, 则有 $bold(u) dot bold(U) = cos theta$. 当然 $|bold(u) dot bold(U)| <= 1$.]

$cos theta$ 不可能大于 1, 也不可能小于 $-1$, 而两个单位向量点积的值也在 $-1$ 至 1 之间, 二者夹角 $theta$ 的余弦可由 $bold(u) dot bold(U)$ 得到.

图 1.9(a) 利用向量 $bold(u) = (cos theta, sin theta)$ 与 $bold(i) = (1,0)$ 说明了上述结论: 两者的点积 $bold(u) dot bold(i) = cos theta$ 是它们夹角的余弦. 将上述向量同时逆时针旋转任意角度 $alpha$ 后, 它们仍是单位向量. 向量 $bold(i) = (1,0)$ 旋转至 $(cos alpha, sin alpha)$, 向量 $bold(u)$ 旋转至 $(cos beta, sin beta)$, 其中 $beta = alpha + theta$, 如图 1.9(b) 所示. 它们的点积为 $cos alpha cos beta + sin alpha sin beta$, 由三角函数公式可得该点积为 $cos(beta - alpha) = cos theta$.

#figure(image("../assets/fig-p035-fig19.png", width: 90%), numbering: none, caption: [图 1.9　对单位向量 $bold(u), bold(U)$, 点积 $bold(u) dot bold(U)$ 就是二者夹角 $theta$ 的余弦.])

如果向量 $bold(v)$ 与 $bold(w)$ 不是单位向量, 应如何计算它们的夹角? 可将每个向量都除以自身



#pagebreak()
