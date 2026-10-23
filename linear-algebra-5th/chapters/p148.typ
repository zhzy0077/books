#import "../theme.typ": *

#align(center, image("../assets/fig-p148-icon.png", width: 3.0%))
#line(length: 100%, stroke: 0.6pt)
#align(center, text(size: 13pt)[#hei[挑 战 题]])

#ti[36.][连接位置 $(1, n)$ 至位置 $(n, 1)$ 的反对角线下方的元素 (即矩阵东南角) 全是 0 的方阵称为 “西北矩阵”, 记为 $bold(B)$, 请问 $bold(B)^T$ 和 $bold(B)^2$ 是否还是 “西北矩阵”? $bold(B)^(-1)$ 是 “西北矩阵” 还是 “东南矩阵”? 矩阵 $bold(B) bold(C)$ 为 “西北矩阵” 左乘 “东南矩阵”, 是什么形状?]

#ti[37.][如果计算置换矩阵 $bold(P)$ 的幂, 请问为什么有些幂 $bold(P)^k$ 最终会等于单位矩阵 $bold(I)$? 请写出一个 5 阶置换矩阵 $bold(P)$, 使得等于 $bold(I)$ 的最低次幂是 $bold(P)^6$.]

#ti[38.][(a) 请任意写出一个三阶方阵 $bold(M)$, 并将 $bold(M)$ 拆分成 $bold(S) + bold(A)$, 其中 $bold(S) = bold(S)^T$ 是对称矩阵且 $bold(A) = -bold(A)^T$ 是反称矩阵;
#sub[(b) 对如上所示的 $bold(M) = bold(S) + bold(A)$, 请利用 $bold(M)$ 和 $bold(M)^T$ 写出 $bold(S)$ 和 $bold(A)$ 的计算公式.]]

#ti[39.][设 $n$ 阶方阵 $bold(Q)^T$ 等于 $bold(Q)^(-1)$ (转置矩阵等于逆矩阵, 故 $bold(Q)^T bold(Q) = bold(I)$).
#sub[(a) 证明矩阵 $bold(Q)$ 的列 $bold(q)_1, bold(q)_2, dots.c, bold(q)_n$ 都是单位向量, 即 $norm(bold(q)_i)^2 = 1, i = 1, 2, dots.c, n$;]
#sub[(b) 证明矩阵 $bold(Q)$ 的任意两列都正交, 即 $bold(q)_i^T bold(q)_j = 0, i != j$;]
#sub[(c) 请写出一个二阶方阵 $bold(Q)$ 使得第一个元素 $q_(11) = cos theta$.]]

#hei(size: 12pt)[补充材料: 求导运算的转置]

线性代数还可以与微积分建立联系, 这一点非常重要. (实质是关于函数 $x(t)$ 的线性代数.) 此时左乘矩阵对应求导, 不妨记为 $bold(A) = dif/(dif t)$. 为计算这个特殊矩阵 $bold(A)$ 的转置, 需要定义两个函数 $x(t)$ 与 $y(t)$ 之间的内积.

函数的内积从关于 $x_k y_k$ 的求和变成关于 $x(t) y(t)$ 的积分.

#dingliC[$ bold(x)^T bold(y) = (bold(x), bold(y)) = integral_(-oo)^(oo) x(t) y(t) dif t . $]

通过这个内积可以得到关于 $bold(A)^T$ 的要求. 当处理导数时, 使用 “伴随” 会比 “转置” 更贴切.

矩阵 $bold(A)$ 的转置满足 $(bold(A) bold(x))^T bold(y) = bold(x)^T (bold(A)^T bold(y))$, 而 $bold(A) = dif/(dif t)$ 的伴随则满足 (假设以下积分均有意义)

#dmath[$ (bold(A) bold(x), bold(y)) = integral_(-oo)^(+oo) (dif x)/(dif t) y(t) dif t = integral_(-oo)^(+oo) x(t) (-(dif y)/(dif t)) dif t = (bold(x), bold(A)^T bold(y)) . $]

通过分部积分知识可知, 当对第一个函数 $x(t)$ 求导转换为对第二个函数 $y(t)$ 求导时, 需要添加负号. 由此可知求导的转置就是求导后添负号.

求导是反称的: $bold(A) = dif/(dif t)$ 且 $bold(A)^T = -dif/(dif t)$. 由定义, 对称矩阵 $bold(S)$ 满足 $bold(S)^T = bold(S)$, 而反称矩阵 $bold(A)$ 满足 $bold(A)^T = -bold(A)$. 第 8 章的线性代数知识包含导数和积分, 因为它们都是线性的.



#pagebreak()
