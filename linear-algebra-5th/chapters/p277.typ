#import "../theme.typ": *

#dingli[性质 8　若 $A$ 是奇异矩阵, 则 $det A = 0$; 若 $A$ 是可逆矩阵, 则 $det A != 0$.]

#grid(columns: (auto, 1fr), column-gutter: 24pt,
  align(horizon)[奇异矩阵],
  align(horizon)[$mat(a, b; c, d)$ 是奇异矩阵当且仅当 $a d - b c = 0$.],
)

证　考虑从 $A$ 到 $U$ 的消元法. 若 $A$ 是奇异矩阵, 则 $U$ 中至少有一个零行, 由已学性质可知 $det A = det U = 0$. 若 $A$ 是可逆矩阵, 则 $U$ 主对角线上的元素是主元, 非零主元相乘 (利用性质 7) 得到一个非零行列式:

#dingliC[主元相乘　$det A = plus.minus det U = plus.minus("主元的乘积").$　(2)]

如下二阶方阵 ($a != 0$) 的主元是 $a$ 和 $d - c/a b$:

#grid(columns: (auto, 1fr), column-gutter: 24pt,
  align(horizon)[行列式是],
  align(horizon)[$mat(delim: "|", a, b; c, d) = mat(delim: "|", a, b; 0, d - c/a dot b) = a d - b c.$],
)

这是本书中计算行列式的第一个公式. MATLAB 就是利用主元相乘来计算 $det A$ 的. $plus.minus det U$ 中的正负号取决于换行次数的奇偶性: $+1$ 或 $-1$ 就是换行所用置换矩阵 $P$ 的行列式.

若没有换行, 则 $P = I$, $det A = det U = "主元的乘积"$, 并且 $det L = 1$.

#dingliC[若 $P A = L U$, 则 $det P det A = det L det U$ 且 $det A = plus.minus det U.$ (3)]

#dingli[性质 9　$A B$ 的行列式是 $det A$ 乘 $det B$: $|A B| = |A| |B|$.]

#grid(columns: (auto, 1fr), column-gutter: 24pt,
  align(horizon)[乘法性质],
  align(horizon)[$mat(delim: "|", a, b; c, d) mat(delim: "|", p, q; r, s) = mat(delim: "|", a p + b r, a q + b s; c p + d r, c q + d s).$],
)

当 $B$ 是 $A^(-1)$ 时, 由这个性质可知 $A^(-1)$ 的行列式是 $1/(det A)$:

#grid(columns: (auto, 1fr), column-gutter: 24pt,
  align(horizon)[$A$ 左乘 $A^(-1)$],
  align(horizon)[$A A^(-1) = I$, 因此 $(det A)(det A^(-1)) = det I = 1.$],
)

乘法性质是迄今为止最复杂的一条性质. 若直接验证, 则即使分析二阶方阵也需要一定的代数学基础:

#dmath[$
  |A| |B| &= (a d - b c)(p s - q r) \
  &= (a p + b r)(c q + d s) - (a q + b s)(c p + d r) \
  &= |A B|.
$]

#pagebreak()