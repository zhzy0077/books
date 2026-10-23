#import "../theme.typ": *

#cont[(当这个极限存在时)．当然，应用洛必达法则的必要前提条件是]

#dmath[$ lim_(x -> +infinity) f_1 (x) = lim_(x -> +infinity) f_2 (x) = 0. $]

不仅如此，洛必达法则也可以用来求无穷大量之比的极限，尽管这里其证明有点复杂．为确定起见，设当 $x -> a$ 时 $f_1 (x) -> +infinity$, $f_2 (x) -> +infinity$．此外，像以往一样，我们设 $f'_2(x)$ 在点 $a$ 的某个邻域内不为零．在此邻域中取任意的两个点 $x$ 和 $alpha$，使得 $x$ 位于 $a$ 与 $alpha$ 之间，为确定起见令 $a < x < alpha$ (图 22)；由柯西公式我们得到

#figureTextLayout("mean-value-diagram",
  [
    #eqnum(9)[$ frac(f_1 (x) - f_1 (alpha), f_2 (x) - f_2 (alpha)) = frac(f'_1(xi), f'_2(xi)), $]
  ],
  [
    #sourceFigure("assets/p094/fig22.png", figureCaption(22))
  ],
)

其中 $xi$ 是区间 $[x, alpha]$ 的某个内点．因为从另一方面来讲有

#dmath[$ frac(f_1 (x) - f_1 (alpha), f_2 (x) - f_2 (alpha)) = frac(f_1 (x), f_2 (x)) frac(1 - frac(f_1 (alpha), f_1 (x)), 1 - frac(f_2 (alpha), f_2 (x))), $]

所以等式 (9) 给出

#eqnum(10)[$ frac(f_1 (x), f_2 (x)) = frac(f'_1(xi), f'_2(xi)) frac(1 - frac(f_2 (alpha), f_2 (x)), 1 - frac(f_1 (alpha), f_1 (x))). $]

我们现在来更详细地讲一下点 $x$ 与点 $alpha$ 的选择．如果如我们假设的那样，存在

#dmath[$ lim_(x -> a) frac(f'_1(x), f'_2(x)) = l, $]

则对于无论怎样小的 $epsilon (> 0)$ 都可以找到点 $a$ 的一个邻域 $U$，使得对任何 $x in U$ 都有

#dmath[$ l - epsilon < frac(f'_1(x), f'_2(x)) < l + epsilon, $]

令 $alpha$ (从而也有 $x$) 属于该邻域，这时也有 $xi in U$，因而

#dmath[$ l - epsilon < frac(f'_1(xi), f'_2(xi)) < l + epsilon. $]

现在让 $alpha$ 不变，而 $x$ 将无限趋近于 $a$．因为此时 $f_1 (x) -> +infinity$, $f_2 (x) -> +infinity$，故公式 (10) 右边的第二个因子趋近于 1．因此对点 $a$ 的某邻域 $V$ 中的任何 $x$，$display(frac(1 - frac(f_2 (alpha), f_2 (x)), 1 - frac(f_1 (alpha), f_1 (x))))$ 都将介于 $1 - epsilon$ 与 $1 + epsilon$ 之间，因此对任何 $x in V inter U$，公式 (10) 给出

#dmath[$ (l - epsilon)(1 - epsilon) < frac(f_1 (x), f_2 (x)) < (l + epsilon)(1 + epsilon), $]

#pagebreak(weak: true)
