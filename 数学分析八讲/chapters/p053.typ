#import "../theme.typ": *

#leadLabel[#em[定 理]]要使在点 $c$ 处有定义的函数 $f(x)$ 在该点 $c$ 处连续，当且仅当有 #box[$omega_f (c) = 0$].

#leadLabel[#em[证 明]]1) 设 $omega_f (c) = 0$. 这就表明在点 $c$ 的充分小的邻域 $U(alpha, beta)$ 内，函数 $f(c)$ 的振幅会变得任意小. 又因为很显然有，对任何 $x in U$,

#dmath[$ |f(x) - f(c)| lt.eq.slant M - m = omega_f (alpha, beta) $]

#cont[(其中 $M$ 和 $m$ 为函数 $f(x)$ 在邻域 $U$ 上的确界)，所以，当 $x in U$ 时 $|f(x) - f(c)|$ 可以任意小. 此即表明函数 $f(x)$ 在点 $c$ 处连续.]

2) #footnote[这一段译者作了较大的修改和补充. —— 译者注] 若 $omega(c) = omega > 0$(这里 $omega$ 是一个数，$omega = +infinity$ 的情况下面再说)，则无论取点 $c$ 的哪一个邻域 $U(a, b)$，总有 $M - m gt.eq.slant omega$. 由上确界和下确界的定义，能在 $(a, b)$ 中找到 $alpha$ 和 $beta$，使得

#dmath[$ f(alpha) &lt.eq.slant m + frac(omega, 4), \
  f(beta) &gt.eq.slant M - frac(omega, 4), $]

#cont[从而 $f(beta) - f(alpha) gt.eq.slant M - m -$ #ifrac($omega$, $2$) $gt.eq.slant$ #ifrac($omega$, $2$). 但]

#dmath[$ f(beta) - f(alpha) = [f(beta) - f(c)] + [f(c) - f(alpha)], $]

#cont[由 $f(beta) - f(alpha) gt.eq.slant omega slash 2$ 推得，右边的两项中至少有一个 $gt.eq.slant #ifrac($omega$, $4$)$. 这就是说，存在着区间 $(a, b)$ 的一点 $x$，使得]

#dmath[$ |f(x) - f(c)| gt.eq.slant frac(omega, 4). $]

#cont[因为邻域 $U$ 是任意的，则函数 $f(x)$ 不可能在点 $c$ 处连续.]

3) 若 $omega(c) = +infinity$，这里首先要补充说明在一点 $c$ 处 $omega(c) = +infinity$ 的定义：在包含此点的一个区间 $(a, b)$ 上 $f(x)$ 无界，所以对任意大的 $M gt.eq.slant f(c)$ 必可在 $(a, b)$ 中找到一点 $beta$，使 $f(beta) gt.eq.slant M$. 又有另一点 $alpha$，使 $f(alpha) = m lt.eq.slant f(c)$，这里 $m < M$. 于是

#dmath[$ f(beta) - f(alpha) = [f(beta) - f(c)] + [f(c) - f(alpha)] $]

#cont[右边的两项均非负，因为左边不小于正数 $M - m$，所以右边至少有一项不小于 $(M - m) slash 2$. 设]

#dmath[$ |f(beta) - f(c)| = f(beta) - f(c) gt.eq.slant frac(M - m, 2), $]

#cont[这就是说在含 $c$ 的任一区间 $(a, b)$ 中一定能找到一点 $x$(就是 $x = beta$) 使]

#dmath[$ |f(x) - f(c)| gt.eq.slant frac(M - m, 2), $]

#cont[所以 $f(x)$ 在 $c$ 点不连续.]

#pagebreak(weak: true)
