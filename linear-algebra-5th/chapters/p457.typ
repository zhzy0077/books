#import "../theme.typ": *

#hei[18.]　设矩阵 $bold(Q)$ 的作用是将坐标轴 (而非平面) 逆时针旋转 $theta$. 请问原始的向量 $(1, 0)$ 在 (旋转后的) 新坐标系下的坐标 $(a, b)$ 是什么? 这个逆过程的求解可能有点棘手, 请画图或直接求解坐标 $a$ 与 $b$:

$ bold(Q) = mat(delim: "[", cos theta, -sin theta; sin theta, cos theta), quad quad vec(delim: "[", 1, 0) = a vec(delim: "[", cos theta, sin theta) + b vec(delim: "[", -sin theta, cos theta). $

#hei[19.]　将 $(1, 0), (0, 1)$ 分别变换为 $(1, 4), (1, 5)$ 的矩阵 $bold(B) = \_\_\_\_$. 当线性组合 $a(1, 4) + b(1, 5)$ 等于 $(1, 0)$ 时, $(a, b) = \_\_\_\_$. 请在此基础上分析, $(1, 0)$ 的新坐标与矩阵 $bold(B)$ 或 $bold(B)^(-1)$ 有什么联系?

习题 20—23 是关于二次函数空间的, 其中的元素形如 $y = A + B x + C x^2$.

#hei[20.]　设抛物线方程为 $w_1(x) = 1/2 (x^2 + x)$, 则 $w_1(1) = 1$, $w_1(0) = w_1(-1) = 0$. 请按以下条件求解抛物线方程 $w_2(x), w_3(x)$, 并利用线性性质求解 $y(x)$:

(a) $w_2(0) = 1, w_2(1) = w_2(-1) = 0$;

(b) $w_3(-1) = 1, w_3(0) = w_3(1) = 0$;

(c) $y(1) = 4, y(0) = 5, y(-1) = 6$, 请利用 $w_1(x), w_2(x), w_3(x)$ 求解 $y(x)$.

#hei[21.]　$bold(v)_1 = 1, bold(v)_2 = x$ 与 $bold(v)_3 = x^2$ 是二次函数空间的一组基, 习题 20 中的 $w_1, w_2, w_3$ 是该空间的另一组基. 请分别求解从 $w_1, w_2, w_3$ 到 $bold(v)_1, bold(v)_2, bold(v)_3$ 以及从 $bold(v)_1, bold(v)_2, bold(v)_3$ 到 $w_1, w_2, w_3$ 的基变换矩阵.

#hei[22.]　设抛物线方程为 $y(x) = A + B x + C x^2$, 且 $y(a) = 4, y(b) = 5, y(c) = 6$, 请写出有关 $A, B, C$ 的三个方程, 并求出其中的三阶系数方阵的行列式. 该矩阵是将形如 4,5,6 的数值变换为抛物线 $y$, 还是反过来, 即将抛物线变换为数值 4,5,6?

#hei[23.]　全体函数 $y(x) = a + b x + c x^2$ 的集合是一个线性空间, 若要使下列三个二次函数构成该空间的一组基, 则系数 $m_1, m_2, dots.c, m_9$ 需要满足什么条件?

$ bold(v)_1 = m_1 + m_2 x + m_3 x^2, $

$ bold(v)_2 = m_4 + m_5 x + m_6 x^2, $

$ bold(v)_3 = m_7 + m_8 x + m_9 x^2. $

#hei[24.]　格拉姆-施密特正交化方法将一组基 $bold(a)_1, bold(a)_2, bold(a)_3$ 变换为标准正交基 $bold(q)_1, bold(q)_2, bold(q)_3$. 分别以这两组基作为矩阵 $bold(A), bold(Q)$ 的列向量构造 $bold(A) = bold(Q) bold(R)$, 请证明矩阵 $bold(R)$ 是从 $bold(a)_1, bold(a)_2, bold(a)_3$ 到 $bold(q)_1, bold(q)_2, bold(q)_3$ 的基变换矩阵. (当 $bold(A) = bold(Q) bold(R)$ 时, $bold(a)_2$ 是 $bold(q)_1, bold(q)_2, bold(q)_3$ 的什么线性组合?)

#hei[25.]　在由消元法得到的分解式 $bold(A) = bold(L) bold(U)$ 中, 矩阵 $bold(A)$ 的行变换为 $bold(U)$ 的行. 请问 $bold(A)$ 的第 2 行是 $bold(U)$ 中行的什么线性组合? 将等式两边同时转置得 $bold(A)^T = bold(U)^T bold(L)^T$, 这样就可以针对列开展分析. 如果这些矩阵 $\_\_\_\_$, 我们就有了组基, 此时基变换矩阵是 $bold(B) = bold(L)^T$.

#hei[26.]　设 $bold(v)_1, bold(v)_2, bold(v)_3$ 是变换 $T$ 的特征向量, 即 $T(bold(v)_i) = lambda_i bold(v)_i, i = 1, 2, 3$. 当输入基与输出基都是 $bold(v)_1, bold(v)_2, bold(v)_3$ 时, 请问变换 $T$ 的矩阵是什么?

#pagebreak()