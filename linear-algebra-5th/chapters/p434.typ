#import "../theme.typ": *

#hei[解]　若 $bold(A)$ 的各列线性无关 (因 $bold(A)$ 列满秩), 则 $bold(A)^T bold(A)$ 是可逆矩阵, 这是第 4.2 节的一个关键结论, 从而 $bold(L) = (bold(A)^T bold(A))^(-1) bold(A)^T$ 左乘 $bold(A)$ 必有 $bold(L) bold(A) = bold(I)$, 于是得到 $bold(A)$ 的左逆.

$bold(A) bold(L) = bold(A) (bold(A)^T bold(A))^(-1) bold(A)^T$ 为第 4.2 节中到列空间上的投影矩阵, 因此 $bold(L)$ 符合对 $bold(A)^+$ 的要求: $bold(L) bold(A)$ 与 $bold(A) bold(L)$ 分别是到 $C(bold(A))$ 与 $C(bold(A)^T)$ 上的投影矩阵.

若 $bold(A)$ 是行满秩的, 那么 $bold(A) bold(A)^T$ 可逆, 从而 $bold(A)$ 左乘 $bold(R) = bold(A)^T (bold(A) bold(A)^T)^(-1)$ 必有 $bold(A) bold(R) = bold(I)$. 反向相乘时, $bold(R) bold(A) = bold(A)^T (bold(A) bold(A)^T)^(-1) bold(A)$ 就是到 $bold(A)$ 的行空间 ($bold(A)^T$ 的列空间) 上的投影矩阵. 因此 $bold(R)$ 等于广义逆 $bold(A)^+$.

矩阵 $bold(A)_1$ 列满秩, 广义逆 $bold(A)_1^+$ 为 $bold(L)$, 而矩阵 $bold(A)_2$ 行满秩, 广义逆 $bold(A)_2^+$ 为 $bold(R)$:

#dmath[$ bold(A)_1^+ = (bold(A)_1^T bold(A)_1)^(-1) bold(A)_1^T = 1/sqrt(8) mat(delim: "[", 2, 2), $]

#dmath[$ bold(A)_2^+ = bold(A)_2^T (bold(A)_2 bold(A)_2^T)^(-1) = 1/sqrt(8) mat(delim: "[", 2; 2). $]

注意, $bold(A)_1^+ bold(A)_1 = [1]$ 与 $bold(A)_2 bold(A)_2^+ = [1]$. 但 $bold(A)_3$ 没有左逆和右逆. 它并不是满秩的. $bold(A)_3$ 的广义逆将其列空间作用到行空间.

#dmath[$ bold(A)_3^+ = mat(delim: "[", 2, 2; 1, 1)^+ = (bold(v)_1 bold(u)_1^T)/sigma_1 = 1/10 mat(delim: "[", 2, 1; 2, 1). $]

#align(center)[#image("../assets/fig-p434-icon.png", width: 3.0%)]

#xiti[习题集 7.4][

习题 1—4 是关于特殊矩阵 (不可逆) 的奇异值分解的计算与应用的.

#hei[1.]　(a) 计算 $bold(A)^T bold(A)$ 及其特征值、单位特征向量 $bold(v)_1$ 与 $bold(v)_2$, 并求出 $bold(A)$ 的奇异值 $sigma_1$:

#align(center)[秩 1 矩阵 #h(1em) $ bold(A) = mat(delim: "[", 1, 2; 3, 6); $]

(b) 计算 $bold(A) bold(A)^T$ 及其特征值、单位特征向量 $bold(u)_1$ 与 $bold(u)_2$;

(c) 验证 $bold(A) bold(v)_1 = sigma_1 bold(u)_1$, 写出 $bold(A)$ 的奇异值分解 $bold(A) = bold(U) Sigma bold(V)^T$.

#hei[2.]　(a) 根据习题 1 中的 $bold(u)$ 与 $bold(v)$, 写出矩阵 $bold(A)$ 的四个基本子空间的标准正交基;

(b) 描述具有同样的四个子空间的全部矩阵, 它们都是 $bold(A)$ 的倍数吗?
]

#pagebreak()