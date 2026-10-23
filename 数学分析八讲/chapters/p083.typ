#import "../theme.typ": *

#figureTextLayout("continuous-corner",
  [
    图 19 给出了函数在个别点处连续却没有导数的一个最简单的例子．但是，这里的右导数和左导数都是存在的．自然就会提出这样的问题：是否始终是这样？很容易看到，有这样的情况：连续函数是在更为深刻的意义下不可微的．图 20 给出了函数 $y = x sin display(frac(1, x))$ 在点 $x = 0$ 附近的状态．因为当 $x -> 0$ 时

    #dmath[$ abs(x sin display(frac(1, x))) < abs(x) -> 0, $]
  ],
  [
    #sourceFigure("assets/p083/fig19.png", figureCaption(19))
  ],
)

#cont[若补充定义当 $x = 0$ 时 $y = 0$，则我们看到函数 $y$ 在点 $0$ 处连续．但因为当 $x$ 趋于零时 (比如从右边) $display(frac(1, x)) -> +infinity$，而且 $sin display(frac(1, x))$ 无穷多次地振动于 $+1$ 和 $-1$ 之间，所以 $x sin display(frac(1, x))$ 在直线 $y = x$ 与 $y = -x$ 之间无穷多次地振荡．(1) 式此时等于 $sin display(frac(1, x))$（令 $alpha = 0$ 及 $h = x$），它以区间 $[-1, 1]$ 上的所有数为部分极限．其上极限是 $1$，下极限是 $-1$．$x -> +0$ 和 $x -> -0$ 时都完全一样．这就是说，在点 $O$ 处既没有右导数，也没有左导数．]

#align(center)[
  #sourceFigure("assets/p083/fig20.png", figureCaption(20))
]

在任何情况下，当 $h -> +0$ 和 $h -> -0$ 时，(1) 式都有上极限和下极限．这 4 个极限都可以称为已给函数在已知点处的导数：其中的每一个都可以是数，也可以是符号 $plus.minus infinity$ 中的一个．这就是说，任何一个函数在任何一点上 (在该点的某个邻域内函数要有定义) 都有 4 个导数：右边的上导数、右边的下导数、左边的上导数、左边的下导数．如果右边 (左边) 的两个导数相同，则函数在已知点有右 (左) 导数．

#pagebreak(weak: true)
