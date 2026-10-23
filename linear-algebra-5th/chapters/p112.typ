#import "../theme.typ": *
#set par(spacing: 14pt, leading: 12.8pt)

#hei[3.] 主元的乘积 $2 · 3/2 · 4/3 = 4$ 是 $bold(K)$ 的行列式. 由第 5.3 节可知,

直接计算 $bold(K)^(-1)$ 需要除以 $bold(K)$ 的行列式

#eqnum($ bold(K)^(-1) = 1/4 mat(delim: "[", 3,2,1;2,4,2;1,2,3) . $, 8)

#hei[这就是可逆矩阵行列式不等于零的原因: 因为计算时需要除以行列式.]

#hei[例 4]  设二阶方阵 $bold(A) = mat(delim: "[", 2,3;4,7)$, 请用高斯-若尔当消元法计算 $bold(A)^(-1)$.

#dmath[$ [bold(A) quad bold(I)] = mat(delim: "[", 2,3,1,0;4,7,0,1) -> mat(delim: "[", 2,3,1,0;0,1,-2,1) quad ("这是" [bold(U) quad bold(L)^(-1)]) $]

#dmath[$ -> mat(delim: "[", 2,0,7,-3;0,1,-2,1) -> mat(delim: "[", 1,0,7/2,-3/2;0,1,-2,1) quad ("这是" [bold(I) quad bold(A)^(-1)]) . $]

#hei[例 5]  若 $n$ 阶方阵 $bold(A)$ 是可逆的上三角形矩阵, 则 $bold(A)^(-1)$ 也是可逆的上三角形矩阵. 可从 $bold(A) bold(A)^(-1) = bold(I)$ 开始分析:

#hei[1.] $bold(A)$ 左乘 $bold(A)^(-1)$ 的第 $j$ 列等于 $bold(I)$ 的第 $j$ 列, 这一列的末端有 $n-j$ 个 0;

#hei[2.] 回代过程中这 $n-j$ 个 0 也在 $bold(A)^(-1)$ 的第 $j$ 列的末端;

#hei[3.] 将这些形如 $[* quad dots.c quad * quad 0 quad dots.c quad 0]^T$ 的列写入 $bold(A)^(-1)$ 得到上三角形矩阵!

以三阶方阵为例,

#dmath[$ bold(A)^(-1) = mat(delim: "[", 1,-1,0;0,1,-1;0,0,1)^(-1) = mat(delim: "[", 1,1,1;0,1,1;0,0,1) , $]

其中第 $j$ 列末端有 $3-j$ 个 0, $j=1,2$.

下文的 MATLAB 求逆代码 #raw("X = inv(A)") 应用了 #raw("rref"), 也就是第 3 章中的简化行阶梯形:

#align(center)[
  #grid(columns: (auto, auto), row-gutter: 4pt, column-gutter: 2em, align: left,
    [#raw("I=eye(n);")], [% 定义n阶单位矩阵],
    [#raw("R=rref([A  I]);")], [% 对增广矩阵[A  I]消元],
    [#raw("X=R(:,n+1:n+n)")], [% R的后n列就是X, 即A的逆矩阵],
  )
]

只有在 $n$ 阶方阵 $bold(A)$ 可逆时, 消元法才能将它化简为单位矩阵 $bold(I)$ (矩阵 $bold(R)$ 的前 $n$ 列).

高斯-若尔当消元法显示了为什么求 $bold(A)^(-1)$ 的计算量大: 因为求逆矩阵的 $n$ 个列需要解 $n$ 个线性方程组, 而这些线性方程组的左边都有相同的系数矩阵 $bold(A)$ (消元的大部分工作是针对系数矩阵的). 求 $bold(A)^(-1)$ 的乘法和减法总计算量达到 $n^3$, 而单独求解一个线性方程组 $bold(A) bold(x) = bold(b)$ 的计算量是 $n^3/3$ (可参考下一节).

无须利用 $bold(A)^(-1)$ 来解 $bold(A) bold(x) = bold(b)$, 只需针对一个列向量 $bold(b)$ 来计算列向量 $bold(x)$.



#pagebreak()
