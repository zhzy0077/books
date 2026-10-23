#import "../theme.typ": *

如果 $bold(b)$ 不属于 $bold(A)$ 的列空间, 那么它与 $bold(A)^T$ 的零空间并不正交. 选出合适的数 $y_1, y_2, y_3$, 用它们分别乘方程 $x_1 - x_2 = 1$, $x_2 - x_3 = 1$ 和 $x_1 - x_3 = 1$, 然后相加得到 $0 = 1$.

#ti[8.][图 4.3 中, 如何得知向量 $bold(A) bold(x)_r$ 等于 $bold(A) bold(x)$? 如何得知该向量属于 $bold(A)$ 的列空间? 当 $bold(A) = mat(delim: "[", 1,1;1,1)$, $bold(x) = vec(delim: "[", 1, 0)$ 时, $bold(x)_r$ 等于什么?]

#ti[9.][如果 $bold(A)^T bold(A) bold(x) = 0$, 那么 $bold(A) bold(x) = 0$. 理由: $bold(A) bold(x)$ 既在 $bold(A)^T$ 的零空间中, 也在 $bold(A)$ 的 \_\_\_\_ 中, 而这些空间是 \_\_\_\_. 结论: $bold(A)^T bold(A)$ 与 $bold(A)$ 有相同的零空间. 这个关键结论将在下一节再次出现.]

#ti[10.][设 $bold(A)$ 为对称矩阵, 即 $bold(A)^T = bold(A)$.]

#sub[(a) 为什么它的列空间垂直于零空间?]

#sub[(b) 如果 $bold(A) bold(x) = 0$ 和 $bold(A) bold(z) = 5 bold(z)$ 成立, 哪些子空间包含“特征向量”(第 6.1 节) $bold(x)$ 与 $bold(z)$? 对称矩阵有垂直的特征向量, 即 $bold(x)^T bold(z) = 0$.]

#ti[11.][(推荐) 画出以下矩阵对应的图 4.2, 正确展示每个子空间:]

#dmath[$ bold(A) = mat(delim: "[", 1,2; 3,6), quad bold(B) = mat(delim: "[", 1,0; 3,0). $]

#ti[12.][已知]

#dmath[$ bold(A) = mat(delim: "[", 1,-1; 0,0; 0,0), quad bold(x) = vec(delim: "[", 2, 0), $]

求出由 $bold(x)$ 正交分解出的两部分 $bold(x)_r$ 和 $bold(x)_n$, 并画出对应的图 4.3.

习题 13—23 是关于正交子空间的.

#ti[13.][将子空间 $V$ 和 $W$ 的基向量分别作为矩阵 $bold(V)$ 和 $bold(W)$ 的列向量. 为什么判断子空间 $V, W$ 正交只需检验 $bold(V)^T bold(W)$ 是否等于零矩阵? 请解释原因. 这与正交向量 $bold(v), bold(w)$ 满足 $bold(v)^T bold(w) = 0$ 相一致.]

#ti[14.][设原点在墙角处, 由于地板平面 $V$ 与墙面 $W$ 有一个公共的非零向量 (沿两者的交线), 因此 $V$ 与 $W$ 不是正交子空间. $R^3$ 中平面 $V$ 与 $W$ 不可能正交! 求出同属以下矩阵列空间的一个向量:]

#dmath[$ bold(A) = mat(delim: "[", 1,2; 1,3; 1,2), quad bold(B) = mat(delim: "[", 5,4; 6,3; 5,1). $]

该向量既可写成 $bold(A) bold(x)$, 又可写成 $bold(B) bold(hat(x))$. 提示: 考虑 $3 times 4$ 矩阵 $[bold(A) bold(B)]$.

#ti[15.][将习题 14 推广到 $R^n$ 中的 $p$ 维子空间 $V$ 和 $q$ 维子空间 $W$. 关于 $p + q$ 的哪个不等式可以确保 $V$ 与 $W$ 相交于非零向量? 此时这两个子空间不可能正交.]

#pagebreak()