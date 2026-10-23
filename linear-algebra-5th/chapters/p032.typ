#import "../theme.typ": *
#set par(spacing: 14pt, leading: 13pt)

向量 $bold(v) = (1,2)$ 与 $bold(w) = (3,1)$ 的点积是 5. 后面将看到, 由 $bold(v) dot bold(w)$ 的值可以求出 $bold(v)$ 与 $bold(w)$ 的夹角 (不是 90°). 验证可知 $bold(w) dot bold(v)$ 也是 5.

#align(center)[点积 $bold(w) dot bold(v)$ 与 $bold(v) dot bold(w)$ 相等, 与 $bold(v)$ 和 $bold(w)$ 的运算顺序无关.]

#hei[例 2]  如果在数轴上点 $x = -1$ 处 (零点左侧) 放置一个质量为 4 的物体, 同时在点 $x = 2$ 处 (零点右侧) 放置一个质量为 2 的物体, 则 $x$ 轴关于原点保持平衡 (就像一个跷跷板), 因为点积 $4 dot (-1) + 2 dot 2 = 0$.

这是工程与科学问题中的一个典型案例. 将质量记为向量 $(w_1, w_2) = (4,2)$, 将坐标记为向量 $(v_1, v_2) = (-1,2)$. 质量与坐标相乘得 $w_1 v_1$ 与 $w_2 v_2$, 称为“力矩”. 使得“跷跷板”保持平衡的等式是 $w_1 v_1 + w_2 v_2 = 0$.

#hei[例 3]  点积在经济与商业中也得到了应用. 例如, 要买卖三类商品, 单价记为 $bold(p) = (p_1, p_2, p_3)$——这是“价格向量”; 买卖的数量记为 $bold(q) = (q_1, q_2, q_3)$——卖出的数量为正数, 买入的数量为负数. 若以单价 $p_1$ 卖出数量 $q_1$ 的商品, 则收入 $q_1 p_1$ (负值表示支出), 此时总收入是 (数量 $bold(q)$ 点乘价格 $bold(p)$) 三维向量的点积 $bold(q) dot bold(p)$:

#align(center)[收入 $= (q_1, q_2, q_3) dot (p_1, p_2, p_3) = q_1 p_1 + q_2 p_2 + q_3 p_3 =$ 点积 $bold(q) dot bold(p)$.]

点积为零则意味着“收支平衡”, 即若 $bold(q) dot bold(p) = 0$, 则总收入与总支出相等, 此时 $bold(p)$ 与 $bold(q)$ 垂直 (在三维空间中). 一个超市通常有数千种商品, 用这种方法分析收入和支出时需构造高维向量.

#hei[注]  电子表格 (如 Excel) 已经成为经营管理中的必备工具, 使用电子表格可以计算线性组合和点积. 电子表格中的数据在计算机屏幕上呈现为一个矩阵.

#hei[重点]  计算 $bold(v) dot bold(w)$ 时, 依次将 $v_i$ 与对应的 $w_i$ 相乘然后求和, 即

#dmath[$ bold(v) dot bold(w) = v_1 w_1 + v_2 w_2 + dots.c + v_n w_n. $]

#subsec[长度与单位向量]

计算一个向量与自身的点积是一类重要的应用, 此时 $bold(v) = bold(w)$. 设向量 $bold(v) = (1,2,3)$, 则它与自身的点积是 $bold(v) dot bold(v) = norm(bold(v))^2 = 14$:

#grid(columns: (auto, 1fr), column-gutter: 14pt,
  [点积 $bold(v) dot bold(v)$\ 等于长度的平方],
  align(center)[$ norm(bold(v))^2 = mat(delim: "[", 1;2;3) dot mat(delim: "[", 1;2;3) = 1 + 4 + 9 = 14. $],
)

此时向量的夹角不是 90° 而是 0°. 向量 $bold(v)$ 不与自身垂直, 所以点积不为零. 点积 $bold(v) dot bold(v)$ 就是向量 $bold(v)$ 长度的平方.

#gainian[定义][$n$ 维向量 $bold(v)$ 的长度 $norm(bold(v))$ 等于 $bold(v) dot bold(v)$ 的算术平方根:

$ "长度" quad norm(bold(v)) = sqrt(bold(v) dot bold(v)) = (v_1^2 + v_2^2 + dots.c + v_n^2)^(1\/2). $]

由定义可知: 二维向量 $bold(v) = (v_1, v_2)$ 的长度为 $sqrt(v_1^2 + v_2^2)$, 三维向量 $bold(v) = (v_1, v_2, v_3)$ 的长度为 $sqrt(v_1^2 + v_2^2 + v_3^2)$. 依照上述计算规则, 向量 $bold(v) = (1,2,3)$ 长度 $norm(bold(v)) = sqrt(14)$.



#pagebreak()
