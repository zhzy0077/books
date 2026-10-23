#import "../theme.typ": *

#hei[40.] (a) 求出 $(dif^4 y)/(dif x^4) = y(x)$ 解全体的一组基;

#h(2em) (b) 求出 $(dif^4 y)/(dif x^4) = y(x) + 1$ 的一个特解, 进而求出全解.

#xiti[挑 战 题]

#hei[41.] 将 $3 times 3$ 单位矩阵写为其余五个三阶置换矩阵的线性组合形式, 然后证明这五个矩阵线性无关. (提示: 设线性组合 $c_1 bold(P)_1 + c_2 bold(P)_2 + ... + c_5 bold(P)_5$ 等于零矩阵, 再考察各位置的元素以证明 $c_1$ 到 $c_5$ 都必为零.) 所有行和与列和全相等的 $3 times 3$ 矩阵构成一个子空间. 这五个置换矩阵就是该子空间的一组基.

#hei[42.] 选取 $R^4$ 中的向量 $bold(x) = (x_1, x_2, x_3, x_4)$. 该向量有 24 种重排形式, 比如 $(x_2, x_1, x_3, x_4), (x_4, x_3, x_1, x_2)$ 等. 这 24 个向量, 包括 $bold(x)$ 自身, 可生成一个子空间 $S$. 当 $S$ 的维数是以下情形时, 分别求出特定向量 $bold(x)$:

#h(2em) (a) 0; #h(2em) (b) 1; #h(2em) (c) 3; #h(2em) (d) 4.

#hei[43.] 空间 $V$ 和 $W$ 的交与和满足

#dmath[$ "dim"(V) + "dim"(W) = "dim"(V inter W) + "dim"(V + W) . $]

#h(2em) 由交空间 $V inter W$ 的一组基 $bold(u)_1, bold(u)_2, ..., bold(u)_r$ 出发, 配以 $bold(v)_1, bold(v)_2, ..., bold(v)_s$ 和 $bold(w)_1, bold(w)_2, ..., bold(w)_t$ 后, 这组基分别被扩充为 $V$ 与 $W$ 的基. 证明 $bold(u)_1, bold(u)_2, ..., bold(u)_r$ 和 $bold(v)_1, bold(v)_2, ..., bold(v)_s$ 以及 $bold(w)_1, bold(w)_2, ..., bold(w)_t$ 合并在一起是线性无关的. 从而得到预期的维数关系

#dmath[$ (r + s) + (r + t) = (r) + (r + s + t) . $]

#hei[44.] 麦克·阿廷 (Mike Artin) 给出了习题 43 中维数公式的一个简洁的高等证明. 对于 $V$ 和 $W$ 中的任何输入向量 $bold(v)$ 和 $bold(w)$ 经 “和变换” 后生成 $bold(v) + bold(w)$. 这些输出向量充满空间 $V + W$. 而零空间由所有满足 $bold(v) = bold(u), bold(w) = -bold(u)$ 的向量对 $(bold(v), bold(w))$ 组成, 其中向量 $bold(u)$ 在 $V inter W$ 中. (此时 $bold(v) + bold(w) = bold(u) - bold(u) = 0$.) 根据计数定理, 有 $"dim"(V + W) + "dim"(V inter W)$ 等于 $"dim"(V) + "dim"(W)$ (此即来自 $V$ 和 $W$ 的输入维数):

#h(6em) 输出维数 + 零空间维数 = 输入维数.

#hei[问] 对于一个秩为 $r$ 的 $m times n$ 矩阵, 上述三个维数分别是什么? 输出为列空间. 此问题将在第 3.5 节得到回答, 读者现在可否分析一二?

#hei[45.] 空间 $R^n$ 中, 设 ($V$ 的维数) + ($W$ 的维数) $> n$. 证明某个非零向量既在 $V$ 中, 也在 $W$ 中.

#hei[46.] 设 $10 times 10$ 矩阵 $bold(A)$ 满足 $bold(A)^2 = bold(O)$ (零矩阵), 因此 $bold(A)$ 左乘 $bold(A)$ 的每一列得到零向量. 这意味着 $bold(A)$ 的列空间含于 \_\_\_\_. 当 $bold(A)$ 的秩为 $r$ 时, 这些子空间的维数 $r <= 10 - r$, 从而秩 $r <= 5$.



#pagebreak()
