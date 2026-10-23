#import "../theme.typ": *

质点运动方程组 (当然是你们所熟知的) 是一个很好的例子：

// 质点运动方程组: 源页三行紧排、行间几近相接, 故用无定界符的左对齐矩阵
// (每行一个等式), 并以 display() 保持分式为展示尺寸; 行尾逗号为原书标点,
// 在矩阵语法中用 #sym.comma 表示 (普通逗号会被当作列分隔符).
// 源图 X/Y/Z 后的圆括号为正文大小的固定括号, 不随分式放大, 故用固定符号 #sym.paren.l/#sym.paren.r.
#dmath[$ mat(delim: #none, align: #left,
  m display(frac(dif^2 x, dif t^2)) = X #sym.paren.l t#sym.comma x#sym.comma y#sym.comma z#sym.comma display(frac(dif x, dif t))#sym.comma display(frac(dif y, dif t))#sym.comma display(frac(dif z, dif t)) #sym.paren.r#sym.comma ;
  m display(frac(dif^2 y, dif t^2)) = Y #sym.paren.l t#sym.comma x#sym.comma y#sym.comma z#sym.comma display(frac(dif x, dif t))#sym.comma display(frac(dif y, dif t))#sym.comma display(frac(dif z, dif t)) #sym.paren.r#sym.comma ;
  m display(frac(dif^2 z, dif t^2)) = Z #sym.paren.l t#sym.comma x#sym.comma y#sym.comma z#sym.comma display(frac(dif x, dif t))#sym.comma display(frac(dif y, dif t))#sym.comma display(frac(dif z, dif t)) #sym.paren.r#sym.comma ;
) $]

其中唯一的自变量是时间 $t$，未知函数是质点的坐标 $x, y, z$，这里的 $m$ 表示该质点的质量，$X, Y, Z$ 则是作用于质点的力的分量，在一般情况下力是与时间、位置及点的移动速度有关的. 初始数据是在某个确定的 “初始” 时刻 $t = t_0$ 时，该点的 3 个坐标和 3 个速度分量.

如果自变量有几个，则我们会遇到偏微分方程 (或方程组). 未知函数现在是多元函数，于是方程自然就包含有未知函数对这些自变量的偏导数. 容易理解，偏微分方程的理论，要比 “常” 微分方程理论复杂得多. 这里我们完全不打算涉及.

但就是常微分方程理论中也没有几个有效的一般方法，能用以求解较为广泛的类型的常微分方程. 这一点也部分地容易预见到，在许多情况下，甚至初等函数的通常的积分，正如我们所了解的那样，常得到非初等的函数，何况是对于这里更为一般和复杂的问题. 但是，即使我们停留在对于微分方程理论的那种通常观点 —— 只要问题的求解化成了通常的积分，我们就可以认为该问题是解决了，甚至按照这种观点，我们所能得到的进展也只能是很有限的，因为化简为 “求积法” 只对很少几类最简单的微分方程可以用 (但说实在的，从纯粹应用的观点看，这已经是最重要的类型). 我们在这里不再研究它们，甚至也不打算列出这些类型，因为对于这个问题你们可以在任何甚至最初等的教材中找到所需的材料. 我们自然应当去从事更具原则意义的问题.

#sec[解的存在性]

我们已经说过，积分学的基本问题可以看作是研究微分方程解的最简单的情况. 因为，若方程
#eqnum(3)[$ frac(dif y, dif x) = f(x, y) $]

#cont[的右方与 $y$ 无关，那么我们得到形如]

#eqnum("3′")[$ frac(dif y, dif x) = f(x) $]

#cont[的方程. 解此方程很显然等价于求积函数 $f(x)$. 关于这个问题我们已经看到，甚至当函数 $f(x)$ 是连续的，要证明积分的存在 (即方程 (3′) 的解存在) 也要专门地讨论 (依靠函数 $f(x)$ 的一致连续性)：如果函数 $f(x)$ 只是有界，但有间断点，则积分一般来说是不存在的.]

#pagebreak(weak: true)
