#import "../theme.typ": *

#sourceFigureAtNativeGeometry("assets/p124/fig29.png", figureCaption(29))

同样有下述两个重要的定理，正如你们马上要了解的，它们是级数理论相应命题的完全的类比.

1) 如果当 $a < x < +infinity$ 时 $0 <= f(x) <= phi(x)$，同时 $f(x)$ 和 $phi(x)$ 在任何有限区间 $[a, b]$ $(b > a)$ 上都可积，则从积分

#comparisonIntegralDisplay[$ integral_a^(+infinity) phi(x) dif x $]

#cont[收敛可以推得积分]

#comparisonIntegralDisplay(kind: "short")[$ integral_a^(+infinity) f(x) dif x $]

#cont[收敛.]

该定理可以称为“积分的比较法则”，且与“级数的比较法则”完全类似 (第四讲“正项级数”一节)，同样，该定理的证明可以毫不困难地由那里阐述的思想为基础而独立地进行.

2) 从积分

#comparisonIntegralDisplay(kind: "numbered")[#eqnum(11)[$ integral_a^(+infinity) abs(f(x)) dif x $]]

#cont[的收敛性可推得积分]

#comparisonIntegralDisplay(kind: "numbered")[#eqnum(12)[$ integral_a^(+infinity) f(x) dif x $]]

#cont[的收敛性.]

该定理很显然与第四讲 (“绝对收敛和条件收敛”一节) 中相应的定理完全类似，且可以与它完全相似地证明. 并且如果积分 (11) 收敛，我们也说积分 (12) 是绝对收敛的.

借助于这些定理容易建立更多的时常遇到的积分的收敛性. 例如，从积分

#comparisonIntegralDisplay(kind: "end")[$ integral_1^(+infinity) frac(dif x, x^2) $]

#pagebreak(weak: true)
