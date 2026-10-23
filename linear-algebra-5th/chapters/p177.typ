#import "../theme.typ": *

对于一般的 $bold(b) = (b_1, b_2, b_3)$, 增广矩阵的消元过程如下:

#align(center)[
  $[bold(A) quad bold(b)] = mat(1,3,0,2,b_1; 0,0,1,4,b_2; 1,3,1,6,b_3) -> mat(1,3,0,2,b_1; 0,0,1,4,b_2; 0,0,0,0,b_3 - b_1 - b_2) = [bold(R) quad bold(d)] ,$
]

因此只有当 $b_3 - b_1 - b_2 = 0$ 时, 第三个方程才能化为 $0 = 0$. 此时 $b_1 + b_2 = b_3$.

#subsec[特解 $bold(A) bold(x)_p = bold(b)$]

为了得到一个简单的解 $bold(x)_p$, 令上述自由变量取值为零, 即 $x_2 = x_4 = 0$, 那么两个非零行对应的方程给出两个主元变量的值 $x_1 = 1$ 和 $x_3 = 6$. 从而方程组 $bold(A) bold(x) = bold(b)$ (还有 $bold(R) bold(x) = bold(d)$) 的特解为 $bold(x)_p = (1, 0, 6, 0)$. 这种特解求法通用而有效, 值得推荐, 即自由变量赋值零, 主元变量由 $bold(d)$ 定.

方程组有解时, $bold(R)$ 中的全零行必然对应 $bold(d)$ 的零分量. 由于 $bold(R)$ 中主元所在行、列的公共元素构成一个单位矩阵 $bold(I)$, 所以特解 $bold(x)_p$ 中主元变量值来自 $bold(d)$. 例如,

#align(center)[
  #grid(columns: (auto, auto), column-gutter: 28pt, align: horizon,
    [$bold(R) bold(x)_p = mat(1,3,0,2; 0,0,1,4; 0,0,0,0) mat(1; 0; 6; 0) = mat(1; 6; 0)$],
    [自由变量取 0, 0,\
     主元变量取 1, 6,\
     特解 $bold(x)_p = (1, 0, 6, 0)$ .],
  )
]

注意自由变量先取值为零, 再解出主元变量值的过程. 利用初等行变换将 $bold(A)$ 化为 $bold(R)$ 后, 这一过程将非常快捷. 一旦自由变量值为零, 特解 $bold(x)_p$ 的主元变量容易由右边的向量 $bold(d)$ 得到.

#dingli[特解 $bold(x)_p$ 满足 $bold(A) bold(x)_p = bold(b)$, $n - r$ 个特殊解 $bold(x)_n$ 满足 $bold(A) bold(x)_n = 0$.]

这里特解为 $(1, 0, 6, 0)$. 而 $bold(R) bold(x) = 0$ 解空间 ($bold(A)$ 的零空间) 中的两个特殊解可由 $bold(R)$ 的两个自由列得到, 只需将 3, 2 和 4 取相反数即可. 注意以下 $bold(A) bold(x) = bold(b)$ 全解 $bold(x)_p + bold(x)_n$ 的形式:

#dingliC[$"全解由一个" bold(x)_p "和多个" bold(x)_n "构成" quad bold(x) = bold(x)_p + bold(x)_n = mat(1; 0; 6; 0) + x_2 mat(-3; 1; 0; 0) + x_4 mat(-2; 0; -4; 1) .$]

#hei[问]  设 $m times n$ 矩阵 $bold(A)$ 为可逆方阵, 即 $m = n = r$, 那么 $bold(x)_p$ 与 $bold(x)_n$ 分别是什么?

#hei[答]  特解是 $bold(A) bold(x) = bold(b)$ 的唯一解 $bold(x)_p = bold(A)^(-1) bold(b)$. 此时既没有特殊解, 也不存在自由变量, 因为最简行阶梯形矩阵 $bold(R)$ 等于单位矩阵 $bold(I)$, 它没有全零行. $bold(A)$ 的零空间只含一个向量, 即 $bold(x)_n = 0$. 因此全解为

#dmath[$ bold(x) = bold(x)_p + bold(x)_n = bold(A)^(-1) bold(b) + 0 . $]



#pagebreak()
