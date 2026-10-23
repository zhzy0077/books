#import "../theme.typ": *

请结合上述结论将 $bold(v) dot bold(w)$ 放大为 $norm(bold(v)) norm(bold(w))$ 来证明

#align(center, dmath[$ norm("第 3 条边") <= norm("第 1 条边") + norm("第 2 条边") quad ("图 1.10(a)") $])

即

#grid(columns: (auto, 1fr), column-gutter: 14pt,
  [三角\ 不等式],
  align(center, dmath[$ norm(bold(v) + bold(w))^2 <= (norm(bold(v)) + norm(bold(w)))^2 quad "或" quad norm(bold(v) + bold(w)) <= norm(bold(v)) + norm(bold(w)) $]),
)

#figure(image("../assets/fig-p041-fig110.png", width: 100%), numbering: none, caption: [图 1.10　三角不等式与余弦定理.])

#hei[22. 用代数方法而不是三角方法来证明施瓦茨不等式 $|bold(v) dot bold(w)| <= norm(bold(v)) norm(bold(w))$:]

#sub[(a) 首先将不等式两边同时平方得]

#align(center, dmath[$ (v_1 w_1 + v_2 w_2)^2 <= (v_1^2 + v_2^2)(w_1^2 + w_2^2); $])

#sub[(b) 然后证明上式右边减左边的差为 $(v_1 w_2 - v_2 w_1)^2$, 因平方项不能为负值, 故不等式成立.]

#hei[23. 由图 1.10(b) 可知 $cos alpha = v_1/norm(bold(v)), sin alpha = v_2/norm(bold(v))$, 同理 $cos beta = $ \_\_\_\_, $sin beta = $ \_\_\_\_. 记 $theta = beta - alpha$, 代入三角函数公式 $cos beta cos alpha + sin beta sin alpha = cos(beta - alpha)$ 并证明 $cos theta = (bold(v) dot bold(w))/(norm(bold(v)) norm(bold(w)))$.]

#hei[24. 已知单位向量 $bold(u) = (u_1, u_2), bold(U) = (U_1, U_2)$, 可用一行式子来证明不等式 $|bold(u) dot bold(U)| <= 1$, 即]

#align(center, dmath[$ |bold(u) dot bold(U)| <= |u_1| |U_1| + |u_2| |U_2| <= (u_1^2 + U_1^2)/2 + (u_2^2 + U_2^2)/2 = 1. $])

将向量 $(u_1, u_2) = (0.6, 0.8)$ 与 $(U_1, U_2) = (0.8, 0.6)$ 代入以验证上述不等式, 并计算二者的夹角余弦 $cos theta$.

#hei[25. 为什么 $|cos theta|$ 不可能大于 1?]

#hei[26. (推荐) 画出一个平行四边形.]

#hei[27. 设平行四边形的两条边为 $bold(v)$ 和 $bold(w)$. 证明: 两条对角线长度的平方和等于四条边长度的平方和, 即]

#align(center, dmath[$ norm(bold(v) + bold(w))^2 + norm(bold(v) - bold(w))^2 = 2 norm(bold(v))^2 + 2 norm(bold(w))^2. $])

#hei[28. 已知 $bold(v) = (1,2)$, 在 $x y$ 平面上画出全体满足 $bold(v) dot bold(w) = x + 2y = 5$ 的向量 $bold(w) = (x,y)$, 并分析为什么这些 $bold(w)$ 都在一条直线上. 请求出其中长度最短的向量 $bold(w)$.]



#pagebreak()
