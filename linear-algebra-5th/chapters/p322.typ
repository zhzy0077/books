#import "../theme.typ": *

任何二维实向量 $bold(x)$ 用 $bold(Q)$ 左乘后逆时针旋转了 90°, 所得的 $bold(Q) bold(x)$ 一定与 $bold(x)$ 方向不同 (不考虑 $bold(x) = bold(0)$). 这里不可能解出实特征向量, 除非考虑虚数. 下面就是这么做的.

想了解 $i = sqrt(-1)$ 的作用, 可考察 $bold(Q)^2$, 即 $-bold(I)$. 如果 $bold(Q)$ 对应逆时针旋转 90°, 那么 $bold(Q)^2$ 就对应逆时针旋转 180°, 后者的特征值为 $-1$ 和 $-1$. (无疑有 $-bold(I) bold(x) = -1 bold(x)$.) $bold(Q)$ 平方将使每个 $lambda$ 平方, 因此必有 $lambda^2 = -1$. 又因为 $i^2 = -1$, 所以 90° 旋转矩阵 $bold(Q)$ 的特征值为 $+i$ 与 $-i$.

这些 $lambda$ 也可像通常那样由 $det(bold(Q) - lambda bold(I)) = 0$ 求得. 该方程为 $lambda^2 + 1 = 0$, 它的根是 $i$ 和 $-i$. 在特征向量中也会遇到虚数 $i$:

#dmath[$ "复特征向量" quad mat(delim: "[", 0, -1; 1, 0) mat(delim: "[", 1; i) = -i mat(delim: "[", 1; i), quad mat(delim: "[", 0, -1; 1, 0) mat(delim: "[", i; 1) = i mat(delim: "[", i; 1) . $]

上面两式表面上的含义为, 复特征向量 $bold(x)_1 = (1, i)$ 和 $bold(x)_2 = (i, 1)$ “逆时针旋转 90°” 时, 方向不变. 这里的 “逆时针旋转” 已不能按二维平面的情形来理解. 上例也表达了一个非常重要的结论, 即实矩阵也可能具有复特征值和复特征向量. 不寻常的特征值 $i$ 和 $-i$ 也说明了 $bold(Q)$ 的两条特性:

(1) $bold(Q)$ 为正交矩阵, 因此每个 $lambda$ 的模为 $|lambda| = 1$;

(2) $bold(Q)$ 为反对称矩阵, 因此每个 $lambda$ 是纯虚数.

对称矩阵 ($bold(S)^T = bold(S)$) 可比作实数, 反对称矩阵 ($bold(A)^T = -bold(A)$) 可比作虚数, 正交矩阵 ($bold(Q)^T bold(Q) = bold(I)$) 对应着满足 $|lambda| = 1$ 的复数. 对于 $bold(S)$, $bold(A)$ 以及 $bold(Q)$ 的特征值, 前述结论不仅是类比, 更是将于第 6.4 节证明的事实.

所有这些特殊矩阵的特征向量都是正交的. 在合理的定义下, $(i, 1)$ 与 $(1, i)$ 也是正交的 (第 9 章将介绍复向量的点积).

#hei[AB 与 A+B 的特征值]

关于 $bold(A) bold(B)$ 特征值, 通常会猜想由 $bold(A)$, $bold(B)$ 各自的特征值相乘可得, 但是这一猜测并不正确. $bold(A)$ 的特征值 $lambda$ 乘 $bold(B)$ 的特征值 $beta$ 通常得不到 $bold(A) bold(B)$ 的特征值:

#grid(
  columns: (1fr, auto),
  align: (center, right),
  $ "错误的证明" quad bold(A) bold(B) bold(x) = bold(A) beta bold(x) = beta bold(A) bold(x) = beta lambda bold(x) . $,
  [(8)],
)

上式中, $beta$ 乘 $lambda$ 好像是 $bold(A) bold(B)$ 的特征值. 当 $bold(x)$ 既是 $bold(A)$ 也是 $bold(B)$ 的特征向量时, 该证明没错. 上述证明的错误在于认为 $bold(A)$ 与 $bold(B)$ 具有相同的特征向量 $bold(x)$. 一般情况并非如此, $bold(A)$ 的特征向量往往不是 $bold(B)$ 的特征向量. 例如, $bold(A)$ 和 $bold(B)$ 的特征值可能全为零, 而 1 却是 $bold(A) bold(B)$ 的一个特征值:

#dmath[$ bold(A) = mat(delim: "[", 0, 1; 0, 0), quad bold(B) = mat(delim: "[", 0, 0; 1, 0) ; $]

#dmath[$ bold(A) bold(B) = mat(delim: "[", 1, 0; 0, 0), quad bold(A) + bold(B) = mat(delim: "[", 0, 1; 1, 0) . $]

基于同样的原因, $bold(A) + bold(B)$ 的特征值通常不等于 $lambda + beta$. 这里 $lambda + beta = 0$, 而 $bold(A) + bold(B)$ 的特征值为 1 和 $-1$ (它们相加为零).

#pagebreak()