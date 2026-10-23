#import "../theme.typ": *

// 方程组 (23) 的左花括号: 只保留左侧定界符, 行内容按源页居中.
#let sysdelim = (sym.brace.l, none)

#cont[$D$ 上满足不等式]

#dmath[$ |f_i (x, y_1^((1)), y_2^((1)), dots.c, y_n^((1))) - f_i (x, y_1^((2)), y_2^((2)), dots.c, y_n^((2)))| lt.eq.slant k sum_(j=1)^n |y_j^((2)) - y_j^((1))| quad (1 lt.eq.slant i lt.eq.slant n), $]

#cont[其中 $k$ 是某个正的常数#footnote[它称为关于函数向量 $(f_1 (x, y_1, dots.c, y_n), dots.c, f_n (x, y_1, dots.c, y_n))$ 的利普希茨条件. —— 译者注].]

我们对于高于一阶的方程没有时间讨论了. 只是指出, 任何 $n$ 阶方程

#eqnum(22)[$ F (x, y, y', y'', dots.c, y^((n))) = 0 $]

#cont[的求解都可以化为求解一阶方程组. 实际上, 我们研究以下形状的方程组, 它由含有 $n$ 个未知函数 $y_1, y_2, dots.c, y_n$ 的 $n$ 个方程构成:]

// 源页此行等式行尾逗号在矩阵语法中用 #sym.comma 表示 (普通逗号会被当作列分隔符).
#eqnum(23)[$ mat(delim: sysdelim, align: #center,
  F (x, y_1, y_2, dots.c, y_(n-1), y_n, y'_n) = 0#sym.comma ;
  y'_1 = y_2#sym.comma ;
  y'_2 = y_3#sym.comma ;
  dots ;
  y'_(n-1) = y_n#sym.comma ;
) $]

#cont[并且设我们找到了该方程组的解]

#dmath[$ y_i = phi_i (x) quad (1 lt.eq.slant i lt.eq.slant n). $]

#cont[此时由方程组 (23) 得]

#dmath[$ &phi'_1 (x) = phi_2 (x) = y_2, \
  &phi''_1 (x) = phi'_2 (x) = phi_3 (x) = y_3, \
  &phi'''_1 (x) = phi''_2 (x) = phi'_3 (x) = phi_4 (x) = y_4, \
  &dots \
  &phi_1^((n-1)) (x) = phi_2^(n-2) (x) = dots.c = phi_n (x) = y_n, \
  &phi_1^((n)) (x) = y'_n, $]

#cont[因此方程组 (23) 中的第一个给出]

#dmath[$ F (x, phi_1 (x), phi'_1 (x), dots.c, phi_1^((n)) (x)) = 0, $]

#cont[即函数 $y = phi_1 (x)$ 是方程 (22) 的解.]

反之, 设函数 $y = phi (x)$ 满足方程 (22). 令

#dmath[$ y_1 = phi (x), y_2 = phi'(x), dots.c, y_n = phi^((n-1)) (x), $]

#cont[我们直接看到, 函数组 $(y_1, y_2, dots.c, y_n)$ 构成方程组 (23) 的解. 这就是说, 求方程 (22) 的所有解和求方程组 (23) 的所有解实际上完全是可以互化的.]

#pagebreak(weak: true)
