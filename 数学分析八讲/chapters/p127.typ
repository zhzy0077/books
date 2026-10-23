#import "../theme.typ": *

#dmath[$ m D lt.eq.slant s_T lt.eq.slant S_T lt.eq.slant M D. $]

因此所有 $S_T$ 的集合下有界，而所有 $s_T$ 的集合上有界. 设 $overline(I)$ 和 $underline(I)$ 分别表示所有的和 $S_T$ 的集合的下确界以及所有的和 $s_T$ 的集合的上确界. 我们在这里将这两个数分别称为函数 $f(x, y)$ 在区域 $D$ 上的上积分和下积分.

如果 $overline(I) = underline(I)$，则称函数 $f(x, y)$ 在区域 $D$ 上可积且其积分等于

#dmath[$ overline(I) = underline(I) = I = integral.double_D f(x, y) #math.class("normal", $dif x$) #math.class("normal", $dif y$). $]

这种“二重”积分的全部理论的基础是一系列命题，完全类似于我们在一维情形下所有过的那样. 我们现在只简单地研究它们，只证明它们与我们前面已有情况有所不同的地方.

因为缺少更为方便的术语，我们约定称基本区域 $D$ 分成的那些部分 $Delta_1, Delta_2, dots.c, Delta_n$ 为网眼. 称属于某个网眼的所有可能的一对点之间的距离的上确界为已知网眼的直径. 对每一个分划 $T$，我们将以 $d_T$ 来表示网眼 $Delta_1, Delta_2, dots.c, Delta_n$ 的直径中最大的一个. 很显然，这个量在这里应起到如同量 $l_T$ 在一维情形下所起的那种作用. 最后，如果分划 $T'$ 的每个网眼都整个属于分划 $T$ 的某一个网眼，则分划 $T'$ 是分划 $T$ 的加细.

现在我们来建立 4 个辅助命题，它们与一维情形下所有过的 4 个引理完全吻合.

#leadLabel[引理 I]如果分划 $T'$ 是分划 $T$ 的加细，则有

#dmath[$ S_(T') lt.eq.slant S_T, quad s_(T') gt.eq.slant s_T. $]

证明可以逐字逐句地从一维情形搬过来.

#leadLabel[引理 II]对任何两个分划 $T_1$ 和 $T_2$，

#dmath[$ S_(T_1) gt.eq.slant s_(T_2). $]

我们对一维情形所给的证明可以完全重复一遍. 要说明的只是如何作出另一个分划 $T$，使之成为两个已知分划 $T_1$ 和 $T_2$ 中每一个的加细. 我们简单地就把那些属于分划 $T_1$ 的一个网眼，同时又属于分划 $T_2$ 的一个网眼的所有点的全体作为分划 $T$ 的一个网眼. 把 $T_1, T_2$ 的所有这一切网眼两两组合之后，我们就得到了分划 $T$ 的全部网眼. 依照加细的定义，很显然分划 $T$ 同时既是分划 $T_1$ 的加细，又是分划 $T_2$ 的加细.

#leadLabel[引理 III] $overline(I) gt.eq.slant underline(I).$

此命题如同一维的情形一样，是引理 II 的直接推论.

#leadLabel[引理 IV]对于无论怎样小的 $epsilon > 0$，都存在一个数 $delta > 0$，使得对任何满足 #box[$d_T < delta$] 的分划 $T$，

#pagebreak(weak: true)
