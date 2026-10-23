#import "../theme.typ": *

例如,

#dmath[$ 1/(3 + 2i) = 1/(3 + 2i) dot (3 - 2i)/(3 - 2i) = (3 - 2i)/13. $]

当 $a^2 + b^2 = 1$ 时, 上述结论表明 $(a + i b)^(-1) = a - i b$, 即在单位圆上, $1/z$ 等于 $overline(z)$. 后文中将此结论写为 $1/e^(i theta) = e^(-i theta)$, 进而可以使用模长 $r$ 和辐角 $theta$ 进行乘除法.

#hei[极形式]①#hei[ $r e^(i theta)$]

对复数 $z = a + i b$, $a^2 + b^2$ 的平方根为 $abs(z)$, 这是复数 $z = a + i b$ 的绝对值 (或模). 由于该平方根 $abs(z)$ 是从 0 到 $z$ 的距离, 所以它也写作 $r$. 极形式 $z = r e^(i theta)$ 中的实数 $r$ 给出了复数 $z$ 的长度:

#dmath[$ z = a + i b "的绝对值为" abs(z) = sqrt(a^2 + b^2), "并记为" r. $]

例如, $z = 3 + 2i$ 的绝对值为 $abs(z) = sqrt(3^2 + 2^2)$, 即 $r = sqrt(13)$.

极形式的另一部分是辐角 $theta$. $z = 5$ 的辐角为 $theta = 0$ (因为该复数 $z$ 为正实数). $z = 3i$ 的辐角为 $pi/2$. 负数 $z = -9$ 的辐角为 $pi$. 当复数平方时, 辐角加倍. 由此可见, 极形式适合表示复数乘法 (但并不擅长表示复数加法).

当模长为 $r$ 且辐角为 $theta$ 时, 根据三角学可得出对应直角三角形的两条直角边. 复数的实部 (沿 $x$ 轴) 为 $a = r cos theta$, 虚部 (沿 $y$ 轴) 为 $b = r sin theta$. 整合起来, 矩形形式 $a + i b$ 就变为极形式 $r e^(i theta)$.

#block(stroke: 0.6pt, radius: 3pt, inset: (x: 10pt, y: 16pt), width: 100%, above: 18pt, below: 18pt)[
  #align(center)[复数 $z = a + i b$ 也是 $z = r cos theta + i r sin theta$, 即 $r e^(i theta)$.]
]

#hei[注]  因为 $cos^2 theta + sin^2 theta = 1$, 所以 $cos theta + i sin theta$ 的绝对值为 $r = 1$. 从而 $cos theta + i sin theta$ 位于半径为 1 的圆, 即单位圆上.

#hei[例 1]  求出 $z = 1 + i$ 及其共轭 $overline(z) = 1 - i$ 各自的模长 $r$ 与辐角 $theta$.

#hei[解]  $z$ 与 $overline(z)$ 的绝对值相等, 均为 $r = sqrt(1 + 1) = sqrt(2)$, 这是因为

#dmath[$ abs(z)^2 = 1^2 + 1^2 = 2, quad abs(overline(z))^2 = 1^2 + (-1)^2 = 2, $]

也即两数与原点距离均为 $r = sqrt(2)$. 辐角 $theta$ 是多少? 在复平面中, 数 $1 + i$ 对应点 $(1, 1)$, 辐角为 $pi/4$ 弧度或 45°, 其余弦值为 $1/sqrt(2)$, 正弦值也为 $1/sqrt(2)$. 将 $r$ 与 $theta$ 相结合, 可重新得到 $z = 1 + i$:

#dmath[$ r cos theta + i r sin theta = sqrt(2) dot 1/sqrt(2) + i sqrt(2) dot 1/sqrt(2) = 1 + i. $]

共轭 $overline(z) = 1 - i$ 的辐角既可取正值, 也可取负值. 它可以是 $7 pi/4$ 弧度, 即 315°, 也可反向取为负值角 $-pi/4$ 弧度或 -45°. 当 $z$ 的辐角为 $theta$ 时, 共轭 $overline(z)$ 的辐角为 $2 pi - theta$, 也可取为 $-theta$.

#line(length: 40%, stroke: 0.5pt)
#text(size: 8pt)[① 译者注: 极形式又称三角形式, 即 $z = abs(z) e^(i theta) = r e^(i theta) = r cos theta + i r sin theta$.]

#pagebreak()