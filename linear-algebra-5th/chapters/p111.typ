#import "../theme.typ": *

式中 $r_i$ 表示第 $i$ 行, $i = 1, 2, 3$. 到此完成了求 $bold(K)^(-1)$ 的一半任务. 变换后矩阵的前三列是 $bold(U)$ (上三角形矩阵), 主元是主对角线上的 $2, 3/2, 4/3$. 高斯用回代来完成后续操作, 若尔当的贡献是继续消元! 直到化为最简行阶梯形 $bold(R) = bold(I)$, 即将主元行的倍数加到上方的行使得主元上方的元素全化为零:

#grid(columns: (auto, 1fr), column-gutter: 1.5em, align: (left + horizon, center + horizon),
  [(将第三个主元上方\的元素化为零)],
  $ -> quad mat(delim: "[", 2, -1, 0, 1, 0, 0; 0, 3/2, 0, 3/4, 3/2, 3/4; 0, 0, 4/3, 1/3, 2/3, 1) quad (r_2 + 3/4 r_3) $
)
#grid(columns: (auto, 1fr), column-gutter: 1.5em, align: (left + horizon, center + horizon),
  [(将第二个主元上方\的元素化为零)],
  $ -> quad mat(delim: "[", 2, 0, 0, 3/2, 1, 1/2; 0, 3/2, 0, 3/4, 3/2, 3/4; 0, 0, 4/3, 1/3, 2/3, 1) . quad (r_1 + 2/3 r_2) $
)

高斯-若尔当消元法的最后一步是将每一行都除以自身所含主元, 使新的主元都是 1. 因为 $bold(K)$ 可逆, 因此增广矩阵前一个子块变成 $bold(I)$, 而 $[bold(I) quad bold(K)^(-1)]$ 的后一个子块就是 $bold(K)^(-1)$ 的三列:

#grid(columns: (auto, 1fr), column-gutter: 1.5em, align: (left + horizon, center + horizon),
  [(除以 2) \ (除以 $3/2$) \ (除以 $4/3$)],
  $ mat(delim: "[", 1, 0, 0, 3/4, 1/2, 1/4; 0, 1, 0, 1/2, 1, 1/2; 0, 0, 1, 1/4, 1/2, 3/4) = [bold(I) quad bold(x)_1 quad bold(x)_2 quad bold(x)_3] = [bold(I) quad bold(K)^(-1)] . $
)

从 $3 times 6$ 矩阵 $[bold(K) quad bold(I)]$ 开始, 最终得到 $[bold(I) quad bold(K)^(-1)]$. 对任意可逆矩阵 $bold(A)$, 用一句话来总结全部高斯-若尔当消元法的步骤就是:

#gainian[高斯-若尔当消元法][对 $[bold(A) quad bold(I)]$ 左乘 $bold(A)^(-1)$ 得 $[bold(I) quad bold(A)^(-1)]$.]

将方阵 $bold(A)$ 变换为 $bold(I)$ 的消元步骤创建了逆矩阵 $bold(A)^(-1)$. 对于大型矩阵, 我们可能根本不想求出 $bold(A)^(-1)$. 但是对于阶数较低的方阵, 掌握这一求逆方法是值得的. 下面通过三个方面来进一步观察分析 $bold(K)^(-1)$ (这是一个重要示例):

#enum(numbering: "1.",
  [$bold(K)$ 是对称矩阵, $bold(K)^(-1)$ 也是对称矩阵.],
  [$bold(K)$ 是三对角矩阵 (除了三条对角线——主对角线与相邻两条对角线, 其他元素全为零), 但 $bold(K)^(-1)$ 是一个不包含零的稠密矩阵. 三对角矩阵的逆矩阵通常是稠密矩阵 (含零元素较少), 这也是不常计算逆矩阵的另一个原因.],
)



#pagebreak()
