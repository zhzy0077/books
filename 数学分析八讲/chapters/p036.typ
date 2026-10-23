#import "../theme.typ": *

// 源页公式 (5) 的外层括号为正文大小, 不随内层 \lim 的上下标放大.

#cont[号 $+oo$ 或 $-oo$ 时都是有意义的. 因为若 $a$ 是数, 而 $b$ 是符号 $+oo$, 则点 $(a,b)$ 的邻域是任何形如 $alpha < x < beta, y > gamma$(其中 $alpha < a < beta$, 而 $gamma$ 是任意的) 的区域 (图 8). 若 $a$ 是 $-oo$, 而 $b$ 仍然是 $+oo$, 则 $(a,b)$ 的邻域是任何形如 $x < alpha, y > beta$(其中 $alpha, beta$ 是任意的数) 的区域 (图 9). 以此类推.]

#figureRow(
  sourceFigure("assets/p036/fig8.png", figureCaption(8)),
  sourceFigure("assets/p036/fig9.png", figureCaption(9)),
)

我们说, 当 $x -> a, y -> b$ 时, 函数 $z = f(x,y)$ 以数 (或符号)$c$ 为极限, 是指对于数 (或符号)$c$ 的任何邻域 $V$ 都可以找到点 $(a,b)$ 的邻域 $U$, 使得对任何 $(x,y) in U((x,y) != (a,b))$ 都有 $z in V$. 此事实可记成如下形式:

#eqnum(4)[$ limits(lim)_(x -> a \ y -> b) z = c quad "或者" quad z ->_(x -> a \ y -> b) c. $]

在此定义下, 对一元函数所建立的整个极限理论可以很容易、自然地移植到二维情形. 特别是, 部分极限、上极限和下极限的定义和性质都能保持, 柯西准则及其证明也同样有效.

至于其论证, 则同一维的情形完全类似. 唯一的区别在于: 我们现在要用到二维的辅助定理, 如二维的收缩邻域系定理、二维的海涅—博雷尔引理, 等等. 所有这些辅助定理的证明如同一维情形那样简单, 方法也都一样, 因此我们不必在此对其多加解释.

#hei[必须把逐次极限]

#eqnum(5)[$ limits(lim)_(y -> b)#fixedParen($limits(lim)_(x -> a) z$) quad "及" quad limits(lim)_(x -> a)#fixedParen($limits(lim)_(y -> b) z$) $]

#cont[与二重极限 (4) 严格区分开来. 这里我们有两个逐次的一维极限过程而不是一个二维极限, 与平面 $O x y$ 上的点 $(a,b)$ 的邻域有关的几何图形则完全不见了. 因为要想得到 $limits(lim)_(y -> b)#fixedParen($limits(lim)_(x -> a) z$)$, 我们需先给 $y$ 以任何常数值从而使变量 $z$ 成为变量 $x$ 的一元函数, 再求其当 $x -> a$ 时的极限. 这个极限可以对 $y$ 的某些固定值存在, 而对 $y$ 的另一些值则不存在. 如果对点 (或符号)$b$ 的某个邻域 $V$ 内的所有 $y$ 值都存在, 则在此邻域内 $limits(lim)_(x -> a) f(x,y)$ 将是单变量 $y$ 的函数, 因而我们就可以求其当 $y -> b$ 时的极]

#pagebreak(weak: true)
