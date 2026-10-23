#import "../theme.typ": *

这也就是说，我们已经证明了正交函数组 (5) 的封闭性. 正如我们已经看到的，由此得出已知的三角级数 (4) 不可能是一个以上的连续函数的傅里叶级数. 特别地，如果这个级数一致收敛，则其和是以此级数为傅里叶级数的唯一的连续函数.

#sec[具有有界可积导函数的函数之傅里叶级数的收敛性]

现在我们来证明，任何以 $2 pi$ 为周期的有界且可积的导函数的函数 $f(x)$，都可以展开为一致收敛的三角级数（它当然是 $f(x)$ 的傅里叶级数）.

我们约定以 $a_k, b_k$ 来表示函数 $f(x)$ 的傅里叶系数，而以 $a'_k, b'_k$ 来表示函数 $f'(x)$ 的傅里叶系数. 此时分部积分得

#dmath[$ pi a_k &= integral_(-pi)^pi f(x) cos k x dif x \
  &= [frac(f(x) sin k x, k)]_(-pi)^pi - frac(1, k) integral_(-pi)^pi f'(x) sin k x dif x = -frac(b'_k, k), $]

以同样的方式得 $pi b_k = frac(a'_k, k)$. 今后为方便计，我们将应用柯西-施瓦茨不等式

#dmath[$ [sum_(k=1)^n u_k v_k]^2 <= sum_(k=1)^n u_k^2 sum_(k=1)^n v_k^2, $]

#cont[它对任意的实数 $u_k, v_k$ 以及任意的 $n$ 成立.#footnote[证明 $sum_(k=1)^n (u_k x + v_k)^2$ 作为 $x$ 的函数，是二次三项式，且无论何时均是非负的，因而其判别式
  #dmath[$ 4[(sum_(k=1)^n u_k v_k)^2 - sum_(k=1)^n u_k^2 sum_(k=1)^n v_k^2] <= 0. $]]]

注意到

#dmath[$ a_k cos k x + b_k sin k x = frac(1, pi k)(-b'_k cos k x + a'_k sin k x), $]

#cont[我们由不等式]

#dmath[$ (alpha cos phi + beta sin phi)^2 &= alpha^2 + beta^2 - (alpha sin phi - beta cos phi)^2 \
  &<= alpha^2 + beta^2 $]

#cont[对 $m > n$ 得到]

#dmath[$ &abs(sum_(k=n)^m (a_k cos k x + b_k sin k x))^2 \
  &= abs(sum_(k=n)^m frac(1, pi k) (-b'_k cos k x + a'_k sin k x))^2 $]

#pagebreak(weak: true)
