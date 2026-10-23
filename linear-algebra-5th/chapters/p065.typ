#import "../theme.typ": *

#hei[16.] (a) 请写出可将任意二维向量逆时针旋转 $90 degree$ 的 $2 times 2$ 矩阵 $bold(R)$, 即 $bold(R)$ 左乘 $(x, y)$ 得 $(y, -x)$;

(b) 请写出可将任意二维向量旋转 $180 degree$ 的 $2 times 2$ 矩阵 $bold(R)^2$.

#hei[17.] 请首先写出矩阵 $bold(P)$, 使其左乘 $(x, y, z)$ 等于 $(y, z, x)$, 然后写出矩阵 $bold(Q)$, 使其左乘 $(y, z, x)$ 的结果又变回 $(x, y, z)$.

#hei[18.] 请写出 $2 times 2$ 矩阵 $bold(E)$, 使其左乘向量等于从向量的第 2 个分量中减去第 1 个分量, 再写出施行相同操作的 $3 times 3$ 矩阵 $bold(E)$, 如

#dmath[$ bold(E) mat(delim: "[", 3; 5) = mat(delim: "[", 3; 2) , quad bold(E) mat(delim: "[", 3; 5; 7) = mat(delim: "[", 3; 2; 7) . $]

#hei[19.] 请首先写出 $3 times 3$ 矩阵 $bold(E)$, 使其左乘 $(x, y, z)$ 等于 $(x, y, z + x)$, 然后写出矩阵 $bold(E)^(-1)$, 使其左乘 $(x, y, z)$ 等于 $(x, y, z - x)$. 若先用 $bold(E)$ 左乘 $(3, 4, 5)$, 再用 $bold(E)^(-1)$ 左乘所得结果, 则两个结果分别是 (\_\_\_\_) 与 (\_\_\_\_).

#hei[20.] 请首先写出 $2 times 2$ 矩阵 $bold(P)_1$, 将向量 $(x, y)$ 投影到 $x$ 轴得 $(x, 0)$; 然后写出 $2 times 2$ 矩阵 $bold(P)_2$, 将向量 $(x, y)$ 投影到 $y$ 轴得 $(0, y)$. 若先用 $bold(P)_1$ 左乘 $(5, 7)$, 再用 $bold(P)_2$ 左乘所得结果, 这两个步骤分别得到 (\_\_\_\_) 与 (\_\_\_\_).

#hei[21.] 请写出可将任意二维向量逆时针旋转 $45 degree$ 的 $2 times 2$ 矩阵 $bold(R)$, 即将向量 $(1, 0)$ 旋转为 $(sqrt(2)\/2, sqrt(2)\/2)$, 将向量 $(0, 1)$ 旋转为 $(-sqrt(2)\/2, sqrt(2)\/2)$. 借助上述信息在 $x y$ 平面画出这些特殊向量并写出矩阵 $bold(R)$.

#hei[22.] 将向量 $(1, 4, 5)$ 与 $(x, y, z)$ 的点积写成矩阵乘法 $bold(A) bold(x)$, 则矩阵 $bold(A)$ 只有一行. 此时 $bold(A) bold(x) = 0$ 的解位于与向量 \_\_\_\_ 互相垂直的一个 \_\_\_\_, 矩阵 $bold(A)$ 的列在 \_\_\_\_ 维空间中.

#hei[23.] 以 MATLAB 语法的形式写出定义矩阵 $bold(A)$ 与列向量 $bold(x)$ 和 $bold(b)$ 的指令, 并写出测试 $bold(A) bold(x) = bold(b)$ 是否成立的指令, 其中

#dmath[$ bold(A) = mat(delim: "[", 1, 2; 3, 4) , quad bold(x) = mat(delim: "[", 5; -2) , quad bold(b) = mat(delim: "[", 1; 7) . $]

#hei[24.] MATLAB 的指令 #raw("A = eye(3)") 和 #raw("v = [3:5]'") 可生成 $3 times 3$ 单位矩阵以及列向量 $(3, 4, 5)$. 请计算 #raw("A*v") 与 #raw("v'*v") 的输出结果 (不要用电脑!). 如果输入指令是 #raw("v*A") 会怎样?

#hei[25.] 若已知元素全为 1 的 $4 times 4$ 矩阵 #raw("A = ones(4)") 与列向量 #raw("v = ones(4,1)"), 请计算 #raw("A*v") (不要用电脑). 若 #raw("B = eye(4) + ones(4)"), #raw("w = zeros(4,1) + 2*ones(4,1)"), 请计算 #raw("B*w").



#pagebreak()
