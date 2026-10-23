#import "../theme.typ": *

与有限和的情况一样？容易看出，至今为止，我们所考察的所有例子中，等式 (13) 实际上是成立的. 当然，它等价于下述两个等式之一：

#figureTextLayout("nonintegrable-series",
  [
    #dmath[$ &limits(lim)_(n -> oo) integral_a^b S_n (x) dif x = integral_a^b S(x) dif x, \
      &limits(lim)_(n -> oo) integral_a^b tau_n (x) dif x = 0. $]

    但是应该指出，这些关系并不总是成立的. 首先可以看一个和函数 $S(x)$ 在区间 $[a, b]$ 上不可积的例子. 为此只要选 (图 17) 下述例子就足够了：

    #dmath[$ S_n (x) = cases(
      n^2 x#sym.comma quad "当" 0 <= x <= frac(1, n)#sym.comma,
      1/x#sym.comma quad "当" frac(1, n) <= x <= 1
    ) $]

    (关于 $u_n (x) = S_n (x) - S_(n-1) (x)$ 相应的表达式，如果方便的话，你们自己容易做出). 和函数

    #dmath[$ S(x) = cases(
      1/x#sym.comma quad "当" 0 < x <= 1#sym.comma,
      0#sym.comma quad "当" x = 0
    ) $]

    正如你们所了解的，在区间 [0,1] 上是不可积的 (因为当 $a -> 0$ 时 $display(integral_a^1 S(s) dif x = ln frac(1, a))$ 趋于 $oo$).
  ],
  [
    #sourceFigure("assets/p074/fig17.png", figureCaption(17))
  ],
)

#figureTextLayout("integral-limit-series",
  [
    #sourceFigure("assets/p074/fig18.png", figureCaption(18))
  ],
  [
    但可能有这样的情形发生：函数 $S(x)$ 在区间 $[a, b]$ 上可积，而等式 (13) 却不成立. 例如，令 (图 18)

    #dmath[$ S_n (x) = n x^(n-1) (1 - x^(n-1)) quad (n >= 1, 0 <= x <= 1). $]

    因为当 $0 <= x < 1$ 时 $limits(lim)_(n -> oo) n x^(n-1) = 0$#footnote[初等的证明是这样的：令 $0 < x < 1, 1/x = z, z - 1 = y (> 0)$. 此时 $z^n = (1 + y)^n > 1 + n y + frac(n(n-1), 2) y^2 > frac(n(n-1), 2) y^2$，故 $n x^n = frac(n, z^n) < frac(2, (n-1) y^2)$ (当 $n -> oo$ 时).]，故 $S(x) = 0 (0 <= x <= 1)$. 于是有

    #dmath[$ integral_0^1 S(x) dif x = 0. $]

    但是容易计算

    #dmath[$ integral_0^1 S_n (x) dif x = n integral_0^1 (x^(n-1) - x^(2n-2)) dif x = 1 - frac(n, 2n-1), $]
  ],
)

#pagebreak(weak: true)
