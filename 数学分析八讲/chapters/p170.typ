#import "../theme.typ": *

为了给出证明，我们回到前面证明方程 (3) 的解的存在的步骤，并且研究我们在那里所建立的函数 $phi_n (x)$ 对参数 $p$ 的关系的性质. 当然，我们现在将把它写成 $phi_n (x, p)$. 借助于递推关系式 (5) 定义的量 $y_i$ 很显然也与 $p$ 有关：$y_i = y_i (p)$, 且公式 (5) 成为

#eqnum(11)[$ y_i (p) = y_(i-1)(p) + f(x_(i-1), y_(i-1)(p), p) frac(alpha, n). $]

由于我们的假设，函数 $f(x, y, p)$ 关于参数 $p$ 连续，对任意的 $epsilon > 0$ 都存在 #box[$delta > 0$]，使得

#eqnum(12)[$ |f(x, y, p + h) - f(x, y, p)| < epsilon $]

当 $|h| < delta, p in d, p + h in d, (x, y) in D$ 时成立. 由公式 (11)

#dmath[$ y_i (p + h) - y_i (p) = y_(i-1)(p + h) - y_(i-1)(p) \
  + frac(alpha, n) {f(x_(i-1), y_(i-1)(p + h), p + h) - f(x_(i-1), y_(i-1)(p), p)} quad (1 lt.eq.slant i lt.eq.slant n). $]

为简单计，设

#dmath[$ y_i (p + h) - y_i (p) = Delta_i quad (0 lt.eq.slant i lt.eq.slant n), $]

因此

#wideEqnum(13)[$ Delta_i = Delta_(i-1) + frac(alpha, n) {f(x_(i-1), y_(i-1)(p + h), p + h) - f(x_(i-1), y_(i-1)(p), p)} quad (1 lt.eq.slant i lt.eq.slant n). $]

花括号内的式子可以写成

#dmath[$ f(x_(i-1), y_(i-1)(p + h), p + h) - f(x_(i-1), y_(i-1)(p), p + h) \
  + f(x_(i-1), y_(i-1)(p), p + h) - f(x_(i-1), y_(i-1)(p), p). $]

由 $(A')$ 知，这些差中的第一个绝对值不超过 $k |Delta_(i-1)|$; 由 (12) 知，第二个差绝对值小于 $epsilon$. 这样一来我们得到

#dmath[$ |Delta_i| < |Delta_(i-1)| + frac(alpha, n) {k |Delta_(i-1)| + epsilon} = frac(epsilon alpha, n) + |Delta_(i-1)| (1 + frac(alpha k, n)) quad (1 lt.eq.slant i lt.eq.slant n). $]

应用此估计式于量 $|Delta_(i-1)|$ 右边的式子并重复这个过程，我们得到关系式

#dmath[$ |Delta_i| < frac(epsilon alpha, n) + frac(epsilon alpha, n) (1 + frac(alpha k, n)) + frac(epsilon alpha, n) (1 + frac(alpha k, n))^2 + dots.c + frac(epsilon alpha, n) (1 + frac(alpha k, n))^(i-1) \
  = frac(epsilon, k) [(1 + frac(alpha k, n))^i - 1] lt.eq.slant frac(epsilon, k) [(1 + frac(alpha k, n))^n - 1] < frac(epsilon, k) (e^(alpha k) - 1) quad (1 lt.eq.slant i lt.eq.slant n). $]

这也就是说，当 $|h| < delta$ 时我们有

#dmath[$ |y_i (p + h) - y_i (p)| < frac(epsilon, k) (e^(alpha k) - 1) quad (1 lt.eq.slant i lt.eq.slant n), $]

或者，同样地有

#dmath[$ |phi_n (x_i, p + h) - phi_n (x_i, p)| < frac(epsilon, k) (e^(alpha k) - 1) quad (n = 1, 2, dots.c ; 1 lt.eq.slant i lt.eq.slant n); $]

#pagebreak(weak: true)

// SOURCE NOTE: “花括号内的式子可以写成”下第一行公式右端、版心内偏右另有
// 一枚孤立句点, 垂直位置在公式两行之间 (非第一行基线), 且第二行末已有句点;
// 判为原书印刷/扫描残迹, 不录为正文.
// SOURCE NOTE: “与 $p$ 有关”后为全角冒号“：”, 其字形与同页/邻页中文全角
// 冒号一致, 已按源图录入 (原西文“:”判断不成立).
