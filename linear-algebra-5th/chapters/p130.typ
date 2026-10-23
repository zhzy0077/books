#import "../theme.typ": *

中矩阵 $bold(P)^(-1), bold(I)$ 的列相互对应. 已知帕斯卡矩阵 $bold(L)$ 和 $bold(U)$ 是矩阵 $bold(P)$ 分解式的因子:

#hei[两个三角形方程组]  $bold(L) bold(c) = bold(b)$ (向下消元),  $bold(U) bold(x) = bold(c)$ (向上回代).

#hei[解]  对三角形方程组 $bold(L) bold(c) = bold(b)$ 自上而下求解:

#dmath[$ cases(c_1 = 1, c_1 + c_2 = 0, c_1 + 2c_2 + c_3 = 0, c_1 + 3c_2 + 3c_3 + c_4 = 0) quad text("得") quad cases(c_1 = +1, c_2 = -1, c_3 = +1, c_4 = -1) . $]

左乘 $bold(L)^(-1)$ 进行向下消元得上三角形方程组 $bold(U) bold(x) = bold(c)$, 再通过自下而上回代求解 $bold(x)$:

#dmath[$ cases(x_1 + x_2 + x_3 + x_4 = 1, x_2 + 2x_3 + 3x_4 = -1, x_3 + 3x_4 = 1, x_4 = -1) quad text("得") quad cases(x_1 = +4, x_2 = -6, x_3 = +4, x_4 = -1) . $]

观察 $bold(x)$ 的分量能发现一种取值模式, 但作者还不清楚它的来源. 针对这个问题, 可以试试指令 #raw("inv(pascal(4))").

#align(center)[#image("../assets/fig-p101-icon.png", width: 3.2%)]

#xiti[习题集 2.6]

习题 1—14 计算矩阵分解 $bold(A) = bold(L U)$ (也涉及 $bold(A) = bold(L D U)$).

#ti[1.][(重要) 向下消元将方程组 $mat(1, 1; 1, 2) bold(x) = bold(b)$ 变成三角形方程组 $mat(1, 1; 0, 1) bold(x) = bold(c)$:

#dmath[$ cases(x + y = 5, x + 2y = 7) -> cases(x + y = 5, y = 2) , quad mat(1, 1, 5; 1, 2, 7) -> mat(1, 1, 5; 0, 1, 2) . $]

上述步骤是从第 2 行中减去第 1 行的 $l_(21) =$ #underline(h(2em)) 倍, 而逆向的步骤则是将第 1 行的 $l_(21)$ 倍加到第 2 行, 对应的矩阵是 $bold(L) =$ #underline(h(2em)). 用这个 $bold(L)$ 左乘三角形方程组 $mat(1, 1; 0, 1) bold(x)_1 = mat(5; 2)$ 得 #underline(h(2em)) = #underline(h(2em)). 用字母形式表示也就是 $bold(L)$ 左乘 $bold(U) bold(x) = bold(c)$ 得 #underline(h(2em)).]

#ti[2.][请写出习题 1 中的二阶三角形方程组 $bold(L) bold(c) = bold(b)$ 和 $bold(U) bold(x) = bold(c)$. 然后检验 $bold(c) = (5, 2)$ 是第一个方程组的解, 并求出第二个方程组的解 $bold(x)$.]



#pagebreak()
