#import "../theme.typ": *

#align(center)[$ bold(H)_2 = mat(1,1;1,-1), quad bold(H)_4 = mat(1,1,*,*;1,-1,*,*;1,1,*,*;1,-1,*,*) . $]

如何将 $bold(H)_4$ 化为正交矩阵 $bold(Q)_4$? 分块矩阵

#align(center)[$ bold(H)_8 = mat(bold(H)_4, bold(H)_4; bold(H)_4, -bold(H)_4) $]

是下一个阿达马矩阵, 其元素均为 1 和 $-1$. 乘积 $bold(H)_8^T bold(H)_8$ 是什么? $bold(b) = (6,0,0,2)$ 到 $bold(H)_4$ 首列上的投影为 $bold(p)_1 = (2,2,2,2)$, 而到第 2 列上的投影为 $bold(p)_2 = (1,-1,1,-1)$. 那么 $bold(b)$ 到前两列生成的二维空间上的投影 $bold(p)_(1,2)$ 是什么?

#hei[解]　正如 $bold(H)_8$ 可由 $bold(H)_4$ 构成一样, $bold(H)_4$ 可由 $bold(H)_2$ 构成:

#align(center)[$ bold(H)_4 = mat(bold(H)_2, bold(H)_2; bold(H)_2, -bold(H)_2) = mat(1,1,1,1;1,-1,1,-1;1,1,-1,-1;1,-1,-1,1) $]

具有正交列, 则 $bold(Q) = 1/2 bold(H)_4$ 有标准正交列, 这是因为 $bold(H)_4$ 的各列向量长度均为 2. $5 times 5$ 阿达马矩阵并不存在, 因为各列点积为五个 1 或 $-1$ 相加 (为奇数), 不可能为零. $bold(H)_8$ 具有长度为 $sqrt(8)$ 的正交列.

#align(center)[$ bold(H)_8^T bold(H)_8 &= mat(bold(H)_4^T, bold(H)_4^T; bold(H)_4^T, -bold(H)_4^T) mat(bold(H)_4, bold(H)_4; bold(H)_4, -bold(H)_4) \
&= mat(2 bold(H)_4^T bold(H)_4, O; O, 2 bold(H)_4^T bold(H)_4) = mat(8 bold(I)_4, O; O, 8 bold(I)_4), $]

#align(center)[$ bold(Q)_8 = bold(H)_8/sqrt(8). $]

#hei[4.4 B]  正交列的关键作用是什么?

#hei[答]　若 $bold(A)$ 的各列正交, 则 $bold(A)^T bold(A)$ 为对角矩阵, 且易于求逆. 对任向量 $bold(b)$, 可以将其投影到 $bold(A)$ 的各列向量对应的方向上, 再将所有投影相加即可恢复 $bold(b)$. 而以 $bold(A)$ 的各列向量所在直线为坐标轴建立坐标系时, 坐标轴是正交的.

#align(center)[投影 $bold(p)_i$ 相加　　到正交直线确定的平面上的投影 $bold(p)_(1,2)$ 为 $bold(p)_1 + bold(p)_2$.]

#xiti[习题集 4.4]

习题 1—12 是关于正交向量和正交矩阵的.

#hei[1.] 以下各组向量是标准正交的, 还是仅正交, 或是仅线性无关?

#pagebreak()