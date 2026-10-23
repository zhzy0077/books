#import "../theme.typ": *

接着考虑通常的一元函数微积分判别条件 $(dif^2 f)/(dif x^2) > 0$, 它有线性代数版:

$ "二阶偏导数矩阵" quad bold(S) = mat(F_(x x), F_(x y), F_(x z); F_(y x), F_(y y), F_(y z); F_(z x), F_(z y), F_(z z)) quad "是正定的," $

这里 $F_(x y) = dif/(dif x) ((dif F)/(dif y)) = dif/(dif y) ((dif F)/(dif x)) = F_(y x)$ 是混合二阶偏导数.

#align(center)[#image("../assets/fig-p395-icon.png", width: 4%)]
#line(length: 100%)
#align(center, subsec[挑 战 题])

#ti[32.][非奇异矩阵群满足: 若该群包含矩阵 $bold(A)$ 与 $bold(B)$, 则必包含 $bold(A) bold(B)$ 和 $bold(A)^(-1)$. “乘积与逆在群中是封闭的.” 以下情形中, 哪些矩阵集合是群 (参考第 2.7 节的习题 35)?

#sub[(a) 全体正定对称矩阵 $bold(S)$;]
#sub[(b) 全体正交矩阵 $bold(Q)$;]
#sub[(c) 给定矩阵 $bold(A)$ 的全部矩阵指数值 $e^(t bold(A))$;]
#sub[(d) 特征值为正数的全体矩阵 $bold(P)$;]
#sub[(e) 行列式为 1 的全体矩阵 $bold(D)$.]

构造其中两者的一个 “子群” (但并非单位矩阵 $bold(I)$ 所独自构成的群, 那是最小的群).]

#ti[33.][当 $bold(S)$ 和 $bold(T)$ 均为对称正定矩阵时, $bold(S) bold(T)$ 可能连对称矩阵都不是, 但其特征值仍为正数. 先对 $bold(S) bold(T) bold(x) = lambda bold(x)$ 两边与 $bold(T) bold(x)$ 做内积, 再证明 $lambda > 0$.]

#ti[34.][参考范例 6.5 C, 当 $n = 5$ 和 $h = 1/6$ 时, 写出 $5 times 5$ 正弦矩阵 $bold(Q)$, 它包含 $bold(S)$ 的特征向量. 将 $bold(S) bold(Q)$ 乘出来, 确定其五个特征值 $lambda$. $lambda$ 之和应等于迹 10, 它们的乘积应为 det $bold(S) = 6$.]

#ti[35.][设 $bold(C)$ 为正定矩阵 (因此对任意非零向量 $bold(y)$ 总有 $bold(y)^T bold(C) bold(y) > 0$), $bold(A)$ 的各列线性无关 (因此对于任意非零向量 $bold(x)$ 均有 $bold(A) bold(x) != 0$). 将能量判别法应用于 $bold(x)^T bold(A)^T bold(C) bold(A) bold(x)$, 证明 $bold(S) = bold(A)^T bold(C) bold(A)$ 是正定矩阵. 这是一种在工程中至关重要的矩阵.]

#ti[36.][(重要!) 设 $bold(S)$ 为正定矩阵, 其特征值为 $lambda_1 >= lambda_2 >= dots.c >= lambda_n$.

#sub[(a) 矩阵 $lambda_1 bold(I) - bold(S)$ 的特征值是什么? 该矩阵是半正定的吗?]
#sub[(b) 如何推出对每个 $bold(x)$ 有 $lambda_1 bold(x)^T bold(x) >= bold(x)^T bold(S) bold(x)$?]
#sub[(c) 结论: $(bold(x)^T bold(S) bold(x))/(bold(x)^T bold(x))$ 的最大值为 \_\_\_\_.]]

#ti[37.][当 $a$ 与 $c$ 取何值时, 如下矩阵 $bold(S)$ 正定? 当 $a$ 与 $c$ 取何值时, 矩阵 $bold(S)$ 半正定 (包括正定情形)?

$ bold(S) = mat(a, a, a; a, a + c, a - c; a, a - c, a + c). $]

#pagebreak()