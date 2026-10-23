#import "../theme.typ": *

和 $b$ 分别表示区域 $D$ 上的点的横坐标的下确界和上确界，分别以 $y = phi_1 (x)$ 和 $y = phi_2 (x)$ 来表示区域 $D$ 的下边界和上边界的方程，以 $Delta_(i j)$ 来表示由直线 $x = xi_(i-1), x = xi_i, y = eta_(j-1), y = eta_j$ 为界的网眼. 最后令 $xi_i - xi_(i-1) = h_i, eta_j - eta_(j-1) = k_j$，因而有 $Delta_(i j) = h_i k_j$——如果网眼 $Delta_(i j)$ 是长方形，即不在区域 $D$ 的边界上.

如果所有的 $h_i, k_j$ 都充分小，则 $d_T$ 可以任意小，且积分 $I$ 与和

#eqnum(16)[$ S = sum_(i, j) f(xi_i, eta_j) Delta_(i j) $]

#cont[的差可以任意小. 我们先不管那些位于区域 $D$ 的边界附近的非长方形的网眼. 以 $delta$ 来表示数 $h_i, k_j$ 中最大的. 以直线 $x = xi_(i-1)$ 和 $x = xi_i$ 为界的条形中可能在上面或下面有非长方形的网眼. 在图 32 中图示了以这种带形的上边界为界的网眼的例子. 这种网眼（图 32 中它们共有 3 个）我们用斜线标出，完全位于某一个长方形内，该长方形底边长 $h_i$，而高很显然不超过 $omega_i + 2 delta$，其中 $omega_i$ 为函数 $phi_2 (x)$ 在区间 $[xi_(i-1), xi_i]$ 上的振幅（该长方形在图 32 中也画出来了）. 如果 $delta$ 充分小，则由函数 $phi_2 (x)$ 的一致连续性，任何 $omega_i$ 以及任何 $omega_i + 2 delta$ 都可以小于任意小的正数 $epsilon$，因此图 32 上所描绘出的这类非长方形的网眼的面积之和将小于 $epsilon h_i$，从而整个区域 $D$ 的边界的上边带形中的网眼之面积和小于 $epsilon sum_i h_i = epsilon (b - a)$，很显然，对该边界的下边带形中的全部网眼也能得到这个估计. 因而所有的“不全”的网眼的总面积不超过 #box[$2 epsilon (b - a)$]，从而在和 (16) 中相应这些网眼的部分，其绝对值不会超过 $2 M (b - a) epsilon$（其中 $M$ 为函数 $abs(f (x, y))$ 在区域 $D$ 上的上确界）. 因此这部分项的和当 $delta$ 充分小时可以任意小.]

#align(center)[#sourceFigure("assets/p131/fig32.png", figureCaption(32))]

今后，只对长方形网眼来作和 (16)，于是对任意分划，当 $d_T$ 充分小时，我们仍然有 $abs(I - hat(S)) < epsilon$; 现在就有

#dmath[$ hat(S) = sum_(i, j) f(xi_i, eta_j) h_i k_j = sum_i h_i sum_j f(xi_i, eta_j) k_j. $]

#pagebreak(weak: true)
