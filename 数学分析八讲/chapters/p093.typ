#import "../theme.typ": *

设 $f_1 (a) = f_2 (a) = 0$，且在点 $a$ 的某个邻域内两个函数都可微，并且当 $x != a$ 时 $f'_2(x) != 0$．因为当 $f_1 (a) = f_2 (a) = 0$ 时柯西公式给出

#dmath[$ frac(f_1 (a + h), f_2 (a + h)) = frac(f'_1(a + theta h), f'_2(a + theta h)) quad quad (0 < theta < 1), $]

#cont[则我们可以断定（洛必达法则）：如果 $f_1 (a) = f_2 (a) = 0$ 且比 #ifrac($f'_1(x)$, $f'_2(x)$) 当 $x -> a$ 时趋近于某个极限，则 #ifrac($f_1 (x)$, $f_2 (x)$) 也趋近于同一极限．]

如果 $f'_1(a) = f'_2(a) = 0$，则再次应用这个结论，我们可以得到（当然要设函数 $f_1 (x)$ 和 $f_2 (x)$ 在点 $a$ 的某个邻域内存在二阶导数）：当 $f_1 (a) = f_2 (a) = f'_1(a) = f'_2(a) = 0$ 时，从 $limits(lim)_(x -> a) frac(f''_1(x), f''_2(x)) = l$ 可推得 $limits(lim)_(x -> a) frac(f_1 (x), f_2 (x)) = l$．一般来说，如果

#dmath[$ f_1 (a) = f'_1(a) = dots.c = f_1^((n-1))(a) = f_2 (a) \
  = f'_2(a) = dots.c = f_2^((n-1))(a) = 0, $]

#cont[且函数 $f_1 (x)$ 和 $f_2 (x)$ 在点 $a$ 的某个邻域内有 $n$ 阶导数，则从关系 #ifrac($f_1^((n))(x)$, $f_2^((n))(x)$) $-> l (x -> a)$ 可得 #ifrac($f_1 (x)$, $f_2 (x)$) $-> l (x -> a)$．如果 $f_1^((n))(x)$ 和 $f_2^((n))(x)$ 都在点 $a$ 处连续且 $f_2^((n))(a) != 0$，则由此得出]

#eqnum(8)[$ lim_(x -> a) frac(f_1 (x), f_2 (x)) = frac(f_1^((n))(a), f_2^((n))(a)). $]

洛必达法则是计算极限的非常有力的武器，且在许多情况下非常容易地得出这些极限，而应用初等方法却是有相当难度的．例如当 $f_1 (x) = tan x - sin x, f_2 (x) = x^3$ 时，我们有 $f_1 (0) = f'_1(0) = f''_1(0) = 0, f'''_1(0) = 3, f_2 (0) = f'_2(0) = f''_2(0) = 0, f'''_2(0) = 6$，由此按公式 (8) 则有

#dmath[$ lim_(x -> 0) frac(tan x - sin x, x^3) = frac(f'''_1(0), f'''_2(0)) = frac(1, 2). $]

洛必达法则当 $a = plus.minus infinity$ 时仍成立．实际上

#dmath[$ lim_(x -> +infinity) frac(f_1 (x), f_2 (x)) = lim_(y -> +0) frac(f_1 (frac(1, y)), f_2 (frac(1, y))), $]

#cont[由上述我们已证明的洛必达法则，这后一个极限等于]

#dmath[$ lim_(y -> +0) frac(-frac(1, y^2) f'_1(frac(1, y)), -frac(1, y^2) f'_2(frac(1, y))) = lim_(x -> +infinity) frac(f'_1(x), f'_2(x)). $]

#pagebreak(weak: true)
