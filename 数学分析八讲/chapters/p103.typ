#import "../theme.typ": *

#cont[到 $Q$ 的向量 $overline(P Q)$ 与方向 $O x$ 构成倾角 $phi$，然后再让点 $Q$ 沿此向量趋近于 $P$. 如果量]

#proofStepDisplay[$ lim_(Q -> P) frac(f(Q) - f(P), overline(P Q)) $]

#cont[存在，自然可称之为函数 $z$ 沿着由倾角为 $phi$ 来决定的方向上的导数. 很显然，给定这个方向完全等价于在增量 $Delta x$ 和 $Delta y$ 同时趋近于零时，给它们一个确定的线性关系 $(Delta y = tan phi Delta x)$.]

例如，可以约定用 $directionalDerivativeD_phi (z)$ 来表示函数 $z$ 沿着与 $O x$ 轴构成 $phi$ 角的方向上的导数. 这样，

#proofStepDisplay[$ frac(partial z, partial x) = directionalDerivativeD_0 (z), quad frac(partial z, partial y) = directionalDerivativeD_(pi/2) (z). $]

现在我们来证明：#em[在点 $(x, y)$ 处可微的函数 $z = f(x, y)$ 在该点处的任何方向上均有导数，且有]

#proofStepDisplay[$ directionalDerivativeD_phi (z) = frac(partial z, partial x) cos phi + frac(partial z, partial y) sin phi. $]

实际上，因为当点 $(x, y)$ 沿方向 $phi$ 移动距离 $rho$ 时，在

#proofStepDisplay[$ Delta z = frac(partial z, partial x) Delta x + frac(partial z, partial y) Delta y + o(rho) $]

#cont[中应有]

#proofStepDisplay[$ Delta x = rho cos phi, quad Delta y = rho sin phi, $]

#cont[所以，]

#proofStepDisplay[$ frac(Delta z, rho) = frac(partial z, partial x) cos phi + frac(partial z, partial y) sin phi + o(1), $]

#cont[即]

#proofStepDisplay[$ lim_(rho -> 0) frac(Delta z, rho) = directionalDerivativeD_phi (z) = frac(partial z, partial x) cos phi + frac(partial z, partial y) sin phi, $]

#cont[此即是所要证明的.]

#sec[隐函数]

偏微分理论的进一步发展与完善，与一维情形的微分学相当全面地相似. 因此我们不再浪费时间讨论它. 然而我们还要在一维情况的一个重要问题上再停留一下，因为需要用偏微分才能解决这个问题. 这里首先要说的是 “隐函数” 的存在性及微分的定理. (隐函数这个通用的术语无疑是不确切的，正确的说法应是 “未用显式给出的” 或者 “未显示定义的” 函数，因为所说的不是一个特别的函数类，而只是给出函数的特别的方式.)

你们当然应该多次听到过：一个方程

#proofStepDisplay[#eqnum(17)[$ F(x, y) = 0 $]]

#pagebreak(weak: true)
