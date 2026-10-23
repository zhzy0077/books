#import "../theme.typ": *

#cont[由此知等式 (13) 实际上不成立. 但是容易证明：对任何连续函数的一致收敛级数，等式 (13) 总成立. 首先，我们此时已经知道函数 $S(x)$ 在闭区间 $[a, b]$ 上连续，因而它在闭区间 $[a, b]$ 上可积；其次，对任何 $epsilon > 0$ 都存在整数 $n_0$，使得当 $n >= n_0$ 时对区间 $[a, b]$ 上的任何 $x$ 有]

#compactDisplay[$ abs(r_n (x)) < epsilon. $]

#cont[应用我们熟知的积分学的定理：从 $abs(f(x)) <= phi(x) (a <= x <= b)$ 可得]

#compactDisplay[$ abs(integral_a^b f(x) dif x) <= integral_a^b phi(x) dif x. $]

#cont[我们因此得到]

#compactDisplay[$ abs(integral_a^b r_n (x) dif x) <= epsilon (b - a) quad (n >= n_0); $]

#cont[由 $epsilon$ 的任意性就得出]

#compactDisplay[$ integral_a^b r_n (x) dif x -> 0 quad ("当" n -> oo "时"). $]

#cont[而这就等价于等式 (13).]

这样，一致收敛性是连续函数的级数可以进行逐项积分的充分条件. 然而正如前一个问题中所指明的一样，它并不是可积性的必要条件. 为证明这一点，只要再充分研究一下本小节开始时所引入的例子 $S_n (x) = x^n (1 - x^n)$ 就够了. 这里收敛是非一致的，但同时当 $n -> oo$ 时却有

#compactDisplay[$ integral_0^1 r_n (x) dif x = integral_0^1 x^(2n) dif x - integral_0^1 x^n dif x = frac(1, 2n + 1) - frac(1, n + 1) -> 0, $]

#cont[即等式 (13) 成立.#footnote[本书没有讲级数可否逐项求导的问题. 这一问题更复杂，可以参看任何一本比较完备的数学分析教程. —— 译者注]]

某个已知级数的一致收敛性时常通过下述简单的准则来证明：如果 $limits(sum)_(n=1)^oo alpha_n$ 是一个收敛的正项级数且对任何充分大的 $n$ 以及任何 $x in M$ 都有

#compactDisplay[$ abs(u_n (x)) <= alpha_n, $]

#cont[则级数 (12) 在集合 $M$ 上一致收敛. 实际上，在定理的条件下，对充分大的 $n$ 以及任何 $k > 0$ 和任何 $x in M$，都有]

#compactDisplay[$ abs(u_(n+1) (x) + u_(n+2) (x) + dots.c + u_(n+k) (x)) <= \
  sum_(i=n+1)^(n+k) abs(u_i (x)) <= sum_(i=n+1)^(n+k) alpha_i < epsilon $]

#cont[（后一个不等式成立是根据柯西准则对任何充分大的 $n$ 及任何 $k > 0$ 成立）. 由此按柯西准则级数 (12) 收敛，而对充分大的 $n$ 及任何 $x in M$，都有]

#compactDisplay[$ abs(r_n (x)) < epsilon. $]

#cont[此即所要证明的.]

#pagebreak(weak: true)