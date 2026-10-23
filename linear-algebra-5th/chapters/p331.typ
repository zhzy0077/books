#import "../theme.typ": *

(图 6.3). 与此同时, 电脑屏幕上会显示彩色的 $bold(A) bold(x)$ 也随之移动. $bold(A) bold(x)$ 可能在 $bold(x)$ 之前, 也可能在 $bold(x)$ 之后. 有时候 $bold(A) bold(x)$ 平行于 $bold(x)$. 在平行那一刻, $bold(A) bold(x) = lambda bold(x)$ (对应图 6.3 (b) 中的 $bold(x)_1$ 和 $bold(x)_2$).

#figure(image("../assets/fig-p331-63.png", width: 95%), numbering: none, caption: [图 6.3])

当 $bold(A) bold(x)$ 与单位特征向量 $bold(x)$ 共线时, $lambda$ 是 $bold(A) bold(x)$ 的长度. $bold(A)$ 的内置选项展示了三种可能性: 有 0 个, 1 个或 2 个实向量 $bold(x)$ 使得 $bold(A) bold(x)$ 与 $bold(x)$ 共线.

$bold(A) bold(x)$ 构成的椭圆的轴是第 7.4 节中的 #hei[奇异向量]——如果 $bold(A)^T = bold(A)$, 那么还是特征向量.

#pagebreak()