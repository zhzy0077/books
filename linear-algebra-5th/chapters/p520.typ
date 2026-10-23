#import "../theme.typ": *

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #hei[$bold(A) > bold(O)$#footnote[译者注: 矩阵、向量的不等关系为对应元素的不等关系.] 时的佩隆-弗罗贝尼乌斯定理]  等式 $bold(A) bold(x) = lambda_max bold(x)$ 中所有的数都是正的.
]

#hei[证]  证明的关键思路是考虑使得 $bold(A) bold(x) >= t bold(x)$ 对某个非负向量 $bold(x)$ (除了 $bold(x) = bold(0)$) 成立的所有实数 $t$. 这里改为研究不等式 $bold(A) bold(x) >= t bold(x)$, 是为了放宽 $t$ 的取值范围, 再考虑其上界. 对于 $t$ 的最大值 $t_max$ (这样的值是可以达到的#footnote[译者注: 设 $T = sum_(i,j) a_(i j)$, 则 $T$ 为 $t$ 的上界, 即 $bold(A) bold(x) < T bold(x)$ 对任意非负向量 $bold(x)$ 均成立.]), 先证明必有等式成立: $bold(A) bold(x) = t_max bold(x)$.

否则, 若 $bold(A) bold(x) >= t_max bold(x)$ 中的等号不成立, 两边左乘 $bold(A)$. 因为 $bold(A)$ 是正的, 所以这将产生一个严格的不等式 $bold(A)^2 bold(x) > t_max bold(A) bold(x)$. 因此正向量 $bold(y) = bold(A) bold(x)$ 满足 $bold(A) bold(y) > t_max bold(y)$, 表示 $t_max$ 可以增加 (因此并非为前述 $t$ 的最大值). 这个矛盾将推出等式 $bold(A) bold(x) = t_max bold(x)$, 这就得到了一个特征值. 因为等式左边的 $bold(A) bold(x)$ 必然为正#footnote[译者注: 已假设 $bold(A) > bold(O)$ 且非负向量 $bold(x) != 0$.], 可知特征向量 $bold(x)$ 是正的.

为了说明没有比 $t_max$ 大的特征值, 设 $bold(A) bold(z) = lambda bold(z)$. 由于 $lambda$ 和 $bold(z)$ 可能涉及负数或复数, 两边取模长: 由 “三角不等式” 得

#dmath[$ |lambda| |bold(z)| = |lambda bold(z)| = |bold(A) bold(z)| <= bold(A) |bold(z)|, $]

其中各向量的绝对值表示对分量取绝对值后得到的向量. 因此 $|lambda|$ 是一个可能的候选数 $t$, 即 $|lambda|$ 不超过 $t_max$——这表明 $t_max$ 必然为 $lambda_max$.

#subsec[人口增长]

将某地区年龄 60 以下的人口分为三个年龄组 (编号为 1, 2, 3): 年龄小于 20、年龄 20 到 39、年龄 40 到 59. 设某一年, 这三组人数分别为 $n_1, n_2, n_3$. 20 年后, 三组人数会由于三个原因而改变: 出生、衰老和死亡, 即

(1) 生育  $n_1^"新" = F_1 n_1 + F_2 n_2 + F_3 n_3$ 给出新的第 1 组;

(2) 存活  $n_2^"新" = P_1 n_1$ 和 $n_3^"新" = P_2 n_2$ 分别给出新的第 2 组和第 3 组,

其中 $F_1, F_2, F_3$ 为三个年龄组的生育率 ($F_2$ 最大). 用莱斯利 (Leslie) 矩阵 $bold(A)$ 关联这些数据, 可设

#dmath[$
  mat(delim: "[", n_1; n_2; n_3)^"新" &= bold(A) mat(delim: "[", n_1; n_2; n_3) = mat(delim: "[", F_1, F_2, F_3; P_1, 0, 0; 0, P_2, 0) mat(delim: "[", n_1; n_2; n_3) \
  &= mat(delim: "[", 0.04, 1.1, 0.01; 0.98, 0, 0; 0, 0.92, 0) mat(delim: "[", n_1; n_2; n_3) .
$]

这是形式最简单的人口投影, 每一步 (相隔 20 年) 的矩阵 $bold(A)$ 都是相同的. 在现实模型中, $bold(A)$ 会随时间变化 (来自环境因素或内部因素). 研究者也许会加入第 4 个年龄组: 年龄大于或等于 60, 但是这里不考虑这种情况.



#pagebreak()