#import "../theme.typ": *

#eqnumL([乘积], $bold(A) bold(B) "的转置" (bold(A) bold(B))^T = bold(B)^T bold(A)^T ,$, 2)

#eqnumL([逆矩阵], $bold(A)^(-1) "的转置" (bold(A)^(-1))^T = (bold(A)^T)^(-1) .$, 3)

尤其要注意, $bold(B)^T bold(A)^T$ 与原来乘积的顺序相反. 对于逆矩阵而言, 这类相反顺序的乘积可以很快得到检验: $bold(B)^(-1) bold(A)^(-1)$ 左乘 $bold(A) bold(B)$ 的结果是 $bold(I)$. 为了理解 $(bold(A) bold(B))^T = bold(B)^T bold(A)^T$, 可以从 $(bold(A) bold(x))^T = bold(x)^T bold(A)^T$ 开始分析, 此时 $bold(B)$ 是一个向量:

$bold(A) bold(x)$ 是矩阵 $bold(A)$ 各列的线性组合, $bold(x)^T bold(A)^T$ 是矩阵 $bold(A)^T$ 各行的线性组合.

$bold(A)$ 的列向量与 $bold(A)^T$ 的行向量一一对应, 如果不考虑外观形式, 以上两个组合是相同向量的同一线性组合! 因此列向量 $bold(A) bold(x)$ 的转置就是行向量 $bold(x)^T bold(A)^T$. 这一结论就是公式 $(bold(A) bold(x))^T = bold(x)^T bold(A)^T$. 下面证明公式 $(bold(A) bold(B))^T = bold(B)^T bold(A)^T$, 其中 $bold(B)$ 包含多个列向量.

若矩阵 $bold(B) = [bold(x)_1 quad bold(x)_2]$ 包含两列, 则对每一列都应用上述原理. $bold(A) bold(B)$ 的列是 $bold(A) bold(x)_1$ 和 $bold(A) bold(x)_2$, 它们的转置恰好是 $bold(B)^T bold(A)^T$ 的行. 若矩阵 $bold(B)$ 包含多列, 结论也成立:

#eqnumL([], $ "将" bold(A) bold(B) = [bold(A) bold(x)_1 quad bold(A) bold(x)_2 quad dots.h] "转置得" mat(delim: "[", bold(x)_1^T bold(A)^T; bold(x)_2^T bold(A)^T; dots.v) , "即" bold(B)^T bold(A)^T . $, 4)

可以每次计算 $bold(B)^T bold(A)^T$ 的一行. 下面给出 $(bold(A) bold(B))^T = bold(B)^T bold(A)^T$ 一个示例:

$ bold(A) bold(B) = mat(1,0;1,1) mat(5,0;4,1) = mat(5,0;9,1) , $

$ bold(B)^T bold(A)^T = mat(5,4;0,1) mat(1,1;0,1) = mat(5,9;0,1) . $

这一法则也可拓展到三个或更多个矩阵的乘积: $(bold(A) bold(B) bold(C))^T = bold(C)^T bold(B)^T bold(A)^T$.

#align(center)[若 $bold(A) = bold(L) bold(D) bold(U)$, 则 $bold(A)^T = bold(U)^T bold(D)^T bold(L)^T$. 对主元矩阵 $bold(D)$ 有 $bold(D) = bold(D)^T$.]

现在对 $bold(A)^(-1) bold(A) = bold(I)$ 两边同时转置, 在左边应用上述法则, 右边 $bold(I)^T$ 是 $bold(I)$, 从而确定法则 $(bold(A)^(-1))^T$ 是 $bold(A)^T$ 的逆矩阵, 即二者的乘积是 $bold(I)$:

#eqnumL([逆矩阵的转置], $ bold(A)^(-1) bold(A) = bold(I) "的转置是" bold(A)^T (bold(A)^(-1))^T = bold(I) . $, 5)

同理, 由 $bold(A) bold(A)^(-1) = bold(I)$ 可得 $(bold(A)^(-1))^T bold(A)^T = bold(I)$. 结论表明, 可对逆矩阵进行转置, 也能对转置矩阵求逆, 结果相同. 特别需要注意: $bold(A)^T$ 可逆当且仅当 $bold(A)$ 可逆.

#ti[例 1][矩阵 $bold(A) = mat(1,0;6,1)$ 的逆矩阵 $bold(A)^(-1) = mat(1,0;-6,1)$, 转置矩阵是 $bold(A)^T = mat(1,6;0,1)$.
$(bold(A)^(-1))^T$ 与 $(bold(A)^T)^(-1)$ 都等于 $mat(1,-6;0,1)$.]



#pagebreak()
