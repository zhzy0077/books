#import "../theme.typ": *

#figure(image("../assets/fig-p023-a.png", width: 92%), numbering: none, caption: [图 1.1　向量的和 $bold(v) + bold(w) = (3,4)$ 是以 $bold(v)$ 和 $bold(w)$ 为邻边的平行四边形的对角线. 将 $bold(w)$ 反向得 $-bold(w)$. (b) 所示的线性组合为 $bold(v) - bold(w) = (5,0)$.])

#subsec[三维向量]

如图 1.2 所示, 有两个分量的向量对应了 $x y$ 平面上的一个点, 向量 $bold(v)$ 的分量就是对应点 $(x,y)$ 的横、纵坐标: $x = v_1$, $y = v_2$. 表示向量的箭头起点是 $(0,0)$, 终点是 $(v_1,v_2)$. 现在介绍具有三个分量的向量 $(v_1,v_2,v_3)$.

此时考虑三维 $x y z$ 空间, 而非二维 $x y$ 平面. 以下是一些三维向量 (仍然写成列向量的形式, 但是具有三个分量):

#dmath[$ bold(v) = mat(delim: "[", 1;1;-1), quad bold(w) = mat(delim: "[", 2;3;4), quad bold(v) + bold(w) = mat(delim: "[", 3;4;3). $]

向量 $bold(v)$ 对应了三维空间中的箭头, 通常将这个箭头画成从 $x$ 轴、$y$ 轴与 $z$ 轴交会的原点 $(0,0,0)$ 出发, 终点在点 $(v_1,v_2,v_3)$ 处. 列向量、从原点出发的箭头以及箭头的终点这三种表示方法相互照应、互为补充.

注意, 不能将二维平面中的向量 $(x,y)$ 等同于三维空间中的向量 $(x,y,0)$!

#figure(image("../assets/fig-p023-b.png", width: 88%), numbering: none, caption: [图 1.2　向量 $mat(delim: "[", x;y)$ 与 $mat(delim: "[", x;y;z)$ 分别对应点 $(x,y)$ 与 $(x,y,z)$.])



#pagebreak()
