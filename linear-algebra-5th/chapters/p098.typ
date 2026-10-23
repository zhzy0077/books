#import "../theme.typ": *

本书之前的内容也曾涉及分块矩阵. “增广矩阵” 将方程组 $bold(A) bold(x) = bold(b)$ 右侧的向量 $bold(b)$ 置于系数矩阵 $bold(A)$ 的右边, 此时 $[bold(A) quad bold(b)]$ 有两个形状不同的子块, 左乘一个消元矩阵 $bold(E)$ 得 $[bold(E) bold(A) quad bold(E) bold(b)]$. 只要子块形状满足如下乘法要求, 就可以利用子块进行乘法运算:

#dingli[
#hei[分块矩阵的乘法]  若矩阵 $bold(A)$ 的列分块法与 $bold(B)$ 的行分块法完全相同, 则 $bold(A)$ 的子块与 $bold(B)$ 的子块满足乘法运算要求, 可利用子块的乘法计算 $bold(A) bold(B)$, 例如,

#dmath[$ mat(bold(A)_(11), bold(A)_(12); bold(A)_(21), bold(A)_(22)) mat(bold(B)_(11); bold(B)_(21)) = mat(bold(A)_(11) bold(B)_(11) + bold(A)_(12) bold(B)_(21); bold(A)_(21) bold(B)_(11) + bold(A)_(22) bold(B)_(21)) . $]
]

这个等式在形式上与利用矩阵元素 (可看成 $1 times 1$ 的子块) 做乘法运算相同, 但必须注意乘式中 $bold(A)$ 的子块必须左乘 $bold(B)$ 的子块, 因为 $bold(B) bold(A)$ 不等于 $bold(A) bold(B)$.

#yaodian[#hei[要点]  当矩阵被分割为子块时, 更容易发现它的作用方式. 前述由子块 $bold(I)$ 构成的分块矩阵要比原始的 $4 times 6$ 矩阵 $bold(A)$ 更清晰地看出其作用.]

#hei[例 3 (重要特例)]  将 $m times n$ 矩阵 $bold(A)$ 按列分成 $n$ 个子块, 将 $n times p$ 矩阵 $bold(B)$ 按行分成 $n$ 个子块, 则 $bold(A) bold(B)$ 的分块矩阵乘积是列左乘对应的行之后再相加:

#grid(columns: (auto, auto), column-gutter: 2em, align: (right+horizon, center+horizon),
  [列左乘行],
  [$ [a_1 quad a_2 quad dots.c quad a_n] mat(b_1; b_2; dots.v; b_n) = [a_1 b_1 + a_2 b_2 + dots.c + a_n b_n] . $ (5)],
)

这就是计算矩阵乘法的第四种方法. 以下给出了该方法的示例:

#dmath[$ mat(1, 4; 1, 5) mat(3, 2; 1, 0) = mat(1; 1) [3 quad 2] + mat(4; 5) [1 quad 0] $]
#dmath[$ = mat(3, 2; 3, 2) + mat(4, 0; 5, 0) = mat(7, 2; 8, 2) . $]

#hei[小结]  上例利用通常的行左乘列方法需要计算四个点积 (8 次单独的乘法). 利用新的列左乘行方法得到两个完整的矩阵 (同样是 8 次单独的乘法).

#hei[例 4 (分块消元)]  设 3 阶方阵 $bold(A)$ 的第 1 列元素是 1,3,4, 要将 3 和 4 都变为 0, 则需分别从第 2 行和第 3 行中减去主元行的 3 倍和 4 倍. 以上步骤可利用消元矩阵 $bold(E)_(21)$ 和 $bold(E)_(31)$ 的乘法运算来实现:

#grid(columns: (auto, auto), column-gutter: 2em, align: (right+horizon, center+horizon),
  [每次左乘一个消元矩阵],
  [$ bold(E)_(21) = mat(1, 0, 0; -3, 1, 0; 0, 0, 1) , quad bold(E)_(31) = mat(1, 0, 0; 0, 1, 0; -4, 0, 1) . $],
)



#pagebreak()
