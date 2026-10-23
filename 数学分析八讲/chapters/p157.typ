#import "../theme.typ": *

这样一来我们看到，函数 $f(x)$ 在区间 $[a, b]$ 上展开为三角级数，与级数 (4) 的区别仅在于：展开式中我们用以 $2 l$ 为周期的函数 $cos frac(n pi, l) x, sin frac(n pi, l) x$ 代替周期为 $2 pi$ 的函数 $cos n x, sin n x$ 作为基本元素. 这个结果最佳地解决了我们所提出的问题，因为我们当然预先就明白，(4) 的各项都以 $2 pi$ 为周期，所以定义在区间 $[a, b]$ 上的函数 $f(x)$ 一般来说不可能用它来表示 (因为 $b - a > 2 pi$).

我们还应看一看，对函数 $f(x)$ 怎样找出表示它的级数的系数 $a_n, b_n$. 为此我们注意到，按照最开始时的定义

#dmath[$ a_k &= frac(1, pi) integral_(-pi)^pi phi(y) cos k y dif y, \
  b_k &= frac(1, pi) integral_(-pi)^pi phi(y) sin k y dif y. $]

#cont[令 $y = frac(pi, l) x$, 我们得到]

#dmath[$ a_k &= frac(1, l) integral_(-l)^l phi(frac(pi, l) x) cos k frac(pi, l) x dif x \
  &= frac(1, l) integral_(-l)^l f^*(x) cos k frac(pi, l) x dif x \
  &= frac(1, l) integral_a^(b') f^*(x) cos k frac(pi, l) x dif x, $]

#cont[且类似地有]

#dmath[$ b_k = frac(1, l) integral_a^(b') f^*(x) sin k frac(pi, l) x dif x. $]

因为满足所提一切条件的函数 $f^*(x)$ 有无穷多个，则由函数 $f(x)$ 在区间 $(a, b)$ 上给出的 $a_k$ 和 $b_k$ 不是唯一确定的. 这不应使我们感到惊奇：级数 (16) 只是在长度小于该展开式的元素的周期 $2 l$ 的区间 $[a, b]$ 上表示函数 $f(x)$. 与我们最初了解的情形完全相似，我们可以得到无穷多个不同形式的级数 (4)，可以在区间 $[-pi, pi]$ 的任何部分区间 (但不是在整个的区间) 上表示函数 $f(x)$.#footnote[如果 $f(x)$ 在 $[a, b]$ 上可微，且 $f(a) = f(b), f'(x)$ 有界可积，则不论 $b - a > 2 pi$ 或 $< 2 pi$，只要作一个变换 $y = -pi + frac(pi (x - a), l)$，这里 $2 l = b - a$，则 $f(x) = phi(y)$ 作为 $y$ 的函数就在区间 $[-pi, pi]$ 上可微，$phi'(y)$ 有界可积，且适合 $phi(-pi) = phi(pi)$，所以 $phi(y)$ 可以展开为 $cos n y, sin n y$ 的傅里叶级数. 由 $phi(y)$ 再回到 $f(x)$ 的方法和本书讲的是一样的. 一般教科书都是这样处理的. 问题在于，本书作者关心的是必须有 $f(-pi) = f(pi)$，所以才采用了以上的讲法. 但这就有一个漏洞：反而 $b - a = 2 pi$ 时上面讲的办法不能用了，因为不可能再使 $f(a) = f(b)$. 可见 $f(x)$ 非周期的问题是不可避免的. 详细一点的数学分析教材中都讨论过这个问题. 值得注意的是，这种情况在应用中可以说更为常见，不过人们都不去过问这个问题了. —— 译者注]

#pagebreak(weak: true)
