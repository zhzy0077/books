#import "../theme.typ": *

#align(center)[$ (a) quad mat(1;0), mat(-1;1); quad (b) quad mat(0.6;0.8), mat(0.4;-0.3); quad (c) quad mat(cos theta; sin theta), mat(-sin theta; cos theta). $]

必要时改变每组第二个向量, 以生成一组标准正交向量.

#ti[2.][向量 $(2,2,-1)$ 和 $(-1,2,2)$ 是正交的. 分别除以它们各自长度, 得到标准正交向量 $bold(q)_1$ 和 $bold(q)_2$. 以这两列构成矩阵 $bold(Q)$, 求出 $bold(Q)^T bold(Q)$ 和 $bold(Q) bold(Q)^T$.]

#ti[3.][(a) 如果 $bold(A)$ 的三列正交, 且长度均为 4, 那么 $bold(A)^T bold(A)$ 等于什么?

(b) 如果 $bold(A)$ 的三列正交, 且长度分别为 1, 2, 3, 那么 $bold(A)^T bold(A)$ 等于什么?]

#ti[4.][举出分别满足以下各条件的例子:

(a) 矩阵 $bold(Q)$ 的各列标准正交, 但 $bold(Q) bold(Q)^T != bold(I)$;

(b) 两个正交但线性相关的向量;

(c) $R^3$ 的一组标准正交基, 且包括向量 $bold(q)_1 = 1/sqrt(3)(1,1,1)$.]

#ti[5.][求出平面 $x + y + 2z = 0$ 中的两个正交向量, 并将其化为标准正交的.]

#ti[6.][设 $bold(Q)_1$ 与 $bold(Q)_2$ 均为正交矩阵, 证明它们的乘积 $bold(Q)_1 bold(Q)_2$ 也是正交矩阵. (提示: 利用 $bold(Q)_i^T bold(Q)_i = bold(I), i = 1, 2$.)]

#ti[7.][如果矩阵 $bold(Q)$ 的各列标准正交, 那么 $bold(Q) bold(x) = bold(b)$ 的最小二乘解 $hat(bold(x))$ 是什么?]

#ti[8.][如果 $bold(q)_1$ 和 $bold(q)_2$ 是 $R^5$ 中的标准正交向量, 那么线性组合 $\_\_\_\_ bold(q)_1 + \_\_\_\_ bold(q)_2$ 距离给定向量 $bold(b)$ 最近.]

#ti[9.][(a) 当矩阵 $bold(Q)$ 的列为 $bold(q)_1 = (0.8,0.6,0)$ 和 $bold(q)_2 = (-0.6,0.8,0)$ 时, 计算 $bold(P) = bold(Q) bold(Q)^T$, 并验证 $bold(P)^2 = bold(P)$;

(b) 利用 $bold(Q)^T bold(Q) = bold(I)$, 证明总有 $(bold(Q) bold(Q)^T)^2 = bold(Q) bold(Q)^T$; 因此 $bold(P) = bold(Q) bold(Q)^T$ 是到矩阵 $bold(Q)$ 列空间上的投影矩阵.]

#ti[10.][标准正交向量一定是线性无关的, 按下列思路补全证法:

(a) 向量证法: 设 $bold(q)_1, bold(q)_2, bold(q)_3$ 为标准正交向量组, 当 $c_1 bold(q)_1 + c_2 bold(q)_2 + c_3 bold(q)_3 = bold(0)$ 时, 构造什么点积可得到 $c_1 = 0$? 类似地可得到 $c_2 = 0$ 和 $c_3 = 0$, 因此 $bold(q)_1, bold(q)_2, bold(q)_3$ 线性无关.

(b) 矩阵证法: 设矩阵 $bold(Q)$ 的各列标准正交, 证明由 $bold(Q) bold(x) = bold(0)$ 可得 $bold(x) = bold(0)$. 由于 $bold(Q)$ 可能是长方形的, 证明时应使用 $bold(Q)^T$, 而非 $bold(Q)^(-1)$.]

#ti[11.][(a) 格拉姆-施密特方法: 在由向量 $bold(a) = (1,3,4,5,7)$ 和 $bold(b) = (-6,6,8,0,8)$ 生成的平面内, 求出标准正交向量 $bold(q)_1$ 和 $bold(q)_2$;

(b) 在上述平面内, 哪个向量距离 $(1,0,0,0,0)$ 最近?]

#ti[12.][如果 $bold(a)_1, bold(a)_2, bold(a)_3$ 为 $R^3$ 的一组基, 则任意向量 $bold(b)$ 可写成]

#dmath[$ bold(b) = x_1 bold(a)_1 + x_2 bold(a)_2 + x_3 bold(a)_3 quad "或" quad mat(bold(a)_1, bold(a)_2, bold(a)_3) mat(x_1;x_2;x_3) = bold(b). $]

#pagebreak()