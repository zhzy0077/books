#import "../theme.typ": *

$bold(R) bold(x) = bold(d)$ 表明当自由变量取零值时, 得到特解 $bold(x)_p = (7,0,-3,0)$:

#dmath[$ mat(1,2,1,0,4; 0,0,2,8,-6; 0,0,0,0,0) -> mat(1,2,1,0,4; 0,0,1,4,-3; 0,0,0,0,0) -> mat(1,2,0,-4,7; 0,0,1,4,-3; 0,0,0,0,0) . $]

右侧向量 $bold(b) = 0$ 时, 对应解的零空间部分 $bold(x)_n$. 可令自由变量 $x_2, x_4$ 分别取值 1,0 和 0,1, 就得到特殊解:

#dmath[$ "特殊解" quad bold(s)_1 = (-2,1,0,0), quad bold(s)_2 = (4,0,-4,1) . $]

这样 $bold(A) bold(x) = bold(b)$ (与 $bold(R) bold(x) = bold(d)$) 的全解为 $bold(x) = bold(x)_p + c_1 bold(s)_1 + c_2 bold(s)_2$.

$bold(A)$ 的各行可以产生全零行, 即

#dmath[$ 2("第 1 行") + ("第 2 行") - ("第 3 行") = (0,0,0,0) . $]

由此可知系数向量为 $bold(y) = (2,1,-1)$. 将相同的线性组合套用到 $bold(b) = (4,2,10)$ 的各分量上, 得到

#dmath[$ 2 times 4 + 1 times 2 - 1 times 10 = 0 . $]

显然, 如果左边各行的线性组合等于全零行, 那么右边各分量经相同的线性组合则得到 0. 这是必然的! 否则方程组无解.

后文将换个角度, 再次讨论上述内容: 如果 $bold(A)$ 的各列都垂直于 $bold(y) = (2,1,-1)$, 那么这些列的任意线性组合 $bold(b)$ 也一定垂直于 $bold(y)$; 否则 $bold(b)$ 不属于列空间, 即 $bold(A) bold(x) = bold(b)$ 无解.

还有第三个角度: 如果 $bold(y)$ 属于 $bold(A)^T$ 的零空间, 那么 $bold(y)$ 一定垂直于 $bold(A)$ 列空间中的任意向量 $bold(b)$. 详情可参见后续章节.

#align(center)[#image("../assets/fig-p184-icon.png", width: 3.2%)]

#xiti[习题集 3.3]

#hei[1.] (推荐) 仿照范例 3.3 A 的六个步骤, 描述 $bold(A)$ 的列空间、零空间以及 $bold(A) bold(x) = bold(b)$ 的全解:

#dmath[$ bold(A) = mat(2,4,6,4; 2,5,7,6; 2,3,5,2), quad bold(b) = mat(b_1; b_2; b_3) = mat(4; 3; 5) . $]

#hei[2.] 类似上一题, 对于秩 1 矩阵 $bold(A)$ 完成相同的六步:

#dmath[$ bold(A) = mat(1; 3; 2) [2 quad 1 quad 3] = mat(2,1,3; 6,3,9; 4,2,6), quad bold(b) = mat(b_1; b_2; b_3) = mat(10; 30; 20) . $]

要想方程组 $bold(A) bold(x) = bold(b)$ 可解, 找出 $b_1, b_2, b_3$ 应当满足的两个条件. 同时满足这两个条件意味着 $bold(b)$ 属于 \_\_\_\_\_ 空间 (两个平面相交确定一条直线).



#pagebreak()
