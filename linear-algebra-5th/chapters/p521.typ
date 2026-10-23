#import "../theme.typ": *
#set par(spacing: 13.5pt, leading: 12.5pt)

矩阵 $bold(A)$ 满足 $bold(A) >= bold(O)$ 但并不满足 $bold(A) > bold(O)$. 由于 $bold(A)^3 > bold(O)$, 前述正矩阵情形的佩隆-弗罗贝尼乌斯定理仍然有效. $bold(A)$ 的最大特征值 $lambda_max approx 1.06$. 为观察各组的人数变化, 如第 2 组的, 不妨设第 2 组人数初值为 $n_2 = 1$ (以下为近似值):

$ "eig"(bold(A)) = 1.06, -1.01, -0.01, $

$ bold(A)^2 = mat(delim: "[", 1.08, 0.05, 0.00; 0.04, 1.08, 0.01; 0.90, 0, 0), quad bold(A)^3 = mat(delim: "[", 0.10, 1.19, 0.01; 1.06, 0.05, 0.00; 0.04, 0.99, 0.01). $

设 $bold(u)_0 = (0, 1, 0)$ 并计算 $bold(A) bold(u)_0, bold(A)^2 bold(u)_0, dots.c$ 可以更快地看出相关数据. 经过 20 年, 第 2 组将生育 1.1 (年龄小于 20), 并且存活 0.92 (年龄 40 到 59), $bold(u)_1 = (1.1, 0, 0.92)$ 对应 $bold(A)$ 的第 2 列. 同理, 再过 20 年, $bold(u)_2 = bold(A) bold(u)_1 = bold(A)^2 bold(u)_0$ 为 $bold(A)^2$ 的第 2 列. 对不同的初值 $bold(u)_0$ 计算 $bold(A) bold(u)_0, bold(A)^2 bold(u)_0, dots.c$ 时, 开始的一些数值 (短期内各组人口数) 很大程度上依赖于 $bold(u)_0$. 但无论 $bold(u)_0$ 取值如何, 渐近增长率 $lambda_max$ 都是相同的. 它对应的特征向量 $bold(x) = (0.63, 0.58, 0.51)$ 表明所有三个组的人口数一起稳定增长.

Caswell 的书 #emph[Matrix Population Models] 中强调了敏感性分析. 上述模型必然不会是完全准确的. 若矩阵中的各 $F_i$ 或 $P_j$ 变化 10%, $lambda_max$ 是否会小于 1 (这意味着人口灭绝)? 本节习题 19 将证明: 由矩阵变化 $Delta bold(A)$ 将导致特征值变化 $Delta lambda = bold(y)^T (Delta bold(A)) bold(x)$. 这里 $bold(x)$ 和 $bold(y)^T$ 分别是 $bold(A)$ 的右特征向量和左特征向量, 即存在 $d, lambda$, 使得 $bold(A) bold(x) = d bold(x)$, $bold(A)^T bold(y) = lambda bold(y)$.

#subsec[经济学中的线性代数: 消耗矩阵]

这里并不打算详细论述经济学中线性代数, 仅给出关于消耗矩阵的简短介绍. 消耗矩阵记录的是为了得到一个单位的产出, 每种投入各需要多少单位. 该矩阵体现在经济的制造业方面.

#hei[消耗矩阵]  设有 $n$ 个工业部门, 如化学品、食品和石油等. 生产 1 单位化学品需要 0.2 单位化学品、0.3 单位食品和 0.4 单位石油. 将这些数填入消耗矩阵 $bold(A)$ 的 1 行, 例如 (这里只考虑化学品、食品和石油),

$ mat(delim: "[", "化学品产出"; "食品产出"; "石油产出") = mat(delim: "[", 0.2, 0.3, 0.4; 0.4, 0.4, 0.1; 0.5, 0.1, 0.3) mat(delim: "[", "化学品投入"; "食品投入"; "石油投入"). $

$bold(A)$ 的第 2 行显示了生产食品所需的投入——化学品和食品消耗较大, 而石油消耗较少. $bold(A)$ 的第 3 行表示提炼 1 单位石油所需的投入. 1958 年美国的实际消耗矩阵包含 83 个工业部门. 1990 年的模型更大、更精确. 这里选择的消耗矩阵有一个便于使用的特征向量.

现在问题来了: 这种经济能否满足对化学品、食品和石油各自的需求 $y_1, y_2, y_3$? 为了满足需求, 投入 $p_1, p_2, p_3$ 将必须更高——因为生产 $bold(y)$ 过程中, 部分 $bold(p)$ 被消耗了. 投入为 $bold(p)$, 消耗为 $bold(A) bold(p)$, 则产出为 $bold(p) - bold(A) bold(p)$. 这个净产量为需求 $bold(y)$:

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 15pt), width: 100%, above: 16pt, below: 16pt)[#set par(first-line-indent: 0em); #hei[问题]#h(2em)求一个向量 $bold(p)$ 使得 $bold(p) - bold(A) bold(p) = bold(y)$, 即 $bold(p) = (bold(I) - bold(A))^(-1) bold(y)$.]

#pagebreak()