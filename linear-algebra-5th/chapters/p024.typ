#import "../theme.typ": *

#dingliC[今后 $bold(v) = mat(delim: "[", 1;1;-1)$ 也写成 $bold(v) = (1,1,-1)$.]

将列向量写成行的形式 (用圆括号) 通常是为了节省排版空间. $bold(v) = (1,1,-1)$ 实质上是一个暂时横置的列向量, 它与具有相同分量的行向量 $[1 quad 1 quad -1]$ 完全不同! 后者 ($1 times 3$ 的行向量) 是前者 ($3 times 1$ 的列向量 $bold(v)$) 的“转置”.

在三维空间中计算 $bold(v) + bold(w)$ 仍然是逐个计算分量之和, 三个分量分别是 $v_1 + w_1$, $v_2 + w_2$ 和 $v_3 + w_3$. 同理可得 4 维、5 维或 $n$ 维空间中向量加法法则. 当向量 $bold(w)$ 始于向量 $bold(v)$ 的终点时, 从 $bold(v)$ 的起点到 $bold(w)$ 的终点就是 $bold(v) + bold(w)$, 沿着平行四边形的另一个环绕路线得到 $bold(w) + bold(v)$. 现在的问题是, 两种环绕路线所得的四条边是否在同一个平面内? 答案是肯定的. 环绕平行四边形一周的和 $bold(v) + bold(w) - bold(v) - bold(w)$ 是什么向量?

$bold(u) + 4bold(v) - 2bold(w)$ 是三维空间中三个向量

#dmath[$ bold(u) = mat(delim: "[", 1;0;3), quad bold(v) = mat(delim: "[", 1;2;1), quad bold(w) = mat(delim: "[", 2;3;-1) $]

的一个线性组合:

#grid(columns: (auto, 1fr), column-gutter: 14pt,
  [系数为 $1,4,-2$\ 时的线性组合],
  align(center)[$ mat(delim: "[", 1;0;3) + 4mat(delim: "[", 1;2;1) - 2mat(delim: "[", 2;3;-1) = mat(delim: "[", 1;2;9). $],
)

#hei[几个重要问题]

一个向量 $bold(u)$ 的线性组合只能是数乘 $c bold(u)$, 两个向量 $bold(u), bold(v)$ 的线性组合是 $c bold(u) + d bold(v)$, 三个向量 $bold(u), bold(v), bold(w)$ 的线性组合是 $c bold(u) + d bold(v) + e bold(w)$. 下面将从一个线性组合转而分析全体线性组合. 假设 $bold(u), bold(v), bold(w)$ 是三维空间中的向量, $c, d$ 和 $e$ 可取任意值.

#hei[1.] 形如 $c bold(u)$ 的全体线性组合是什么图形?

#hei[2.] 形如 $c bold(u) + d bold(v)$ 的全体线性组合是什么图形?

#hei[3.] 形如 $c bold(u) + d bold(v) + e bold(w)$ 的全体线性组合是什么图形?

上述问题的答案与向量 $bold(u), bold(v), bold(w)$ 的具体形式有关. 如果它们都是零向量 (一种非常极端的情况), 那么任意形式的线性组合都将是零向量; 如果它们都是非零向量 (随机选定分量), 那么上述三个问题的答案也是本课程的关键内容:

#hei[1.] 形如 $c bold(u)$ 的全体线性组合是一条通过原点 $(0,0,0)$ 的直线;

#hei[2.] 形如 $c bold(u) + d bold(v)$ 的全体线性组合是一个通过原点 $(0,0,0)$ 的平面;

#hei[3.] 形如 $c bold(u) + d bold(v) + e bold(w)$ 的全体线性组合是整个三维空间.

因为 $c$ 可以为 0, 所以零向量 $(0,0,0)$ 在 $c bold(u)$ 生成的直线上; 又因为 $c$ 可以任意取值, 所以该直线可以沿正、反方向无限延长. 同理, 因为 $c$ 与 $d$ 可以同时为 0, 所以零向量 $(0,0,0)$



#pagebreak()
