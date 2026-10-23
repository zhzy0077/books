#import "../theme.typ": *

#ti[56.][(简洁事实) 每个秩为 $r$ 的 $m times n$ 矩阵可简化为 ($m times r$ 矩阵) 左乘 ($r times n$ 矩阵):

#dmath[$ bold(A) = (bold(A) "的主元列")"左乘"(bold(R) "的前" r "行") = ("列")"左乘"("行") . $]

将 $3 times 4$ 的全 1 矩阵 $bold(A)$ 分解为 $3 times 1$ 矩阵 (主元列) 与 $1 times 4$ 矩阵 ($bold(R)$ 的一行) 的乘积.]

#align(center)[#image("../assets/fig-p174-icon.png", width: 3.2%)]

#line(length: 100%)

#align(center, subsec[挑 战 题])

#ti[57.][设 $m times n$ 矩阵 $bold(A)$ 的秩为 $r$, 它的最简行阶梯形矩阵为 $bold(R)$. 对 $bold(R)^T$ 的最简行阶梯形矩阵进行转置, 得到矩阵 $bold(Z)$, 确切描述矩阵 $bold(Z)$ (的形状及其全部元素):

#dmath[$ bold(R) = "rref"(bold(A)), quad bold(Z) = ("rref"(bold(R)^T))^T . $]]

#ti[58.][(推荐) 设 $m times n$ 矩阵 $bold(R)$ 的秩为 $r$, 其主元列在前 $r$ 列:

#dmath[$ bold(R) = mat(delim: "[", bold(I), bold(F); bold(O), bold(O)) . $]

#sub[(a) 四个子块的形状分别是什么?]
#sub[(b) 若 $r = m$, 则 $bold(R)$ 中不再有零子块. 此时求出右逆 $bold(B)$, 使得 $bold(R) bold(B) = bold(I)$.]
#sub[(c) 若 $r = n$, 则 $bold(R)$ 中不再有右边的 $bold(F)$ 与全零列. 此时求出左逆 $bold(C)$, 使得 $bold(C) bold(R) = bold(I)$.]
#sub[(d) $bold(R)^T$ 的最简行阶梯形矩阵是什么? 形状如何?]
#sub[(e) $bold(R)^T bold(R)$ 的最简行阶梯形矩阵是什么? 形状如何?]]
#ti[59.][作者认为 $bold(R)^T bold(R)$ 的最简行阶梯形矩阵总是 $bold(R)$ (不考虑多余的全零行). 当 $bold(R)$ 为 $2 times 3$ 矩阵时, 能举个例子吗? 随后将证明 $bold(A)^T bold(A)$ 与 $bold(A)$ 总有相同的零空间 (这是很重要的事实).]

#ti[60.][假设对于矩阵 $bold(A)$, 除了可施行初等行变换 (可得 $bold(R)$), 还可施行初等列变换. 那么对于秩为 $r$ 的 $m times n$ 矩阵, "行与列最简形" 是什么?]

#subsec[补充材料: 消元法——着眼大局]

这里从向量和子空间的角度进一步诠释将 $bold(A)$ 化为 $bold(R)$ 所用的消元法. 读者已知晓消元法的步骤, 这里不再赘述. 消元法由第一个主元开始, 从左向右逐列变形, 从上到下逐行变形. 随着操作的进行, 消元法回答了如下两个问题:

#hei[问题 1]  此列是之前各列的线性组合吗?

若该列包含一个主元, 答案是否定的. 主元列 "独立" 于前面各列. 例如, 若第 4 列没有主元, 则它是前三列的线性组合.

#hei[问题 2]  此行是之前各行的线性组合吗?

若该行包含一个主元, 答案是否定的. 主元行 "独立" 于前面各行. 例如, 若第 3 行没有主元, 则可将它化为全零行, 并移至 $bold(R)$ 的底层.



#pagebreak()
