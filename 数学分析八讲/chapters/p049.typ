#import "../theme.typ": *

完全明白的是，在区间 $[a, b]$ 上一致连续的函数，必然在此区间的每一点处连续（从而在整个区间上连续). 因为由一致连续性，从 $|x - alpha| < delta$ 可以推出 $|f(x) - f(alpha)| < epsilon$，即对数 $f(alpha)$ 的任何邻域 $V : (f(alpha) - epsilon, f(alpha) + epsilon)$，都可以找到数 $alpha$ 的邻域 $U : (alpha - delta, alpha + delta)$，使得当 $x in U$ 就能推得 $f(x) in V$. 这就表明函数 $f(x)$ 当 $x = alpha$ 时连续. 特别重要的是：逆命题也成立. 即从函数 $y$ 在（闭）区间 $[a, b]$ 上的任何一点的连续性可推得其在此区间上的一致连续性. 也就是说，一致连续性的需求并没有把连续函数的类缩小（只要谈到的是闭区间).

#leadLabel[#em[定理 4]]在闭区间 $[a, b]$ 上的每一点处都连续的函数 $y = f(x)$，在此区间上一致连续.

对于开区间定理不成立. 例如，函数 $y = sin frac(1, x)$ 很显然在开区间 $(0, 1)$ 上的每一点处都连续，但在此区间上不一致连续. 因为无论 $delta > 0$ 如何小，总可以（在靠近零处）找到彼此距离小于 $delta$ 的两个点，但在其上函数值的差却大于 1.

#leadLabel[#em[定理 4 的证明]]设函数 $y$ 在区间 $[a, b]$ 上的每一点处都连续，则对此区间的任何一点 $x$，都可以找到数 $delta_x > 0$，使得当 $x_1$ 及 $x_2$ 属于区间 $(x - delta_x, x + delta_x)$ 时有

#dmath[$ |f(x_1) - f(x_2)| < epsilon. $]

#cont[这是因为]

#dmath[$ |f(x_1) - f(x_2)| lt.eq.slant |f(x_1) - f(x)| + |f(x) - f(x_2)|, $]

#cont[当 $delta_x$ 充分小时，可以使]

#dmath[$ |f(x_1) - f(x)| < frac(epsilon, 2), quad |f(x) - f(x_2)| < frac(epsilon, 2), $]

#cont[所以有 $|f(x_1) - f(x_2)| < epsilon$. 我们以 $Delta_x$ 来表示区间 #box[$(x - display(frac(1, 2)) delta_x, x + display(frac(1, 2)) delta_x)$]. 很显然，所有区间 $Delta_x$ 的全体覆盖了区间 $[a, b]$. 因此依照海涅-博雷尔引理就存在着#box[有限多个]区间 $Delta_x$ 的组 $M$ 也覆盖了区间 $[a, b]$. 设 $delta$ 是区间组 $M$ 中最小的一个长度，并设 $x_1$ 及 $x_2$ 为区间 $[a, b]$ 上彼此距离小于 $display(frac(1, 2)) delta$ 的两个任意点. #box[可以断言] #box[$|f(x_1) - f(x_2)| < epsilon$]（即定理 4 所要证明的). 实际上，点 $x_1$ 属于区间组 $M$ 的某个区间 $Delta_x :$ #box[$(x - display(frac(1, 2)) delta_x, x + display(frac(1, 2)) delta_x)$]，但此时距 $x_1$ 不超过 $display(frac(1, 2)) delta lt.eq.slant display(frac(1, 2)) delta_x$ 的点 $x_2$ 属于#box[区间 $(x - delta_x, x + delta_x)$]，其中当然也包含 $x_1$. 按照数 $delta_x$ 的定义，由此我们确实#box[就得到了] #box[$|f(x_1) - f(x_2)| < epsilon$].]

#sec[初等函数的连续性]

你们当然知道：任意多个连续函数的代数和以及积也是连续函数，两个连续函数的商在分母不为零的每个区间上连续. 所有这些命题不仅在局部上，而且在整

#pagebreak(weak: true)
