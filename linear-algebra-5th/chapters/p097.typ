#import "../theme.typ": *

当 $bold(A)$ 和 $bold(B)$ 不是方阵时, $bold(A) bold(B)$ 与 $bold(B) bold(A)$ 即使都有意义也不同型. 若二者都是方阵, 几乎任意示例都能说明 $bold(A) bold(B)$ 与 $bold(B) bold(A)$ 不相等, 例如,

#dmath[$ bold(A) bold(B) = mat(delim: "[", 0, 0; 1, 0) mat(delim: "[", 0, 1; 0, 0) = mat(delim: "[", 0, 0; 0, 1) , $]
#dmath[$ bold(B) bold(A) = mat(delim: "[", 0, 1; 0, 0) mat(delim: "[", 0, 0; 1, 0) = mat(delim: "[", 1, 0; 0, 0) . $]

但是, 对与方阵 $bold(A)$ 同阶的单位矩阵 $bold(I)$ 有 $bold(A) bold(I) = bold(I) bold(A)$, 故 $bold(I)$ 进而 $c bold(I)$ 与所有同阶的方阵相乘时可交换. 此外, 也仅有 $c bold(I)$ 满足这一性质.

定律 $bold(A) (bold(B) + bold(C)) = bold(A) bold(B) + bold(A) bold(C)$ 可以通过每次计算一列来证明: 从第 1 列 $bold(A) (bold(b) + bold(c)) = bold(A) bold(b) + bold(A) bold(c)$ 开始依次计算. 这是研究线性代数的关键——线性性质.

定律 $bold(A) (bold(B) bold(C)) = (bold(A) bold(B)) bold(C)$ 意味着可以先计算 $bold(B) bold(C)$, 也可以先计算 $bold(A) bold(B)$. 直接证明这个定律有点棘手 (参考习题 37), 但这个定律非常有用, 是矩阵相乘的关键, 值得专门强调.

考虑一个特例: 当方阵 $bold(A) = bold(B) = bold(C)$ 时, 由上述运算定律有 $bold(A) (bold(A)^2) = (bold(A)^2) bold(A)$, 结果记为 $bold(A)^3$. 方阵的幂 $bold(A)^p$ 遵守以下与数字幂相似的法则: 设

#dmath[$ bold(A)^p = bold(A) bold(A) bold(A) dots.c bold(A) quad (p "个因子") , $]

则

#dmath[$ (bold(A)^p)(bold(A)^q) = bold(A)^(p+q), quad (bold(A)^p)^q = bold(A)^(p q) . $]

以上是与指数有关的常规定律. 例如, $bold(A)^3$ 左乘 $bold(A)^4$ 得 $bold(A)^7$ (7 个 $bold(A)$ 相乘), 而 $(bold(A)^3)^4$ 等于 $bold(A)^(12)$ (12 个 $bold(A)$ 相乘). 当 $p$ 和 $q$ 是 0 或负数时, 这些定律仍然成立, 此时规定 $bold(A)$ 的 “$-1$ 次幂” 是逆矩阵 $bold(A)^(-1)$, 而 $bold(A)^0 = bold(I)$ 是单位矩阵, 就如同 $2^0 = 1$.

数字运算中 $a^(-1)$ 是 $1/a$, 而矩阵 $bold(A)$ 的逆矩阵记为 $bold(A)^(-1)$. (逆矩阵不是 $bold(I) / bold(A)$, 不过 MATLAB 指令中可以这样写.) 除 $a = 0$ 外, 每个数字都有乘法逆 (即倒数), 而确定矩阵 $bold(A)$ 是否可逆是线性代数中心问题之一, 第 2.5 节将学习有关知识. 本节主要学习与矩阵乘法有关的运算定律.

#subsec[分块矩阵及其乘法运算]

关于矩阵运算还有一种处理方式: 将矩阵按需要分割为子块 (相当于更小的矩阵). 以下是一个 $4 times 6$ 矩阵被分割成 6 个子块, 其中每个子块都是 $2 times 2$ 单位矩阵 $bold(I)$:

#grid(columns: (auto, auto), column-gutter: 3em, align: (right+horizon, center+horizon),
  [将 $4 times 6$ 矩阵 \ 按 $2 times 2$ 子块分割 \ 得 $2 times 3$ 分块矩阵],
  [$ bold(A) = mat(delim: "[", 1, 0, 1, 0, 1, 0; 0, 1, 0, 1, 0, 1; 1, 0, 1, 0, 1, 0; 0, 1, 0, 1, 0, 1; augment: #(vline: (2, 4))) = mat(delim: "[", bold(I), bold(I), bold(I); bold(I), bold(I), bold(I)) . $],
)

若 $bold(B)$ 也是 $4 times 6$ 矩阵且采用与上式相同的分块方法, 在计算 $bold(A) + bold(B)$ 时就能每次将对应的一对子块相加.



#pagebreak()
