#import "../theme.typ": *

#ti[15.][如果矩阵 $bold(A)$ 可逆, 那么非齐次方程 (含常数项) $(dif bold(u))/(dif t) = bold(A) bold(u) - bold(b)$ 的一个特解为 $bold(u)_p = bold(A)^(-1) bold(b)$. 对下列方程, 由齐次方程 (不含常数项) $(dif bold(u))/(dif t) = bold(A) bold(u)$ 得到其通解 $bold(u)_n$, 然后求出原非齐次方程的通解 $bold(u) = bold(u)_p + bold(u)_n$:

#dmath[$ "(a)" (dif bold(u))/(dif t) = bold(u) - 4; quad quad "(b)" (dif bold(u))/(dif t) = mat(delim: "[", 1, 0; 1, 1) bold(u) - mat(delim: "[", 4; 6). $]]

#ti[16.][如果 $c$ 不是矩阵 $bold(A)$ 的特征值, 那么将 $bold(u) = e^(c t) bold(v)$ 代入非齐次方程 $(dif bold(u))/(dif t) = bold(A) bold(u) - e^(c t) bold(b)$ 可求出一个特解. 当 $c$ 是 $bold(A)$ 的特征值时, 上述过程是如何失效的? 齐次方程 $(dif bold(u))/(dif t) = bold(A) bold(u)$ 的 “零空间” 包含其通解 $e^(lambda_i t) bold(x)_i$.]

#ti[17.][求分别满足下列各条件的矩阵 $bold(A)$, 以说明图 6.6 中每个不稳定区域:

#dmath[$ "(a)" lambda_1 < 0, lambda_2 > 0; quad quad "(b)" lambda_1 > 0, lambda_2 > 0; quad quad "(c)" lambda = a plus.minus i b, "其中" a > 0. $]]

习题 18—27 是关于矩阵指数函数 $e^(bold(A) t)$ 的.

#ti[18.][写出 $e^(bold(A) t)$ 的无穷级数展开式的前五项, 每项再关于 $t$ 求导. 证明这样就得到了 $bold(A) e^(bold(A) t)$ 的前四项. 结论: $e^(bold(A) t) bold(u)_0$ 是 $bold(u)' = bold(A) bold(u)$ 的解.]

#ti[19.][矩阵 $bold(B) = mat(delim: "[", 0, -4; 0, 0)$ 满足 $bold(B)^2 = bold(O)$. 写出 $e^(bold(B) t)$ 的级数展开式 (仅含有限项). 验证 $e^(bold(B) t)$ 的导数为 $bold(B) e^(bold(B) t)$.]

#ti[20.][方程 $(dif bold(u))/(dif t) = bold(A) bold(u)$ 初值为 $bold(u)(0)$ 的解在时刻 $T$ 取值为 $e^(bold(A) T) bold(u)(0)$, 再过一段时间 $t$ 后取值为 $e^(bold(A) t) e^(bold(A) T) bold(u)(0)$. 这个在时刻 $t + T$ 的解也可写为 \_\_\_\_. 结论: $e^(bold(A) t)$ 乘 $e^(bold(A) T)$ 等于 \_\_\_\_.]

#ti[21.][将矩阵 $bold(A) = mat(delim: "[", 1, 4; 0, 0)$ 写为对角化分解式 $bold(X) bold(Lambda) bold(X)^(-1)$, 由 $bold(X) e^(bold(Lambda) t) bold(X)^(-1)$ 求出 $e^(bold(A) t)$.]

#ti[22.][如果矩阵 $bold(A)$ 满足 $bold(A)^2 = bold(A)$, 证明由 $e^(bold(A) t)$ 的级数展开式可推出 $e^(bold(A) t) = bold(I) + (e^t - 1) bold(A)$. 对于习题 21 中的 $bold(A) = mat(delim: "[", 1, 4; 0, 0)$, 可得 $e^(bold(A) t) =$ \_\_\_\_.]

#ti[23.][一般地, $e^bold(A) e^bold(B)$ 与 $e^bold(B) e^bold(A)$ 并不相同, 它们也不同于 $e^(bold(A) + bold(B))$. 利用习题 19, 21, 22 验证这一点 (当 $bold(A) bold(B) = bold(B) bold(A)$ 时, 上述三个矩阵指数函数相等):

#dmath[$ bold(A) = mat(delim: "[", 1, 4; 0, 0), quad bold(B) = mat(delim: "[", 0, -4; 0, 0), quad bold(A) + bold(B) = mat(delim: "[", 1, 0; 0, 0). $]]

#ti[24.][将矩阵 $bold(A) = mat(delim: "[", 1, 1; 0, 3)$ 写为对角化分解式 $bold(X) bold(Lambda) bold(X)^(-1)$. 计算 $bold(X) e^(bold(Lambda) t) bold(X)^(-1)$ 以得到矩阵指数函数 $e^(bold(A) t)$. 当 $t = 0$ 时, 检验 $e^(bold(A) t)$ 和 $e^(bold(A) t)$ 的导数是否分别为 $bold(I)$ 和 $bold(A)$.]

#pagebreak()