#import "../theme.typ": *

最后，我们将设函数 $phi(x)$ 是单调的，例如是不增的，但关于其符号我们将不作任何假设. 因为函数 $phi(x) - phi(b - 0)$ 在区间 $[a, b]$ 上非负且不增，则应用公式 (10)，我们得到

#dmath[$ integral_a^b f(x)[phi(x) - phi(b - 0)] dif x = [phi(a + 0) - phi(b - 0)] integral_a^xi f(x) dif x, $]

由此得

#dmath[$ integral_a^b f(x) phi(x) dif x = phi(a + 0) integral_a^xi f(x) dif x + phi(b - 0) integral_xi^b f(x) dif x. $]

#cont[这就是一般情形下第二中值定理的表述. 特别地，若函数 $phi(x)$ 在点 $a$ 及点 $b$ 处连续，则有]

#dmath[$ integral_a^b f(x) phi(x) dif x = phi(a) integral_a^xi f(x) dif x + phi(b) integral_xi^b f(x) dif x quad (a < xi < b). $]

#sec[广义积分]

我们现在应当注意到对积分原始思想的两个最重要的推广：带无穷积分限的积分以及无界函数的积分. 两种情形下谈到的都是积分思想本身的实质上的推广，它们不是简单地把原有概念用于新的情况，而是对原有的构造积分的方法再添加一个新的补充的极限过程. 广义积分已经不再是确定形式的和式的确界或极限，而是通常积分的极限.

你们了解，符号 $display(integral_a^(+infinity))$，$display(integral_(-infinity)^b)$ 以及 $display(integral_(-infinity)^(+infinity))$ 分别定义为

#dmath[$ lim_(b -> +infinity) integral_a^b, quad lim_(a -> -infinity) integral_a^b, quad lim_(a -> -infinity \ b -> +infinity) integral_a^b. $]

为更好地研究这些推广的基本思想，我们限于简单的特殊情形. 设函数 $f(x)$ 是正的且不增 (当 $x >= a$ 时) (图 28).

#sourceFigure("assets/p122/fig28.png", figureCaption(28))

#pagebreak(weak: true)
