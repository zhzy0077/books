#import "../theme.typ": *

#cont[在每一点上以其“被积函数”$f(x)$ 为导数，只要该函数在这一点连续(特别地，对连续的被积函数，$F(x)$ 处处以 $f(x)$ 为导数)．证明很简单：如果 $h > 0$ 且 $abs(h)$ 充分小($h < 0$ 时的证明类似，所以略去)，则当 $x - abs(h) lt.eq.slant u lt.eq.slant x + abs(h)$ 时有]

#dmath[$ f(x) - epsilon lt.eq.slant f(u) lt.eq.slant f(x) + epsilon, $]

其中 $epsilon$ 是预先选定的任意小的正数．由此得

#dmath[$ h f(x) - epsilon abs(h) lt.eq.slant integral_x^(x + h) f(u) dif u lt.eq.slant h f(x) + epsilon abs(h), $]

此即表明

#dmath[$ f(x) - epsilon lt.eq.slant inline(frac(1, h)) integral_x^(x + h) f(u) dif u = frac(F(x + h) - F(x), h) lt.eq.slant f(x) + epsilon. $]

由于 $epsilon$ 为任意小，由此实际上推得#footnote[
  原书没有分 $h > 0$ 与 $h < 0$ 两种情况，这时不一定有#footnoteTranslatorNote(equation: [#box($ display(integral_x^(x + h)) f(u) dif u lt.eq.slant h f(x) + epsilon abs(h). $)])[—— 译者注]
]

#dmath[$ F'(x) = f(x). $]

由于有这种联系，任何微分法则都可给出某个积分法则，只要把微分法则反过来看就行了．不但如此，微分学的许多一般方法至少允许部分的反转而得出重要的一般的积分方法．例如代数和的微分法则完全可以反转来给出代数和的积分法则(它通常也能容易地从积分的原始定义中导出)，乘积的微分法则导出所谓的“分部积分法”，这种方法的力量你们都已熟知了．“函数的函数”的微分法则的反转就是你们所熟知的更强的方法：“积分的变量变换法”．

应用所有这些方法就可以积分大量的初等函数(特别地，是所有的有理函数)．如果说对于许多初等函数我们还不会写出它们的积分，这并不是因为我们所用的方法力量不够，而是另有原因，而且这种原因又具有无比巨大的原则意义．如果说求初等函数的微分时，我们在任何情况下总能再得到初等函数的话，则在初等函数的积分时则完全是另一回事了．常常是这样的：这类函数的积分尽管当然是存在的，但却不是初等函数并因此不能用任何初等公式表示．例如 $display(frac(1, "lg" x))$ 和 $display(frac(1, sqrt(x^3 + 1)))$ 这样简单的函数的积分就如此．有必要研究这类新函数，但对此(至少在最初)除了利用定义它的积分来研究之外，没有任何其他工具．

#sec[中值定理]

在微分学中，通常把拉格朗日定理称为中值定理：如果函数 $f(x)$ 在区间 $[a, b]$ 上连续并且在其内可微，则存在该区间的一个内点 $c$，使得

#pagebreak(weak: true)
