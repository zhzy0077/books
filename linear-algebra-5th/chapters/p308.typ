#import "../theme.typ": *

通过三阶行列式可得到三个正号和三个负号.

$bold(u) times bold(v)$ 可以基于向量而不是向量的分量来定义:

#dingli[
  #hei[定义]　向量 $bold(u)$ 和 $bold(v)$ 的叉积是一个长度为 $||bold(u)|| ||bold(v)|| |sin theta|$ 的向量 ($theta$ 为 $bold(u), bold(v)$ 的夹角), 它的方向与 $bold(u)$ 和 $bold(v)$ 垂直, 并由右手定则来确定指向 “上方” 或者 “下方”.
]

物理学家喜欢这个定义, 他们更倾向于使用物理背景而不是数学上的坐标轴和坐标. 在物理学中, 设 $bold(u) = (u_1, u_2, u_3)$ 为物体的质心, $bold(F) = (F_x, F_y, F_z)$ 为作用在物体上的力, 若 $bold(F)$ 平行于 $bold(u)$, 则 $bold(u) times bold(F) = bold(0)$——不存在转动. 叉积 $bold(u) times bold(F)$ 是旋转力或力矩, 它的指向沿着旋转轴 (与 $bold(u)$ 和 $bold(F)$ 垂直), 它的长度 $||bold(u)|| ||bold(F)|| sin theta$ ($theta$ 为 $bold(u), bold(F)$ 的夹角) 用来度量产生转动的 “力矩”.

#subsec[三重积 = 行列式 = 体积]

$bold(u) times bold(v)$ 是一个向量, 因此能够计算这个向量与第三个向量 $bold(w)$ 的点积, 从而产生了三重积 (混合积) $(bold(u) times bold(v)) dot bold(w)$, 这个数字被称为 “标量” 三重积. 实际上它是一个行列式, 给出了以 $bold(u), bold(v), bold(w)$ 为过同一顶点的三条边 (相邻三边) 的平行六面体的 (有向) 体积:

#eqnum($ "三重积" quad (bold(u) times bold(v)) dot bold(w) = mat(delim: "|", w_1, w_2, w_3; u_1, u_2, u_3; v_1, v_2, v_3) = mat(delim: "|", u_1, u_2, u_3; v_1, v_2, v_3; w_1, w_2, w_3) . $, 13)

$bold(w)$ 可以放在第 1 行或者最后一行, 这两种情况下行列式完全相同, 因为从其中一个行列式变换成另一个行列式需要 \_\_\_\_ 次换行 (读者自行作答). 注意当行列式等于零时的情形:

#dmath[$ (bold(u) times bold(v)) dot bold(w) = 0 quad "当且仅当向量" bold(u), bold(v), bold(w) "位于同一个平面内" . $]

#hei[第一个原因:]　$bold(u) times bold(v)$ 垂直于这个平面, 因此它与 $bold(w)$ 的点积为零.

#hei[第二个原因:]　同一平面内的三个向量线性相关, 从而对应奇异矩阵 (行列式为 0).

#hei[第三个原因:]　以 $bold(u), bold(v), bold(w)$ 为相邻三边的平行六面体退化到一个平面内, 体积为零.

值得注意的是, $(bold(u) times bold(v)) dot bold(w)$ 等于以 $bold(u), bold(v), bold(w)$ 为相邻三边的平行六面体的体积. 这个三阶行列式提供了大量的信息. 例如, 如同利用二阶方阵的行列式能够区分可逆矩阵和奇异矩阵, 利用该三阶行列式也能做到这一点. 第 6 章将会学习奇异矩阵的有关性质.

#barHead[■ 要点回顾]

#hei[1.] 克拉默法则通过形如 $x_1 = (|bold(B)_1|)/(|bold(A)|) = (|bold(b) quad bold(a)_2 quad dots.c quad bold(a)_n|)/(|bold(A)|)$ 的比值来求解 $bold(A) bold(x) = bold(b)$.

#hei[2.] 当 $bold(C)$ 是 $bold(A)$ 的代数余子式矩阵时, $bold(A)$ 的逆矩阵是 $bold(A)^(-1) = (bold(C)^T)/(det bold(A))$.

#hei[3.] 当平行六面体过同一顶点的三边是 $bold(A)$ 的行向量时, 它的体积是 $|det bold(A)|$.

#hei[4.] 在二重积分和三重积分中使用换元积分法时, 需要考虑面积微元与体积微元的变化规律.

#hei[5.] 在 $R^3$ 中, 叉积 $bold(u) times bold(v)$ 垂直于 $bold(u)$ 和 $bold(v)$. 注意 $bold(i) times bold(j) = bold(k)$.

#pagebreak()