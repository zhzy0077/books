#import "../theme.typ": *

在 $c u + d v$ 生成的平面上. 再来考虑全体 $c u + d v$ (三维空间中两个向量的线性组合) 生成的平面:

将一条直线上全体 $c u$ 与另一条直线上全体 $d v$ 相加就构成如图 1.3 所示的平面.

当引入第三个向量 $bold(w)$ 时, $e bold(w)$ 给出了第三条直线. 假设第三条直线不在 $bold(u)$ 与 $bold(v)$ 所确定的平面上, 则 $e bold(w)$ 与 $c u + d v$ 的全体线性组合就生成了整个三维空间.

#figure(
  grid(
    columns: (auto, auto),
    column-gutter: 2em,
    align: bottom,
    image("../assets/fig-p025-a.png", width: 120pt),
    image("../assets/fig-p025-b.png", width: 178pt),
  ),
  caption: [图 1.3 (a) 通过 $bold(u)$ 的直线; (b) 通过 $bold(u)$ 与 $bold(v)$ 的直线所确定的平面.],
  numbering: none,
)

#hei[直线、平面、空间就是前述问题答案的典型情形! 当然也存在其他可能的情形: 当 $bold(w)$ 恰好等于某个 $c u + d v$ 时, 第三个向量 $bold(w)$ 就在前两个向量确定的平面上, 此时向量 $bold(u), bold(v), bold(w)$ 的线性组合一定在 $bold(u)bold(v)$ 平面上, 这样就不能得到整个三维空间. 请思考问题 1 的特殊情况.]

#barHead[■ 要点回顾]

#hei[1.] 二维空间中的向量 $bold(v)$ 有两个分量 $v_1$ 与 $v_2$.

#hei[2.] 对 $bold(v)+bold(w) = (v_1+w_1, v_2+w_2)$ 与 $c bold(v) = (c v_1, c v_2)$, 要依次计算其中的每个分量.

#hei[3.] 三个向量 $bold(u), bold(v), bold(w)$ 的线性组合为 $c bold(u)+d bold(v)+e bold(w)$.

#hei[4.] 在三维空间中, $bold(u)$ 或者 $bold(u), bold(v)$ 或者 $bold(u), bold(v), bold(w)$ 全体线性组合的典型情形分别为一条直线、一个平面、整个 $R^3$ 空间.

#barHead[■ 范例解析]

#ti[1.1 A][ 向量 $bold(v) = (1,1,0)$ 与 $bold(w) = (0,1,1)$ 的线性组合构成 $R^3$ 上的一个平面. 请描述该平面, 并找到一个不是 $bold(v)$ 与 $bold(w)$ 的线性组合的向量——即该向量不在上述平面上.]

解  向量 $bold(v)$ 与 $bold(w)$ 生成的平面包含了全体线性组合 $c bold(v)+d bold(w)$, 即对任意的 $c$ 与 $d$, 线性组合 $c bold(v)+d bold(w)$ 都在该平面上. 图 1.3 形象地显示了由两条直线确定的生成平面.

#grid(columns: (auto, 1fr), column-gutter: 16pt,
  align(horizon)[线性组合],
  align(center)[$ c bold(v) + d bold(w) = c mat(delim: "[", 1;1;0) + d mat(delim: "[", 0;1;1) = mat(delim: "[", c; c+d; d). $],
)



#pagebreak()
