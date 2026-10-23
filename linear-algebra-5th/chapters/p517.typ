#import "../theme.typ": *

上述矩阵 $bold(B)$ 的第 2 列列和为 2, 而不是 1, 故 $bold(B)$ 不是马尔可夫矩阵. 当 $bold(A)$ 是马尔可夫矩阵时, 立刻能得到两个事实:

由 (1), 用 $bold(A)$ 左乘 $bold(u)_0 >= 0$ (各分量非负) 将产生非负向量 $bold(u)_1 = bold(A) bold(u)_0 >= 0$;

由 (2), 若 $bold(u)_0$ 的分量求和为 1, 则 $bold(u)_1 = bold(A) bold(u)_0$ 的分量求和也为 1.

#hei[原因]  当 $[1 1 dots.c 1] bold(u)_0 = 1$ 时, $bold(u)_0$ 的分量求和为 1. 由 (2), $bold(A)$ 的每一列也满足该条件. 于是由矩阵乘法 $[1 1 dots.c 1] bold(A) = [1 1 dots.c 1]$,

#dmath[$ bold(A) bold(u)_0 "的分量求和为 1" quad quad [1 1 dots.c 1] bold(A) bold(u)_0 = [1 1 dots.c 1] bold(u)_0 = 1. $]

该事实对 $bold(u)_2 = bold(A) bold(u)_1$ 和 $bold(u)_3 = bold(A) bold(u)_2$ 也成立. 因此向量 $bold(A)^k bold(u)_0$ 都是非负的, 且每个向量分量求和为 1. 这些是 “概率向量”. 极限 $bold(u)_oo$ 也是一个概率向量——但我们必须证明该极限存在. 后续将证明, 对于正的马尔可夫矩阵, $lambda_max = 1$.

#hei[例 1]  设某个月开始时, 某市市区租用车占全市租用车的比例为 $1/50 = 0.02$, 即市区外租用车对应的比例是 0.98, 它们构成初始向量 $bold(u)_0 = (0.02, 0.98)$. 每个月, 80% 的市区租用车仍然留在市区 (即 20% 的市区租用车会离开市区); 同时 5% 的市区外租用车会驶入市区 (即 95% 的市区外租用车留在市区外). 这意味着第一个月结束时, 市区租用车与市区外租用车对应的比例将为用 $bold(u)_0 = (0.02, 0.98)$ 用如下矩阵 $bold(A)$ 左乘:

#dmath[$ "第一个月" quad "由" quad bold(A) = mat(delim: "[", 0.80, 0.05; 0.20, 0.95) quad "推出" quad bold(u)_1 = bold(A) bold(u)_0 = bold(A) mat(delim: "[", 0.02; 0.98) = mat(delim: "[", 0.065; 0.935). $]

注意 $0.065 + 0.935 = 1$, 表示所有的租用车都被记入了. 每一步都用 $bold(A)$ 左乘:

#dmath[$ "下一个月" quad quad bold(u)_2 = bold(A) bold(u)_1 = (0.098\,75, 0.901\,25) = bold(A)^2 bold(u)_0. $]

由于 $bold(A)$ 是正的, 所有这些向量都是正的. 每个向量 $bold(u)_k$ 的所有分量求和均为 1. 第一个分量是 0.02 开始增长, 即租用车不断驶入市区. 长时间以后的情况如何?

本节涉及矩阵的幂. 理解 $bold(A)^k$ 的特征需要将 $bold(A)$ 对角化, 这是对角化的第一个也是最好的一个应用. 尽管 $bold(A)^k$ 可能是复杂的, 但将 $bold(A)$ 对角化得到的对角矩阵 $bold(Lambda)$ 生成的 $bold(Lambda)^k$ 是简单的. 特征向量矩阵 $bold(X)$ 将它们联系起来: $bold(A)^k = bold(X) bold(Lambda)^k bold(X)^(-1)$. 将对角化应用于马尔可夫矩阵时使用了特征值 ($bold(A)$ 的对角线元素) 和特征向量 ($bold(X)$ 的列向量). 下面证明 $bold(u)_oo$ 是 $bold(A)$ 的对应于特征值 $lambda = 1$ 的特征向量.

由于 $bold(A)$ 的每列元素求和为 1, 各 $bold(u)_k$ 的分量之和为固定值, 如同移动租用车或人口, 不会导致汽车或人突然出现 (或消失). 若向量各分量求和为 1, 用矩阵 $bold(A)$ 左乘可使所得向量保持这种性质. 问题是用矩阵 $bold(A)$ 左乘 $k$ 次之后所得向量的分量是如何分布的——这需要研究 $bold(A)^k$ 的特点.

#hei[解]  $bold(A)^k bold(u)_0$ 给出了第 $k$ 个月末市区和市区外各自租用车的比例. 下面将 $bold(A)$ 对角化以理解 $bold(A)^k$ 的特点. $bold(A)$ 的特征值为 $lambda = 1$ 和 0.75 (还为 1.75).

#dmath[$ bold(A) bold(x) = lambda bold(x) quad quad bold(A) mat(delim: "[", 0.2; 0.8) = 1 mat(delim: "[", 0.2; 0.8), quad bold(A) mat(delim: "[", -1; 1) = 0.75 mat(delim: "[", -1; 1). $]

#pagebreak()