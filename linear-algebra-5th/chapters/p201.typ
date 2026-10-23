#import "../theme.typ": *
#set par(spacing: 14pt, leading: 12.8pt)

#ti[3.][证明在 $a = 0$ 或 $d = 0$ 或 $f = 0$ 三种情形下, 矩阵 $bold(U)$ 的各列线性相关:

#dmath[$ bold(U) = mat(delim: "[", a, b, c; 0, d, e; 0, 0, f) . $]]

#ti[4.][设第 3 题的 $a, d, f$ 均非零, 证明 $bold(U) bold(x) = 0$ 的唯一解是零解 $bold(x) = 0$. 因而上三角形矩阵 $bold(U)$ 的各列线性无关.]

#ti[5.][确定以下各组向量是线性相关, 还是线性无关?

#sub[(a) $(1, 3, 2), (2, 1, 3), (3, 2, 1)$;]
#sub[(b) $(1, -3, 2), (2, 1, -3), (-3, 2, 1)$.]]

#ti[6.][选出 $bold(U)$ 三个线性无关的列, 再找出另外两组线性无关的列; 对于矩阵 $bold(A)$ 如法炮制:

#dmath[$ bold(U) = mat(delim: "[", 2,3,4,1;0,6,7,0;0,0,0,9;0,0,0,0), quad bold(A) = mat(delim: "[", 2,3,4,1;0,6,7,0;0,0,0,9;4,6,8,2) . $]]

#ti[7.][设 $bold(w)_1, bold(w)_2, bold(w)_3$ 线性无关, 证明向量差

#dmath[$ bold(v)_1 = bold(w)_2 - bold(w)_3, quad bold(v)_2 = bold(w)_1 - bold(w)_3, quad bold(v)_3 = bold(w)_1 - bold(w)_2 $]

线性相关. 求出 $bold(v)_1, bold(v)_2, bold(v)_3$ 的一个线性组合, 使其等于零向量. 在

$ [bold(v)_1 quad bold(v)_2 quad bold(v)_3] = [bold(w)_1 quad bold(w)_2 quad bold(w)_3] bold(A) $

中的 $bold(A)$ 是奇异矩阵吗?]

#ti[8.][设 $bold(w)_1, bold(w)_2, bold(w)_3$ 线性无关, 证明向量和

#dmath[$ bold(v)_1 = bold(w)_2 + bold(w)_3, quad bold(v)_2 = bold(w)_1 + bold(w)_3, quad bold(v)_3 = bold(w)_1 + bold(w)_2 $]

线性无关. (提示: 将 $c_1 bold(v)_1 + c_2 bold(v)_2 + c_3 bold(v)_3 = 0$ 写成关于 $bold(w)_i$ 的关系式. 由此得到关于系数 $c_i$ 的方程组, 解该方程组, 即可证明系数 $c_i$ 全为零.)]

#ti[9.][已知 $bold(R)^3$ 中向量 $bold(v)_1, bold(v)_2, bold(v)_3, bold(v)_4$.

#sub[(a) 因为 \_\_\_\_, 这四个向量线性相关;]
#sub[(b) 当 \_\_\_\_ 时, 向量 $bold(v)_1$ 和 $bold(v)_2$ 线性相关;]
#sub[(c) 因为 \_\_\_\_, 向量 $bold(v)_1$ 和 $(0, 0, 0)$ 线性相关.]]

#ti[10.][在 $bold(R)^4$ 中, 设点的坐标为 $(x, y, z, t)$, 找出平面 $x + 2y - 3z - t = 0$ 上两个线性无关向量 (向量的起点为原点, 终点在该平面上) 再找出三个线性无关向量. 为什么找不到四个线性无关向量? 该平面是什么矩阵的零空间?]

#exerciseNote[习题 11—14 是有关向量生成空间的. 向量的全部线性组合构成了生成空间.]

#ti[11.][在 $bold(R)^3$ 中, 描述由以下向量所生成子空间, 并判断该空间是直线、平面还是 $bold(R)^3$ 本身?

#sub[(a) $(1, 1, -1), (-1, -1, 1)$;]]



#pagebreak()
