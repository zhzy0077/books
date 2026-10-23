#import "../theme.typ": *

#ti[11.][将如下 $bold(b)$ 投影到 $bold(A)$ 的列空间上, 先求解 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$, 再得出 $bold(p) = bold(A) hat(bold(x))$:

#align(center)[(a) $bold(A) = mat(1, 1; 0, 1; 0, 0), quad bold(b) = mat(2; 3; 4)$; #h(3em) (b) $bold(A) = mat(1, 1; 1, 1; 0, 1), quad bold(b) = mat(4; 4; 6)$.]

求出 $bold(e) = bold(b) - bold(p)$. 它应当垂直于 $bold(A)$ 的各列.]

#ti[12.][在习题 11 中, 计算到列空间上的投影矩阵 $bold(P)_1$ 和 $bold(P)_2$. 验证 $bold(P)_1 bold(b) = bold(p)_1$, 以及 $bold(P)_2^2 = bold(P)_2$.]

#ti[13.][(推荐) 设 $bold(A)$ 为由 $4 times 4$ 单位矩阵移除最后一列所得. 显然 $bold(A)$ 是 $4 times 3$ 的. 将向量 $bold(b) = (1, 2, 3, 4)$ 投影到 $bold(A)$ 的列空间上. 投影矩阵 $bold(P)$ 的形状如何? $bold(P)$ 是什么?]

#ti[14.][设向量 $bold(b)$ 等于 $bold(A)$ 首列的 2 倍. $bold(b)$ 到 $bold(A)$ 列空间上的投影是什么? 此时是否必有 $bold(P) = bold(I)$? 当 $bold(b) = (0, 2, 4)$ 而 $bold(A)$ 的列分别为 $(0, 1, 2)$ 和 $(1, 2, 0)$ 时, 计算 $bold(p)$ 和 $bold(P)$.]

#ti[15.][当 $bold(A)$ 翻倍时, 投影矩阵 $bold(P) = 2 bold(A) (4 bold(A)^T bold(A))^(-1) 2 bold(A)^T$, 仍是 $bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T$. $2 bold(A)$ 的列空间与 $\_\_\_\_$ 的相同. $bold(A)$ 与 $2 bold(A)$ 各自对应的 $hat(bold(x))$ 相同吗?]

#ti[16.][在向量 $(1, 2, -1)$ 与 $(1, 0, 1)$ 的线性组合中, 距离 $bold(b) = (2, 1, 1)$ 最近 (指两个向量末端最近) 的是哪一个?]

#ti[17.][(重要) 设 $bold(P)^2 = bold(P)$, 证明 $(bold(I) - bold(P))^2 = bold(I) - bold(P)$. 当 $bold(P)$ 为到 $bold(A)$ 列空间上的投影矩阵时, $bold(I) - bold(P)$ 对应到 $\_\_\_\_$ 上的投影.]

#ti[18.][(a) 如果 $2 times 2$ 矩阵 $bold(P)$ 为到过 $(1, 1)$ 的直线上的投影矩阵, 那么 $bold(I) - bold(P)$ 是到 $\_\_\_\_$ 上的投影矩阵;

(b) 如果 $3 times 3$ 矩阵 $bold(P)$ 为到过 $(1, 1, 1)$ 的直线上的投影矩阵, 那么 $bold(I) - bold(P)$ 是到 $\_\_\_\_$ 上的投影矩阵.]

#ti[19.][为求到平面 $x - y - 2z = 0$ 上的投影矩阵, 选择平面上的两个向量, 令其为矩阵 $bold(A)$ 的列. 那么该平面就是 $bold(A)$ 的列空间! 然后计算 $bold(P) = bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T$.]

#ti[20.][为了求出习题 19 中同一平面 $x - y - 2z = 0$ 上的投影矩阵 $bold(P)$, 写出一个垂直于平面的向量 $bold(e)$. 计算到过 $bold(e)$ 的直线上的投影矩阵 $bold(Q) = (bold(e) bold(e)^T)/(bold(e)^T bold(e))$, 进而可得 $bold(P) = bold(I) - bold(Q)$.]

习题 21—26 表明投影矩阵 $bold(P)$ 满足 $bold(P)^2 = bold(P)$ 以及 $bold(P)^T = bold(P)$.

#ti[21.][将矩阵 $bold(P) = bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T$ 乘自身, 化简后证明 $bold(P)^2 = bold(P)$. 给出 $bold(P)(bold(P b))$ 等于 $bold(P b)$ 的原因: 向量 $bold(P b)$ 就在 $bold(A)$ 的列空间中, 因而它到列空间上的投影 $\_\_\_\_$.]

#ti[22.][通过计算 $bold(P)^T$, 证明 $bold(P) = bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T$ 是对称矩阵. 注意, 对称矩阵的逆矩阵仍然是对称的.]

#ti[23.][当 $bold(A)$ 为可逆方阵时, 由于 $bold(A) bold(A)^(-1) (bold(A)^T)^(-1) bold(A)^T = bold(I)$ 成立, “不要分拆 $(bold(A)^T bold(A))^(-1)$” 的警告不再适用. 当 $bold(A)$ 可逆时, 为什么 $bold(P) = bold(I)$ 成立? 误差 $bold(e)$ 又是什么?]

#ti[24.][$bold(A)^T$ 的零空间 $\_\_\_\_$ 列空间 $C(bold(A))$. 因此如果 $bold(A)^T bold(b) = 0$, 则 $bold(b)$ 到 $C(bold(A))$ 上的投影应为 $bold(p) = \_\_\_\_$. 根据 $bold(P) = bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T$ 可得出本题的答案.]

#ti[25.][到 $R^m$ 中 $n$ 维子空间的投影矩阵 $bold(P)$ 的秩为 $r = n$. 理由: 投影 $bold(P b)$ 充满子空间 $S$, 故 $S$ 是 $bold(P)$ 的 $\_\_\_\_$.]

#pagebreak()