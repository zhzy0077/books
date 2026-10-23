#import "../theme.typ": *

例如, 若向量 $bold(x) = [1,2,3]$ 的差分是 $bold(b) = [1,1,1]$, 则 $bold(b) = A bold(x)$ 且 $bold(x) = A^(-1) bold(b)$, 即

#dmath[$ A bold(x) = mat(delim: "[",1,0,0; -1,1,0; 0,-1,1) mat(delim: "[",1;2;3) = mat(delim: "[",1;1;1) , $]

#dmath[$ A^(-1) bold(b) = mat(delim: "[",1,0,0; 1,1,0; 1,1,1) mat(delim: "[",1;1;1) = mat(delim: "[",1;2;3) . $]

有关解向量 $bold(x) = (x_1, x_2, x_3)$ 的 (7) 式告诉我们两个重要的事实:
(1) 对每一个向量 $bold(b)$, 线性方程组 $A bold(x) = bold(b)$ 都存在一个解;
(2) 利用矩阵 $A^(-1)$ 可得 $bold(x) = A^(-1) bold(b)$.

后续章节还会考察其他类型的线性方程组 $A bold(x) = bold(b)$ 是否有解, 以及如何求解.

#hei[微积分知识的注解]　可将这些特殊矩阵与微积分建立联系: 将向量 $bold(x)$ 变成一个函数 $bold(x)(t)$, 差分 $A bold(x)$ 变成导数 $(dif bold(x))/(dif t) = bold(b)(t)$; 反过来则有 $A^(-1) bold(b)$ 中的累加就变成对 $bold(b)(t)$ 积分. 差分的和与导数的积分类似. 由微积分基本定理可知, 积分是微分的逆.

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ "若" A bold(x) = bold(b), "则" bold(x) = A^(-1) bold(b) ; quad "若" (dif bold(x))/(dif t) = bold(b), "则" bold(x)(t) = integral_0^t bold(b) dif t . $],
  align(bottom)[$(8)$],
)

完全平方数 0, 1, 4, 9 的差是奇数 1, 3, 5. 函数 $bold(x)(t) = t^2$ 的导数是 $2t$, 当 $t = 1, 2, 3$ 时就得到偶数 $bold(b) = 2, 4, 6$. 可见前述类比不完全恰当, 即不能将差分等同于导数, 例子中由矩阵 $A$ 得到的不是 $2t$ 而是 $2t - 1$:

#grid(columns: (auto, 1fr, auto), column-gutter: 1.2em, align: (right+horizon, center+horizon, right+horizon),
  [向后差分],
  [$ bold(x)(t) - bold(x)(t - 1) = t^2 - (t - 1)^2 = t^2 - (t^2 - 2t + 1) = 2t - 1 . $],
  [$(9)$],
)

本节习题集将说明由“向前差分”得到 $2t + 1$, 这里最好的选择是利用 $bold(x)(t + 1) - bold(x)(t - 1)$ 得到的中心差分（在微积分课程中并不常见）. 将 $Delta bold(x)$ 除以 $Delta t$, 其中 $Delta t = 2$ 是从 $t - 1$ 到 $t + 1$ 的距离:

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ bold(x)(t) = t^2 "的中心差分恰为" ((t + 1)^2 - (t - 1)^2)/2 = 2t . $],
  align(bottom)[$(10)$],
)

#hei[循环差分]

下面要学习的第二个例子是不可逆矩阵. 这个例子使用与前面相同的列向量 $bold(u)$ 与 $bold(v)$, 但是将 $bold(w)$ 替换为一个新的向量 $bold(w)^*$:

#grid(columns: (auto, 1fr), column-gutter: 2em, align: (right+horizon, center+horizon),
  [第二个例子],
  [$ bold(u) = mat(delim: "[",1;-1;0), quad bold(v) = mat(delim: "[",0;1;-1), quad bold(w)^* = mat(delim: "[",-1;0;1) . $],
)

现在利用 $bold(u), bold(v), bold(w)^*$ 来构造一个循环差分矩阵 $C$:



#pagebreak()
