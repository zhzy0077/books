#import "../theme.typ": *
#set par(spacing: 17.5pt, leading: 14pt)
#show math.equation.where(block: true): set block(above: 20pt, below: 20pt)

在它的常规位置, 然后再对 $bold(P) bold(A)$ 进行消元:

#align(center)[#grid(
  columns: (auto, auto, auto, auto, auto, auto, auto),
  align: center + horizon,
  column-gutter: 8pt,
  [$mat(delim: "[", 0,1,1;1,2,1;2,7,9)$\ $bold(A)$],
  $arrow.r$,
  [$mat(delim: "[", 1,2,1;0,1,1;2,7,9)$\ $bold(P) bold(A)$],
  $arrow.r$,
  [$mat(delim: "[", 1,2,1;0,1,1;0,3,7)$\ $ell_(3 1) = 2$],
  $arrow.r$,
  [$mat(delim: "[", 1,2,1;0,1,1;0,0,4)$\ $ell_(3 2) = 3$],
)]

矩阵 $bold(P) bold(A)$ 的行按正确次序排列, 可分解成 $bold(L) bold(U)$:

#eqnum($bold(P) = mat(delim: "[", 0,1,0;1,0,0;0,0,1) , quad bold(P) bold(A) = mat(delim: "[", 1,0,0;0,1,0;2,3,1) mat(delim: "[", 1,2,1;0,1,1;0,0,4) = bold(L) bold(U) .$, 7)

这个过程始于 $bold(A)$ 止于 $bold(U)$, 唯一要求是 $bold(A)$ 可逆.

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 18pt), width: 100%, above: 18pt, below: 18pt)[若 $bold(A)$ 是可逆矩阵, 则存在置换矩阵 $bold(P)$ 可将 $bold(A)$ 的行按正确次序排列以得到分解式 $bold(P) bold(A) = bold(L) bold(U)$. 若要 $bold(A)$ 可逆, 则 $bold(A)$ 在换行后应存在完整的主元集.]

在 MATLAB 中指令 #raw("A([r k],:) = A([k r],:)") 将第 $k$ 行与下方的第 $r$ 行互换 (已求得第 $k$ 个主元), 然后利用 #raw("lu") 代码来更新 $bold(L)$, $bold(P)$ 以及 $bold(P)$ 的正负符号 (sign). 以下是分解指令 #raw("[L, U, P]=lu(A)") 的一部分代码:

#align(center)[#box(inset: (y: 12pt), align(left)[
#set text(fill: black)
```
A([r k], :) = A([k r], :);
L([r k], 1:k-1) = L([k r], 1:k-1);
P([r k], :) = P([k r], :);

sign = -sign
```
])]

$bold(P)$ 的符号 “sign” 用来分辨换行的次数是否为偶数. 若换行次数为奇数, 则 sign = -1. 在初始设置中, $bold(P) = bold(I)$ 且 sign = +1, 每进行一次换行就将 sign 变换一次正负符号. sign 的最终值就是 $bold(P)$ 的行列式, 这个值与换行的次序无关.

对于 $bold(P) bold(A)$ 的分解式而言, 又回到了熟悉的 $bold(L) bold(U)$. 实际上, 诸如 #raw("lu (A)") 之类的代码通常不会利用第一个可用的主元. 虽然在数学理论上可以接受一个小的主元——任意的非零值即可, 但是所有优秀的编程代码都会在列中向下搜寻最大的主元.

在第 11.1 节中将会解释这种 “列主元消元法” 为什么能够减少舍入误差, 因此 $bold(P)$ 中可能会包含在代数理论上并非必要的一些换行信息. 但此时仍然有分解式 $bold(P) bold(A) = bold(L) bold(U)$.

这里不提供确定置换矩阵 $bold(P)$ 的具体方法, 建议读者在理解置换的基础上让电脑进行相关的计算. 不使用 $bold(P)$ 时可以手工计算 $bold(A) = bold(L) bold(U)$. 教学代码 #raw("splu(A)") 用于计算分解式 $bold(P) bold(A) = bold(L) bold(U)$, #raw("splv(A,b)") 用于求解 $bold(A) bold(x) = bold(b)$, 其中 $bold(A)$ 为任意的可逆矩阵. 如果在第 $k$ 列找不到主元, #raw("splu") 程序会终止计算, 此时 $bold(A)$ 不可逆.



#pagebreak()
