#import "../theme.typ": *

#cont[这个 $y$ 值与 $x$ 有关. 所以可以写成 $y = f(x)$，这是一个 $x$ 的函数，它定义于 #box[$|x - x_0| < alpha$] 中，于是上式就可以写成]

#dmath[$ F(x, f(x)) = 0. $]

#cont[因为适合此式的 $y$ 只有一个，所以这样的 $y = f(x)$ 是唯一的#footnote[
  原书因为未假设 $F'_y (x, y)$ 在 $U$ 中连续，所以得不到 $F(x, y)$ 对 $y$ 的单调性，而不能证明只有唯一的 $f(x)$ 适合 (18) 式，原书说，用第三讲的定理 3 可以找到 $y (|y| < beta)$ 使得 $F(x, y) = 0$. 原书接着说: “这个 $y$ 值 (如果有几个 $y$，则说某一个这样的 $y$ 值) 与 $x$ 有关，我们就以 $f(x)$ 来表示它.” 实际上，如果有几个不同的 $y$ 值，用哪一个 $y$ 值与 $x$ 对应来作出 $y = f(x)$ 呢？ 如果作出了几个 $f(x)$，怎样保证 $f(x)$ 连续甚至可微呢？ 这是很难办的事. 读者可能以为这时 $f(x)$ 是“多值函数”. 但是，从函数定义来看，对一个 $x$ 只能有一个 $y$，所以不能说多值函数. 多值函数只是几个函数合起来的“方便说法”. 这种“方便说法”会引起不少误会. 本书的目的之一正是要消除这些误会. —— 译者注
]. 定理的前一部分证完. 我们还需要证明 $f'(x_1)$ 存在，并且找出这个导数值. 这里 $x_1$ 是 $(x_0 - alpha, x_0 + alpha)$ 中的任意点.]

取充分小的 $Delta x$，使 $x_1 + Delta x$ 仍在上述区间中. 记 $y_1 = f(x_1), Delta y = f(x_1 + Delta x) - f(x_1)$，则 $f(x_1 + Delta x) = f(x_1) + Delta y = y_1 + Delta y$. 由 (18) 式

#dmath[$ F(x_1 + Delta x, y_1 + Delta y) = F(x_1 + Delta x, f(x_1 + Delta x)) = 0. $]

#cont[由于 $F$ 在 $U$ 中可微，]

#dmath[$ 0 &= Delta F = F(x_1 + Delta x, y_1 + Delta y) - F(x_1, y_1) \
  &= F'_x (x_1, y_1) Delta x + F'_y (x_1, y_1) Delta y + o(rho), $]

#cont[其中]

#dmath[$ rho = sqrt(Delta x^2 + Delta y^2) <= |Delta x| + |Delta y|. $]

#cont[由此得]

#dmath[$ F'_x (x_1, y_1) Delta x + F'_y (x_1, y_1) Delta y = lambda(|Delta x| + |Delta y|). $]

#cont[当 $rho -> 0$ 时，$lambda -> 0$，换言之，]

#dmath[$ [F'_x (x_1, y_1) plus.minus lambda] Delta x + [F'_y (x_1, y_1) plus.minus lambda] Delta y = 0. $]

#cont[因为由假设 $F'_y (x_1, y_1) > 0$，对于充分小的 $alpha$ 和 $beta$ (即对充分小的 $Delta x, Delta y$ 和 $rho$)，有]

#dmath[$ |lambda| < frac(1, 2) F'_y (x_1, y_1), quad F'_y (x_1, y_1) plus.minus lambda >= frac(1, 2) F'_y (x_1, y_1) > 0. $]

#pagebreak(weak: true)
