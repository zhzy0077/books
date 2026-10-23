#import "../theme.typ": *

#v(6pt)
#grid(
  columns: (1fr, auto),
  align: (right + horizon, right + horizon),
  [#line(length: 100%, stroke: 0.8pt)],
  barHead[■ 范例解析],
)

#v(6pt)
#h(1em) #hei[3.1 A]　已知三个不同向量 $bold(b)_1, bold(b)_2, bold(b)_3$, 构造一个矩阵 $bold(A)$ 使得 $bold(A) bold(x) = bold(b)_1$ 与 $bold(A) bold(x) = bold(b)_2$ 可解, 但 $bold(A) bold(x) = bold(b)_3$ 不可解. 如何确定这是否可行? 如何构造 $bold(A)$?

#h(1em) #hei[解]　当 $bold(b)_1$ 与 $bold(b)_2$ 属于 $bold(A)$ 的列空间时, $bold(A) bold(x) = bold(b)_1$ 与 $bold(A) bold(x) = bold(b)_2$ 是可解的. 最快的方式是令 $bold(b)_1$ 与 $bold(b)_2$ 为 $bold(A)$ 的两列, 那么解分别为 $bold(x) = (1,0)$ 与 $bold(x) = (0,1)$.

#h(1em) 此外, 要求 $bold(A) bold(x) = bold(b)_3$ 不可解. 因此不要扩大列空间了! 只考虑 $bold(b)_1$ 与 $bold(b)_2$ 两列的线性组合. 问题变为

#dmath[$ "方程组" bold(A) bold(x) = [bold(b)_1 quad bold(b)_2] mat(x_1; x_2) = bold(b)_3 "可解吗?" bold(b)_3 "是" bold(b)_1 "与" bold(b)_2 "的线性组合吗?" $]

#h(1em) 若回答是否定的, 就得到了所求的矩阵 $bold(A)$. 若回答是肯定的, 则构造 $bold(A)$ 是不可能的. 此时, 因为列空间 $bold(C) (bold(A))$ 包括 $bold(b)_1$ 与 $bold(b)_2$, 所以该空间必包括它们全部的线性组合. 从而 $bold(b)_3$ 必然属于列空间 $bold(C) (bold(A))$, $bold(A) bold(x) = bold(b)_3$ 也必然可解.

#h(1em) #hei[3.1 B]　描述以下每个向量空间 $V_i (i = 1,2,3,4)$ 的一个子空间 $S$, 以及 $S$ 的一个子空间 $S S$:

#dmath[$
  V_1 "为" (1,1,0,0), (1,1,1,0) "和" (1,1,1,1) "的全部线性组合;" \
  V_2 "为所有垂直于" bold(u) = (1,2,1) "的向量, 即满足" bold(u) dot bold(v) = 0 "的所有" bold(v); \
  V_3 "为所有" 2 times 2 "对称矩阵 (" bold(M) "的一个子空间);" \
  V_4 "为方程" (dif^4 y)/(dif x^4) = 0 "的全部解 (" bold(F) "的一个子空间)."
$]

#h(1em) 用两种方式描述每个 $V_i$: “…… 的全部线性组合” “方程 …… 的全部解”.

#h(1em) #hei[解]　$V_1$ 由三个向量生成. 子空间 $S$ 为前两个向量 $(1,1,0,0)$ 和 $(1,1,1,0)$ 的全部线性组合. $S$ 的子空间 $S S$ 为第一个向量的全部线性组合 $(c,c,0,0)$. 故有多种可选方案.

#h(1em) $V_2$ 的子空间 $S$ 是过 $(1,-1,1)$ 的直线, 该直线正交于 $bold(u)$. 向量 $bold(x) = (0,0,0)$ 在 $S$ 中, 且其所有倍数 $c bold(x)$ 给出了最小子空间 $S S = bold(Z)$.

#h(1em) 全体 $2 times 2$ 对角矩阵构成全体 $2 times 2$ 对称矩阵 $V_3$ 的一个子空间 $S$. 全体 $2 times 2$ 纯量矩阵 $c bold(I)$ (单位矩阵 $bold(I)$ 的倍数) 构成全体 $2 times 2$ 对角矩阵 $S$ 的子空间 $S S$.

#h(1em) $V_4$ 包括所有三次多项式 $y = a + b x + c x^2 + d x^3$, 它们满足 $(dif^4 y)/(dif x^4) = 0$. 全体二次多项式给出子空间 $S$. 全体线性多项式是 $S S$ 的一种选择. 全体常数可为 $S S S$($S S$ 的子空间).

#h(1em) 上述四种情形中, 也可取 $S$ 为 $V$ 本身, 而 $S S$ 为零子空间 $Z$.

#h(1em) 每个 $V_i$ 可描述为 “…… 的全部线性组合” 以及 “…… 的全部解”:

#h(1em) $V_1$ 为 3 个已知向量的全部线性组合, $V_1$ 为分量方程 $v_1 - v_2 = 0$ 的全部解;

#h(1em) $V_2$ 为 $(1,0,-1)$ 与 $(1,-1,1)$ 的全部线性组合, $V_2$ 为 $bold(u) dot bold(v) = 0$ 的全部解;

#h(1em) $V_3$ 为 $mat(delim: "[", 1, 0; 0, 0), mat(delim: "[", 0, 1; 1, 0), mat(delim: "[", 0, 0; 0, 1)$ 的全部线性组合, $V_3$ 为满足 $b = c$ 的全部 $mat(delim: "[", a, b; c, d)$;

#h(1em) $V_4$ 为 $1, x, x^2, x^3$ 的全部线性组合, $V_4$ 为方程 $(dif^4 y)/(dif x^4) = 0$ 的全部解.



#pagebreak()
