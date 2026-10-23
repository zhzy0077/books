#import "../theme.typ": *
#set par(spacing: 14.5pt, leading: 12.8pt)

的. 作为一个新手, 可尝试计算 $1 + 1$, 按下 Shift+Enter 就能够看到答案. 对数值较大的问题使用浮点数来计算会更快.

Python 是一种流行的通用编程语言, 与 NumPy 库和 SciPy 库之类的软件包结合时可为技术计算提供一个完整的环境. NumPy 库有基本的线性代数指令. Anaconda Python 发行版包括 Python 运行环境和大部分重要的数学库, 以及图形化的安装程序.

R 软件是统计计算与绘图的免费软件, 可从其官方网站下载和安装. R 是一种脚本语言, 指令提示符为 >, 其使用的列表可用于表示向量和矩阵. 推荐使用 RStudio 软件进行编译和绘图, 该软件包括 R 运行环境与帮助资源, 可直接使用 R 命令, 还有用于编辑和管理文件以及绘图的窗口. 以下是 R 中矩阵及其元素列表的指令:

#block(inset: (left: 2em))[
  #raw("> A = matrix (c (1, 2, 3, 2, 5, 2, 6, -3, 1), nrow = 3, byrow = TRUE)") \
  #raw("> x = matrix (c (0, 0, 2), nrow = 3)")
]

可在新的提示符 > 后键入相应的名称来查看 $bold(A)$ 与 $bold(x)$, 键入 #raw("b = A%*%x") 来计算二者相乘, 用 #raw("t(A)") 表示转置, 用 #raw("as.matrix") 来将向量转换为矩阵.

MATLAB 和 Julia 在矩阵计算的语法上比 R 更简洁, 但 R 已经非常流行且应用广泛. 在与本书英文版配套的网站上有 MATLAB, Julia, Python 与 R 的相关演示 (包括操作指令).

#v(16pt)
#barHead[■ 要点回顾]

#ti[1.][向量的基本运算是标量乘法 (数乘), 如 $c bold(v)$, 与向量加法, 如 $bold(v) + bold(w)$.]

#ti[2.][两种基本运算相结合可得线性组合 $c bold(v) + d bold(w)$.]

#ti[3.][矩阵-向量乘法 $bold(A) bold(x)$ 可以利用点积来计算, 此时逐行计算. 但是本书建议将 $bold(A) bold(x)$ 理解成 $bold(A)$ 的列向量的线性组合.]

#ti[4.][列图: 求解 $bold(A) bold(x) = bold(b)$ 是找到能够生成向量 $bold(b)$ 的线性组合系数.]

#ti[5.][行图: $bold(A) bold(x) = bold(b)$ 中的每个方程都给表示一条直线 ($n = 2$)、一个平面 ($n = 3$) 或者一个“超平面” ($n > 3$). 若方程组有解, 则所有直线 (平面、超平面) 相交于解或解集.]

#v(16pt)
#barHead[■ 范例解析]

#ti[2.1 A][如下所示的线性方程组 $bold(A) bold(x) = bold(b)$ 包括三个方程, 首先描述方程组的列图, 然后仔细观察列向量的特征并求解方程组 (不用消元法):

#align(center)[
#grid(columns: (auto, auto, auto), column-gutter: 1.2em, align: horizon,
  [$ cases(x + 3y + 2z = -3 ",", 2x + 2y + 2z = -2 ",", 3x + 5y + 6z = -5 ",") $],
  [即],
  [$ mat(delim: "[", 1, 3, 2; 2, 2, 2; 3, 5, 6) mat(delim: "[", x; y; z) = mat(delim: "[", -3; -2; -5). $],
)
]]

#v(8pt)
#hei[解]  列图表明需要找到矩阵 $bold(A)$ 三个列向量的一个线性组合来生成向量 $bold(b)$. 经观察, 本例中 $bold(b)$ 是第 2 列的负向量, 所以方程组的解是 $(x, y, z) = (0, -1, 0)$. 为证明 $(0, -1, 0)$ 是方程组的唯一解, 还必须说明“系数矩阵 $bold(A)$ 是可逆矩阵”或“$bold(A)$ 的列向量线性无关”或“$bold(A)$ 的行列式不等于零”.



#pagebreak()
