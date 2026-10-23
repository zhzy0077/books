#import "../theme.typ": *

#cont[限. 最后, 若这个极限存在, 则它就是 $limits(lim)_(y -> b) #sym.paren.l limits(lim)_(x -> a) z #sym.paren.r$.]

可能有这样的情形: 两个逐次极限 (5) 都存在, 但二重极限 (4) 却不存在. 我们来研究函数

#dmath[$ z = frac(2 x y, x^2 + y^2) $]

在坐标原点附近的情形 (这个函数在坐标原点本身无定义, 注意, 不论在二重极限的定义里, 还是在逐次极限的定义里, 量 $f(a,b)$ 都完全不出现, 函数在此不取任何值; 如果愿意, 当 $x = y = 0$ 时可以让函数 $z$ 取任何值). 当固定 $x != 0$ 时 $limits(lim)_(y -> 0) z = 0$, 而当固定 $y != 0$ 时 $limits(lim)_(x -> 0) z = 0$, 因而有

#dmath[$ limits(lim)_(x -> 0) #sym.paren.l limits(lim)_(y -> 0) z #sym.paren.r = limits(lim)_(y -> 0) #sym.paren.l limits(lim)_(x -> 0) z #sym.paren.r = 0. $]

另一方面, 点 $(0,0)$ 的任何邻域都既包含 $x = 0, y != 0$ 的点, 也包含 $x = y != 0$ 这样的点. 由于第一种情形下 $z = 0$, 而第二种情形下 $z = 1$, 所以这两个数 0 和 1 都将是函数 $z$ 当 $x -> 0, y -> 0$ 时的部分极限. 存在至少两个不同的部分极限就意味着 $limits(lim)_(x -> 0 \ y -> 0) z$ 不存在.

可能有相反的情形: 二重极限 (4) 存在, 而两个逐次极限 (5) 却一个也不存在. 研究函数

#dmath[$ z = cases(
  (x^2 + y^2) sin frac(1, x y) #sym.comma quad "若" x y != 0 #sym.comma,
  0 #sym.comma quad "若" x y = 0
) $]

在坐标原点附近的情形. 因为对圆 $x^2 + y^2 < epsilon^2$ 的所有点都有 $|z| < epsilon^2$, 所以

#dmath[$ limits(lim)_(x -> 0 \ y -> 0) z = 0; $]

另一方面, 当 $y -> 0$ 时固定 $x != 0$(也同样可固定 $y != 0$ 而令 $x -> 0$), $sin frac(1, x y)$, 从而函数 $z$ 不趋近于任何极限, 也就是说, 极限 $limits(lim)_(x -> 0) z(y != 0)$ 与 $limits(lim)_(y -> 0) z(x != 0)$ 都不存在. 当然, 逐次极限 (5) 中任何一个的存在性就无从谈起.

但是, 应当指出, 若 (4) 和 (5) 这 3 个极限都存在时, 它们应当是完全一致的. 实际上, 例如令

#eqnum(6)[$ limits(lim)_(x -> a) #sym.paren.l limits(lim)_(y -> b) z #sym.paren.r = c, $]

设 $V$ 是数 (或符号)$c$ 的任何一个邻域且 $U$ 是点 $(a,b)$ 的任何一个邻域. 由 (6) 则存在数 (或符号)$a$ 的这样一个邻域 $A$, 使得对任何 $x in A$, 都有

#dmath[$ limits(lim)_(y -> b) z in V, $]

这个邻域 $A$ 是 $O x$ 轴的某个区间, 很明显, 我们可以在此区间上选取如此靠近 $a$ 的点 $x_0$, 使得点 $(x_0, b)$ 属于邻域 $U$(图 10). 固定此 $x_0$, 由 $x_0 in A$ 得到

#pagebreak(weak: true)
