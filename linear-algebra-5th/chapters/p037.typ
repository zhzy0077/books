#import "../theme.typ": *

#subsec[关于计算机代数计算]

MATLAB, Python 和 Julia 可对整个向量直接计算, 无需逐个计算分量. 当定义了向量 $bold(v)$ 与 $bold(w)$ 后可直接计算得到向量 $bold(v) + bold(w)$. 以 MATLAB 为例, 通常以行向量的形式输入 $bold(v)$ 与 $bold(w)$——符号' 可将它们转置为列向量的形式. 编程时将 $2 bold(v) + 3 bold(w)$ 写成 `2*v+3*w`. 在语句末尾输入分号“;”时不显示该语句的计算结果.

#align(center)[#hei[MATLAB] \ \ \ `v = [2  3  4]'; w = [1  1  1]'; u = 2 * v + 3 * w`]

对向量 $bold(v) = (1,2), bold(w) = (3,4)$, 点积 $bold(v) dot bold(w)$ 是是用一个行向量左乘一个列向量 (用 `*` 而非 ·):

#yaodian[
  #align(center)[点积 $bold(v) dot bold(w)$ 通常写成 $mat(delim: "[", 1, 2) mat(delim: "[", 3;4)$ 或 `v' * w`, 而不是 $mat(delim: "[", 1;2) dot mat(delim: "[", 3;4)$.]
]

MATLAB 中计算向量 $bold(v)$ 的长度使用函数 `norm(v)`, 也就是 `sqrt(v'*v)`. 然后就可以结合点积 `v'*w` 来计算夹角的余弦 (下面记为 `cosine`) 以及对应的角度 (下面记为 `angle`, 采用弧度制):

#yaodian[
  #grid(columns: (auto, 1fr), column-gutter: 16pt,
    [#hei[余弦公式]\ #hei[反余弦]],
    [ `cosine = v'* w/(norm (v) * norm (w)),` \ `angle = acos (cosine).` ],
  )
]

MATLAB 中可以用一个 M 文件创建新的函数 `cosine(v, w)`. Python 和 Julia 都是开源的.

#barHead[■ 要点回顾]

#hei[1.] 计算点积 $bold(v) dot bold(w)$ 时, 先依次将对应的分量 $v_i$ 与 $w_i$ 相乘, 再对所有 $v_i w_i$ 求和.

#hei[2.] 长度 $norm(bold(v))$ 是 $bold(v) dot bold(v)$ 的算术平方根, 而 $bold(u) = bold(v)/norm(bold(v))$ 是一个单位向量: 长度为 1.

#hei[3.] 当向量 $bold(v)$ 与 $bold(w)$ 垂直时, 点积 $bold(v) dot bold(w) = 0$.

#hei[4.] 任意两个非零向量夹角 $theta$ 的余弦值不会超过 1:

#dmath[$ cos theta = (bold(v) dot bold(w))/(norm(bold(v)) norm(bold(w))), quad $ 施瓦茨不等式 $ |bold(v) dot bold(w)| <= norm(bold(v)) norm(bold(w)). $]

#barHead[■ 范例解析]

#ti[1.2 A][ 已知向量 $bold(v) = (3,4)$ 与 $bold(w) = (4,3)$, 请利用 $bold(v) dot bold(w)$ 验证施瓦茨不等式, 利用 $norm(bold(v) + bold(w))$ 验证三角不等式. 计算向量 $bold(v)$ 与 $bold(w)$ 的夹角余弦 $cos theta$. 向量 $bold(v)$ 与 $bold(w)$ 在什么情况下会使得等式 $|bold(v) dot bold(w)| = norm(bold(v)) norm(bold(w))$ 与 $norm(bold(v) + bold(w)) = norm(bold(v)) + norm(bold(w))$ 成立?]



#pagebreak()
