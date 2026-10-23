#import "../theme.typ": *
#set par(spacing: 13.5pt, leading: 12.5pt)

为 $-1$, 第 2 列的元素为 $+1$. 什么向量 $(x_1, x_2, x_3)$ 在 $bold(A)$ 的零空间中? 如何得知 $(1, 0, 0)$ 不在 $bold(A)$ 的行空间中?

#figure(image("../assets/fig-p501-a.png", width: 65%), numbering: none, caption: [图 10.5])

#ti[2.][写出三角形图对应的 $bold(A)^T$. 求出它的零空间中的一个向量 $bold(y)$. $bold(y)$ 的分量是各边上的电流, 围绕该三角形共形成多少电流?]

#ti[3.][从下列方程组第三个方程中消去 $x_2$ 和 $x_3$, 以得到阶梯形系数矩阵 $bold(U)$. 什么树与 $bold(U)$ 的两个非零行相对应?]

$ cases(-x_1 + x_2 = b_1 ",", -x_1 + x_3 = b_2 ",", -x_2 + x_3 = b_3 ".") $

#ti[4.][求出一个向量 $(b_1, b_2, b_3)$ 使得 $bold(A) bold(x) = bold(b)$ 有解, 再求出另一个向量 $bold(b)$ 使其无解. 这两个 $bold(b)$ 与 $bold(y) = (1, -1, 1)$ 有什么联系?]

#ti[5.][求出一个向量 $(f_1, f_2, f_3)$ 使得 $bold(A)^T bold(y) = bold(f)$ 有解, 再求出另一个向量 $bold(f)$ 使其无解. 这两个 $bold(f)$ 与 $bold(x) = (1, 1, 1)$ 有什么联系? 方程 $bold(A)^T bold(y) = bold(f)$ 是基尔霍夫 \_\_\_\_ 定律.]

#ti[6.][通过矩阵乘法得到 $bold(A)^T bold(A)$. 选择一个向量 $bold(f)$ 使得 $bold(A)^T bold(A) bold(x) = bold(f)$ 有解, 并求解 $bold(x)$. 将电势 $bold(x)$、电流 $bold(y) = -bold(A) bold(x)$ 和电源 $bold(f)$ 描在三角形图中. 此时, 电导均为 1, 因为 $bold(C) = bold(I)$.]

#ti[7.][取电导 $c_1 = 1$ 和 $c_2 = c_3 = 2$, 用矩阵乘法计算 $bold(A)^T bold(C) bold(A)$. 对 $bold(f) = (1, 0, -1)$ 求解 $bold(A)^T bold(C) bold(A) bold(x) = bold(f)$. 当电源 $bold(f)$ 产生的电流从顶点 1 流入且从顶点 3 流出时, 在三角形图中写出电势 $bold(x)$ 和电流 $bold(y) = -bold(C) bold(A) bold(x)$.]

#ti[8.][对于有两个圈的方形图 (图 10.5(b)), 写出对应的 $5 times 4$ 关联矩阵 $bold(A)$. 求出 $bold(A) bold(x) = bold(0)$ 的一个解和 $bold(A)^T bold(y) = bold(0)$ 的两个解.]

#ti[9.][求出两个关于 $bold(b)$ 的条件, 使得五个差值 $x_2 - x_1, x_3 - x_1, x_3 - x_2, x_4 - x_2, x_4 - x_3$ 分别等于 $b_1, b_2, b_3, b_4, b_5$. 在图中的两个 \_\_\_\_ 周围可得到基尔霍夫 \_\_\_\_ 定律.]

#ti[10.][对 $bold(A)$ 消元将其变成其阶梯形矩阵 $bold(U)$. 三个非零行给出了什么图的关联矩阵? 这是方形图中的一个树, 再找出其他七个树.]

#ti[11.][使用矩阵乘法计算 $bold(A)^T bold(A)$ 并猜测它的元素是如何由图得到的:]

#sub[(a) $bold(A)^T bold(A)$ 的对角线表明每个顶点 \_\_\_\_ 的数量;]

#sub[(b) 非对角线上的 $-1$ 或 $0$ 表明对应的一组顶点 \_\_\_\_.]

#pagebreak()