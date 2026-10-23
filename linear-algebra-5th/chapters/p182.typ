#import "../theme.typ": *

#hei[(2)] $[bold(U) quad bold(c)]$ 最后一行表明可解性条件为 $b_3 + b_2 - 5b_1 = 0$. 它确保最后一个方程为 $0 = 0$.

#hei[(3)] 第一种描述: 列空间是由主元列 $(1,2,3)$ 和 $(3,8,7)$ 的全部线性组合构成的平面. 主元在第 1,3 列上.

第二种描述: 列空间是由全部满足 $b_3 + b_2 - 5b_1 = 0$ 的向量 $bold(b) = (b_1, b_2, b_3)$ 构成的. 该条件保证了 $bold(A) bold(x) = bold(b)$ 是可解的, 因此 $bold(b)$ 属于列空间. $bold(A)$ 的各列 (仍记为向量 $bold(b)$) 也都满足条件 $b_3 + b_2 - 5b_1 = 0$. 这正是第一种描述中平面对应的方程!

#hei[(4)] 自由变量 $x_2, x_4$ 分别取值 1,0 与 0,1 时, 得到特殊解:

#grid(columns: (auto, auto), column-gutter: 2em, align: horizon,
  [ $bold(A) bold(x) = 0$ 的特殊解 \ 可由 $bold(U) bold(x) = 0$ 回代得到, \ 或由 $bold(R)$ 中自由列元素 \ 2,2,1 变号得到 ],
  [ $bold(s)_1 = mat(delim: "[", -2; 1; 0; 0), quad bold(s)_2 = mat(delim: "[", -2; 0; -1; 1) . $ ],
)

$R^4$ 中, 零空间 $N(bold(A))$ 由 $bold(s)_1$ 与 $bold(s)_2$ 的全部线性组合构成, 即 $bold(x)_n = c_1 bold(s)_1 + c_2 bold(s)_2$.

#hei[(5)] 初等行变换后, $bold(U)$ 的第 3 列 $(3,2,0)$ 化为最简行阶梯形矩阵 $bold(R)$ 的列 $(0,1,0)$. 最右边的 $bold(c) = (0,6,0)$ 变成 $bold(d) = (-9,3,0)$, 这表明特解 $bold(x)_p$ 中对应分量为 $-9$ 和 3:

#dmath[$ [bold(U) quad bold(c)] = mat(delim: "[", 1,2,3,5,0; 0,0,2,2,6; 0,0,0,0,0) -> [bold(R) quad bold(d)] = mat(delim: "[", 1,2,0,2,-9; 0,0,1,1,3; 0,0,0,0,0) . $]

#hei[(6)] 令自由变量取 0, 可得一个特解 $bold(x)_p$. 当然特解也可通过由 $bold(U) bold(x) = bold(c)$ 回代得到:

#grid(columns: (auto, auto), column-gutter: 2em, align: horizon,
  [ $bold(A) bold(x)_p = bold(b)$ 的特解可由 \ 向量 $bold(d)$ 的分量 $-9$ 和 3 获知, \ 此时自由变量 $x_2$ 和 $x_4$ 均为零 ],
  [ $bold(x)_p = mat(delim: "[", -9; 0; 3; 0) . $ ],
)

因此方程组 $bold(A) bold(x) = (0,6,-6)$ 的全解为

#dmath[$ bold(x) = bold(x)_p + bold(x)_n = bold(x)_p + c_1 bold(s)_1 + c_2 bold(s)_2 . $]

#hei[3.3 B]  已知关于方程组 $bold(A) bold(x) = bold(b)$ 解的下述信息:

#ti[(1)][方程组有唯一解;]

#ti[(2)][$bold(A) bold(x) = bold(b)$ 的所有解均形如 $bold(x) = (2,1) + c(1,1)$;]

#ti[(3)][方程组无解;]

#ti[(4)][$bold(A) bold(x) = bold(b)$ 的所有解均形如 $bold(x) = (1,1,0) + c(1,0,1)$;]

#ti[(5)][方程组有无穷多解,]

其中 $bold(A)$ 为 $m times n$ 矩阵且秩为 $r$, $bold(b)$ 为某个常数向量. 那么由此可以分别获知 $m$, $n$, $r$ 以及 $bold(A)$ 本身的哪些结论? 关于 $bold(b)$ 的结论有哪些?



#pagebreak()
