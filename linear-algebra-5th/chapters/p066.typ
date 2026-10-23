#import "../theme.typ": *

习题 26—28 复习二—四维的行图与列图.

#hei[26.] 请画出如下方程组的行图与列图:

#dmath[$ cases(x - 2y = 0, x + y = 6). $]

#hei[27.] 若线性方程组中包含两个方程和三个未知数 $x, y, z$, 则行图将包括 \_\_\_\_ 维空间中的 \_\_\_\_ 条/个 \_\_\_\_, 列图也在 \_\_\_\_ 维空间中. 该线性方程组的解通常构成 \_\_\_\_.

#hei[28.] 若线性方程组中包含四个方程和两个未知数 $x, y$, 则行图中有四 \_\_\_\_, 列图在 \_\_\_\_ 维空间中. 只有当方程组右侧的向量是 \_\_\_\_ 的线性组合时, 方程组才有解.

#hei[29.] 从向量 $bold(u)_0 = (1, 0)$ 开始, 反复用同一个“马尔可夫 (Markov) 矩阵” $bold(A) = mat(delim: "[", 0.8, 0.3; 0.2, 0.7)$ 左乘, 将随后所得三个向量设为 $bold(u)_1, bold(u)_2, bold(u)_3$, 即

$ bold(u)_1 = mat(delim: "[", 0.8, 0.3; 0.2, 0.7) mat(delim: "[", 1; 0) = mat(delim: "[", 0.8; 0.2), $

$bold(u)_2 = bold(A) bold(u)_1 =$ #underline[#h(3.5em)], #h(1.5em) $bold(u)_3 = bold(A) bold(u)_2 =$ #underline[#h(3.5em)].

请问 $bold(u)_0, bold(u)_1, bold(u)_2, bold(u)_3$ 这四个向量中存在什么值得注意的性质?

#xiti[挑 战 题]

#hei[30.] 从习题 29 中的 $bold(u)_0 = (1, 0)$ 计算到 $bold(u)_7$, 另外再对 $bold(v)_0 = (0, 1)$ 用同样的方式计算到 $bold(v)_7$. 针对 $bold(u)_7$ 与 $bold(v)_7$ 有何发现? 可以使用 #raw("while") 与 #raw("for") 的循环结构编写以下两段 MATLAB 代码, 绘制出 $bold(u)_0$ 到 $bold(u)_7$ 以及 $bold(v)_0$ 到 $bold(v)_7$ 的图形 (还可使用其他编程语言):

#grid(columns: (1fr, 1fr), column-gutter: 1em,
  raw("u=[1; 0];  A=[.8 .3; .2 .7];
x=u;  k=[0 : 7];
while size(x,2) <= 7
    u=A*u;  x=[x u];
end
plot(k, x)", block: true),
  raw("v=[0; 1];  A=[.8 .3; .2 .7];
x=v;  k=[0 : 7];
for j=1 : 7
    v=A*v;  x=[x v];
end
plot(k, x)", block: true),
)

由试验可见序列 $\{bold(u)_i, i = 0, 1, 2, dots.c\}$ 和 $\{bold(v)_i, i = 0, 1, 2, dots.c\}$ 会接近一个稳定状态的向量 $bold(s)$, 试猜测向量 $bold(s)$ 并验证 $bold(A) bold(s) = bold(s)$, 即若从 $bold(s)$ 开始执行运算, 则结果将一直为 $bold(s)$.

#hei[31.] 请设计一个以数字 $1, 2, dots.c, 9$ 为元素的 $3 times 3$ 幻方矩阵 $bold(M)_3$, 使得每一行、每一列、每条对角线上的元素之和是 15, 例如, 第 1 行可以排列 $8, 3, 4$. 请计算 $bold(M)_3$ 左乘 $(1, 1, 1)$ 的结果. 类似地, 将 $1, 2, dots.c, 16$ 排列成 $4 times 4$ 幻方矩阵 $bold(M)_4$, 请计算 $bold(M)_4$ 左乘 $(1, 1, 1, 1)$ 的结果.



#pagebreak()
