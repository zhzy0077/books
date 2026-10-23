#import "../theme.typ": *

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
#hei[(快速傅里叶变换的一步)] 令 $m = 1/2 n$. $bold(y) = bold(F)_n bold(c)$ 的前 $m$ 位分量和后 $m$ 位分量分别为规模减半的变换 $bold(y)' = bold(F)_m bold(c)'$ 与 $bold(y)'' = bold(F)_m bold(c)''$ 的结果. 这对应 (4) 式中的 $bold(I) bold(y)' + bold(D) bold(y)''$ 和 $bold(I) bold(y)' - bold(D) bold(y)''$, 该等式展示了由 $n$ 到 $m = n/2$ 的步骤:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ y_j = y'_j + (w_n)^j y''_j, quad j = 0, 1, dots.c, m - 1; $ \ $ y_(j+m) = y'_j - (w_n)^j y''_j, quad j = 0, 1, dots.c, m - 1. $],
  align(bottom)[$(5)$],
)

将 $bold(c)$ 分为 $bold(c)'$ 与 $bold(c)''$, 用 $bold(F)_m$ 分别将它们变换为 $bold(y)'$ 和 $bold(y)''$, 从而 (5) 式重现了 $bold(y)$.
]

上述公式源自将 $c_0, c_1, dots.c, c_(n-1)$ 分为偶数号 $c_(2k)$ 与奇数号 $c_(2k+1)$, 这里 $w$ 为 $w_n$:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ y = bold(F) c quad quad y_j = sum_(k=0)^(n-1) w^(j k) c_k = sum_(k=0)^(m-1) w^(2 j k) c_(2k) + sum_(k=0)^(m-1) w^(j(2k+1)) c_(2k+1), quad "其中" m = 1/2 n. $],
  align(bottom)[$(6)$],
)

偶数号分量构成 $c' = (c_0, c_2, dots.c)$, 而奇数号分量构成 $c'' = (c_1, c_3, dots.c)$, 接着施行变换 $bold(F)_m c'$ 和 $bold(F)_m c''$. 注意, $w_n^2 = w_m$, 由此可得 $w_n^(2 j k) = w_m^(j k)$.

重写 (6) 式

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ y_j = sum (w_m)^(j k) c'_k + (w_n)^j sum (w_m)^(j k) c''_k = y'_j + (w_n)^j y''_j. $],
  align(bottom)[$(7)$],
)

当 $j >= m$ 时, (5) 式中的负号来自 $(w_n)^j$ 所分解出的 $(w_n)^m = -1$.

在 MATLAB 中使用 conj(F) 或快速傅里叶逆变换 ifft 一样可以轻易将偶数号与奇数号分量分开, 再乘上 $w_n^j$, 这是因为 fft 基于 $omega = overline(w) = e^(-2 pi "i" slash n)$. 习题 16 表明 $bold(F)$ 与 conj(F) 通过行置换联系起来.

#align(center)[#table(
  columns: (auto, auto),
  align: (right + horizon, left),
  stroke: none,
  [#hei[MATLAB 中由 $n$ 到 $n slash 2$ 的快速傅里叶变换步骤]],
  [#raw("y'=ifft(c(0:2:n-2))*n/2;
y''=ifft(c(1:2:n-1))*n/2;
d=w.^(0:n/2-1)';
y=[y'+d.*y'';y'-d.*y''];", block: true)],
)]

流程图 9.5 表明用规模减半的矩阵 $bold(F)_2$ 左乘 $c'$ 与 $c''$. 根据其形状, 可称这些步骤为 “蝴蝶形”. 然后将输出 $y'$ 与 $y''$ 相结合 (用 $bold(D)$ 中的 $1, "i"$ 乘 $y''$, 再用 $-bold(D)$ 中的 $-1, -"i"$ 乘), 从而生成 $y = bold(F)_4 c$.

将 $bold(F)_n$ 化为两个 $bold(F)_m$ 几乎将计算量减半——分解式中出现的零元素便是证明. 这种减半虽然很好但是还不够彻底. 快速傅里叶变换的完整思想有力得多, 它节约的时间远超一半.



#pagebreak()