#import "../theme.typ": *

#cont[论，这个理论现在已得到广泛的发展，并且包含了数学分析中许多重要、深刻的事实．#footnote[作者这里讲到的理论现在通常称为调和分析，它不但是当前分析数学的主流之一，而且几乎在一切应用领域中成了不可缺少的工具．—— 译者注]]

#sec[傅里叶系数]

在幂级数的情形我们已经看到，级数的系数很容易确定，只要知道被展开的函数及其导数在 $x = 0$ 时的值就行了．对于三角级数自然也首先提出这个问题．设函数 $f(x)$ 在区间 $[-pi, pi]$ 上能展开为一致收敛的级数 (4)．对等式

#dmath[$ f(x) = frac(a_0, 2) + sum_(n=1)^oo (a_n cos n x + b_n sin n x) $]

#cont[的两边乘以 $cos k x$，其中 $k$ 是数列 $0, 1, 2, dots.c$ 中的一个元素．我们很容易地得知，函数 $f(x) cos k x$ 也能展开为某个一致收敛的级数，所以对所得得到的等式两边在区间 $[-pi, pi]$ 上积分时，对右边的级数我们可以逐项积分（参见第四讲“函数级数”一节）．但由于三角函数系的正交性，除了唯一项外，该级数的其他项的积分都等于零，这一项就是积分]

#eqnum(6)[$ integral_(-pi)^pi a_k cos^2 k x dif x = a_k integral_(-pi)^pi frac(1 + cos 2 k x, 2) dif x = pi a_k, $]

#cont[这里我们设 $k > 0$．当 $k = 0$ 时我们得到了唯一的不为零的积分]

#dmath[$ integral_(-pi)^pi frac(a_0, 2) dif x = pi a_0, $]

#cont[所以一般的公式 (6) 也包括了这种情况（正是为此目的级数 (4) 的第一项通常才写为 #ifrac($a_0$, $2$)）．这也就是说，对任何 $k gt.eq.slant 0$ 我们有]

#dmath[$ integral_(-pi)^pi f(x) cos k x dif x = pi a_k, $]

#cont[或者]

#eqnum(7)[$ a_k = frac(1, pi) integral_(-pi)^pi f(x) cos k x dif x quad (k = 0, 1, 2, dots.c); $]

#cont[以类似的方式也可得到]

#eqnum(8)[$ b_k = frac(1, pi) integral_(-pi)^pi f(x) sin k x dif x quad (k = 1, 2, dots.c). $]

#cont[公式 (7) 和 (8) 也就解决了我们提出的问题——将级数 (4) 的系数用该级数所表示的函数表示出来．这些公式甚至都不需要函数 $f(x)$ 一阶导数的存在．对任何可积函数，系数 $a_k$ 和 $b_k$ 都可以通过这些公式确定．它们通常被称为这个可积函数 $f(x)$]

#pagebreak(weak: true)

// 源页此处印作“所以对所得得到的等式两边”，多出一个“得”字，按原样录入。
