#import "../theme.typ": *

#hei[29.] （推荐）若向量 $bold(v), bold(w)$ 满足 $norm(bold(v)) = 5$, $norm(bold(w)) = 3$, 求出长度 $norm(bold(v) - bold(w))$ 可能的最大值和最小值, 点积 $bold(v)·bold(w)$ 可能的最大值和最小值又是什么?

#align(center)[#image("../assets/fig-p042-icon.png", width: 5.5%)]
#line(length: 100%)
#align(center, text(size: 14pt)[#hei[挑 战 题]])

#hei[30.] $x y$ 平面上是否存在三个向量 $bold(u), bold(v), bold(w)$, 使得 $bold(u)·bold(v) < 0$, $bold(v)·bold(w) < 0$, $bold(u)·bold(w) < 0$ 同时成立? 在 $x y z$ 空间中最多存在多少个向量使得相互之间点积都为负值?（提示: 平面上的任意四个向量不能满足本题的要求.）

#hei[31.] 任选三个数 $x, y, z$ 使得 $x + y + z = 0$, 计算向量 $bold(v) = (x, y, z)$ 与 $bold(w) = (z, x, y)$ 的夹角. 请分析 $ (bold(v)·bold(w)) / (norm(bold(v)) norm(bold(w))) $ 为什么始终等于 $-1/2$.

#hei[32.] 试证明 $root(3, x y z) <= 1/3 (x + y + z)$ （几何平均数 $<=$ 算术平均数）.

#hei[33.] 在 $(plus.minus 1/2, plus.minus 1/2, plus.minus 1/2)$ 中选择合适的 $+$, $-$ 符号构造 4 个互相垂直的单位向量.

#hei[34.] 在 MATLAB 中利用 v=randn(3,1) 生成一个随机的单位向量 $bold(u) = bold(v)/norm(bold(v))$, 利用 V=randn(3,30) 生成不少于 30 个随机的单位向量 $bold(U)_j$, 请问点积 $|bold(u)·bold(U)_j|$ 的平均值是多少? 利用微积分, 可以算得平均值为

#dmath[$ 1/pi integral_0^pi abs(cos theta) dif theta = 2/pi . $]



#pagebreak()
