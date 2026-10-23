#import "../theme.typ": *

可以用其他方式定义高阶导数，即利用相应阶的差．类似于一阶导数是当 $Delta x -> 0$ 时比 #ifrac($Delta y$, $Delta x$) 的极限，可以证明

#eqnum(6)[$ lim_(Delta x -> 0) frac(Delta^n y, Delta x^n) = f^((n))(x). $]

如果函数 $f^((n))(x)$ 连续，则 (6) 式即是公式 (B) 的直接推论．但重要的是，要证明 (6) 式之成立并不取决于这个前提条件．

因为 (6) 式当 $n = 1$ 时成立，则只需继续证明：若它对某个 $n$ 成立，则它也必对 $n + 1$ 成立(同时当然要假设函数 $y = f(x)$ 有 $n + 1$ 阶的导函数)．设 (6) 式对一定的 $n$(同时也对任何 $n$ 次可微函数 $y$)成立．因为函数

#dmath[$ Delta y = f(x + Delta x) - f(x) $]

有 $n$ 阶导数，则我们可以对之应用公式 (B)．这使得有(如同我们在前面看到的)：

#eqnum(7)[$ Delta^n (Delta y) &= Delta x^n dot (Delta y)_(x + theta n Delta x)^((n)) \
  &= Delta x^n {f^((n))(x + theta n Delta x + Delta x) - f^((n))(x + theta n Delta x)}, $]

其中 $0 < theta < 1$．但由于 $f^((n+1))(x)$ 存在，所以

#dmath[$ &f^((n))(x + theta n Delta x + Delta x) - f^((n))(x) = (1 + n theta) Delta x {f^((n+1))(x) + alpha_1}, \
  &f^((n))(x + theta n Delta x) - f^((n))(x) = n theta Delta x {f^((n+1))(x) + alpha_2}, $]

其中 $alpha_1 -> 0$，$alpha_2 -> 0$(当 $Delta x -> 0$ 时)，所以

#dmath[$ &f^((n))(x + theta n Delta x + Delta x) - f^((n))(x + theta n Delta x) \
  &= Delta x f^((n+1))(x) + alpha_1 (1 + n theta) Delta x - alpha_2 n theta Delta x. $]

因此关系式 (7) 给出

#dmath[$ frac(Delta^(n+1) y, Delta x^(n+1)) = f^((n+1))(x) + alpha_1 (1 + n theta) - alpha_2 n theta, $]

由此当 $Delta x -> 0$ 时取极限得出

#dmath[$ lim_(Delta x -> 0) frac(Delta^(n+1) y, Delta x^(n+1)) = f^((n+1))(x). $]

此即所要证明的．

#sec[无穷小量之比的极限和无穷大量之比的极限]

在拉格朗日公式和柯西公式的应用中，我们首先来研究一个非常重要的问题．它在分析教程中却是以十分不合理的荒诞称呼“确定不定式”#footnote[还有更为荒诞的称呼：“寻找不定式的真值”．且不谈数学分析中一般不包含任何“不定式”，这里通常是把异于其实际值的数称为函数在已知点的“真正的值”的．]出现的．实质上这里讲的是利用微分学的方法，以寻找无穷小量之比的极限或者无穷大量之比的极限．

#pagebreak(weak: true)
