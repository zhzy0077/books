#import "../theme.typ": *
#set par(spacing: 17pt, leading: 14pt)
#show math.equation.where(block: true): set block(above: 18pt, below: 18pt)
#set math.mat(row-gap: 0.7em)

#ti[5.][请在阶数 $n$ 分别是 5, 6, 7 时计算出将反向单位矩阵 $J_n$ 变成单位矩阵 $I_n$ 的换行次数, 提出对任意阶数 $n$ 的相关结论, 预测 $J_101$ 的行列式是 $+1$ 还是 $-1$.]
#v(6pt)
#ti[6.][请写出由性质 3 推导性质 6 的证明过程 (即证明若方阵有一行元素全为零, 则行列式为 0).]
#v(6pt)
#ti[7.][请分别计算下列矩阵 (分别为旋转矩阵和反射矩阵) 的行列式:

#align(center)[#grid(columns: (auto, auto), column-gutter: 3em, align: horizon,
  [(a) $display(bold(Q) = mat(delim: "[", cos theta, -sin theta; sin theta, cos theta))$,],
  [(b) $display(bold(Q) = mat(delim: "[", 1 - 2 cos^2 theta, -2 cos theta sin theta; -2 cos theta sin theta, 1 - 2 sin^2 theta)) .$],
)]]
#v(6pt)
#ti[8.][请证明每个正交矩阵 $bold(Q)$ (满足 $bold(Q)^T bold(Q) = bold(I)$) 的行列式都是 1 或 $-1$.

#sub[(a) 同时利用乘积性质 $|bold(A) bold(B)| = |bold(A)| |bold(B)|$ 和转置性质 $|bold(Q)| = |bold(Q)^T|$;]

#sub[(b) 只利用乘积性质: 若 $|det bold(Q)| > 1$, 则 $det bold(Q)^n = (det bold(Q))^n$ 会爆炸式增长, 如何证明这对于 $bold(Q)^n$ 是不可能发生的?]]
#v(6pt)
#ti[9.][下列矩阵的行列式是 0, 1, 2 或 3 吗?]

#dmath[$bold(A) = mat(delim: "[", 0, 0, 1; 1, 0, 0; 0, 1, 0), quad bold(B) = mat(delim: "[", 0, 1, 1; 1, 0, 1; 1, 1, 0), quad bold(C) = mat(delim: "[", 1, 1, 1; 1, 1, 1; 1, 1, 1).$]
#v(6pt)
#ti[10.][若 $bold(A)$ 中任意一行元素相加都是零, 请求解 $bold(A) bold(x) = bold(0)$ 来证明 $det bold(A) = 0$. 若任意一行元素相加都是 1, 请证明 $det(bold(A) - bold(I)) = 0$, 这意味着 $det bold(A) = 1$ 吗?]
#v(6pt)
#ti[11.][设 $bold(C) bold(D) = -bold(D) bold(C)$, 请找出如下推理的错误:

两边计算行列式得 $|bold(C)| |bold(D)| = -|bold(D)| |bold(C)|$, 则有 $|bold(C)| = 0$ 或 $|bold(D)| = 0$, 从而至少有一个矩阵是奇异矩阵. (这是错误的.)]
#v(6pt)
#ti[12.][若 $bold(A)$ 是 2 阶可逆矩阵, 从以下计算可得 $det bold(A)^(-1)$ 似乎等于 1:]

#dmath[$det bold(A)^(-1) = det(1/(a d - b c) mat(delim: "[", d, -b; -c, a)) = (a d - b c)/(a d - b c) = 1.$]

请问上式中存在什么错误? $det bold(A)^(-1)$ 的正确结果是什么?
#v(6pt)
#exerciseNote[习题 13—27 使用性质来计算特定的行列式.]
#v(6pt)
#ti[13.][请将以下矩阵 $bold(A)$ 化简成 $bold(U)$ 来计算 $det bold(A)$ 等于主元的乘积:

#align(center)[#grid(columns: (auto, auto), column-gutter: 3em, align: horizon,
  [(a) $display(bold(A) = mat(delim: "[", 1, 1, 1; 1, 2, 2; 1, 2, 3))$;],
  [(b) $display(bold(A) = mat(delim: "[", 1, 2, 3; 2, 2, 3; 3, 3, 3)) .$],
)]]

#ti[14.][利用行变换得到上三角形矩阵 $bold(U)$ 来计算行列式:]

#dmath[$det mat(delim: "[", 1, 2, 3, 0; 2, 6, 6, 1; -1, 0, 0, 3; 0, 2, 0, 7), quad quad det mat(delim: "[", 2, -1, 0, 0; -1, 2, -1, 0; 0, -1, 2, -1; 0, 0, -1, 2) .$]

#pagebreak()