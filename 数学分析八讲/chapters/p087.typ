#import "../theme.typ": *

#cont[而商 $display(frac(Delta y, Delta x))$ 当 $Delta x -> 0$ 时以此常量为极限．如果我们有 $f'(x) != 0$，量 $Delta x, Delta y, upright(d) y$ 才是同阶的无穷小量，因此作为较 $Delta x$ 为高阶的无穷小量的值 $alpha Delta x$，同时也是关于 $Delta y, upright(d) y$ 中的每一个的高阶无穷小量．这也就是说，我们所得到的关系表明：如果 #box[$f'(x) != 0$]，函数当 $Delta x -> 0$ 时的增量与微分之间的差，是关于其中每一个（即函数的微分或增量）的值的较高阶的无穷小．换言之，以微分代替增量时（或者相反），我们允许只能有无穷小的相对误差．]

很明显，我们所得到的当 $f'(x) != 0$ 时的关系等价于关系

#dmath[$ frac(Delta y, upright(d) y) = 1 + frac(alpha, f'(x)) -> 1 quad (Delta x -> 0), $]

#cont[它表明了 $Delta y$ 和 $upright(d) y$ 是当 $Delta x -> 0$ 时的等价的无穷小．正是以这些结果为基础，在实际计算中，当 $Delta x$ 很小时，可以以其微分来近似代换函数的增量．]

要回答第二个问题（以微分来代替函数的增量会带来什么好处）我们指出：建立微分，从理论上和实际上讲，一般都比建立增量更方便些．微分 $upright(d) y$ 是量 $Delta x$ 的线性函数，其随着 $Delta x$ 的改变而变化的特征特别地简单，并且研究它时，除了要计算一点处的 $f'(x)$ 值外，再不需要任何东西．当然，对于 $Delta y$ 就没有任何相似的地方了．例如，设想要编制函数 $y = sin x$ 对于靠近 $60 degree$ 的一些 $x$ 值，如 $60 degree 01'$，$60 degree 02'$ 等的函数值表（这里使用的是角度制），你们没有找出确定这些值的准确值的工具．

#cont[你们知道当 $x = 60 degree$ 时 $y$ 为 $display(frac(sqrt(3), 2))$，但在寻找靠近 $x$ 的其他值时没有办法求出 $y$ 值的相应增量 $Delta y$．现在看到了，如果利用增量 $Delta x$ 为很小这一点，并决定以微分 $upright(d) y$ 来代替增量 $Delta y$，可以得到什么？因为 $y' = cos 60 degree = display(frac(1, 2))$，则 $upright(d) y = display(frac(1, 2)) Delta x$，其中 $Delta x$ 要用弧度制 $("角度制" 1' = frac(pi, 180 thin times thin 60) "弧度")$ 来表示，由此我们马上得出：]

#dmath[$ coefficientMatrix(
  sin 60 degree 01' approx frac(sqrt(3), 2) + frac(1, 2) dot frac(pi, 180 thin dot thin 60)\,;
  sin 60 degree 02' approx frac(sqrt(3), 2) + frac(1, 2) dot frac(2 pi, 180 thin dot thin 60)\,;
  sin 60 degree 03' approx frac(sqrt(3), 2) + frac(1, 2) dot frac(3 pi, 180 thin dot thin 60)\,;
) $]

#align(center)[$. thin . thin . thin .$]

#cont[你们已经看到了，微分 $upright(d) y$ 具有下述两条重要的性质．]

#cont[1) 它是 $Delta x$ 的线性函数；]

#cont[2) 与 $Delta y$ 相比相差一个较 $Delta x$ 为高阶的无穷小．]

我们现在要指出：这两条性质完全定义了微分，即只有函数的微分才适合这两个条件#footnote[这句话是译者加的. —— 译者注]，故可以从这个定义开始研究微分学，而人们正是这样做的．（当然，尽管对

#pagebreak(weak: true)
