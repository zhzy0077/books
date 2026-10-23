#import "../theme.typ": *

如果固定一组确定的值 $xi_1, xi_2, dots.c$，并无限减小所有差 $k_j = eta_j - eta_(j-1)$，则内层的和 $display(sum_j f(xi_i, eta_j) k_j)$ 将以积分

#denseDisplay[$ integral_(phi_1 (xi_i))^(phi_2 (xi_i)) f(xi_i, y) dif y $]

#cont[为其极限. 为方便起见，我们将此积分写成 $F(xi_i)$，即一般地令]

#denseDisplay[$ F(x) = integral_(phi_1 (x))^(phi_2 (x)) f(x, y) dif y $]

#cont[(积分时把 $x$ 当作常量，因而把 $f(x, y)$ 作为单一变量 $y$ 的函数来积分). 我们可以取 $k_j$ 这样小，使得对任何 $i$ 都有]

#denseDisplay[$ abs(sum_j f(xi_i, eta_j) k_j - F(xi_i)) < epsilon, $]

#cont[由此得]

#denseDisplay[$ abs(h_i sum_j f(xi_i, eta_j) k_j - F(xi_i) h_i) < epsilon h_i $]

#cont[且]

#denseDisplay[$ abs(sum_i h_i sum_j f(xi_i, eta_j) k_j - sum_i F(xi_i) h_i) \
  = abs(hat(S) - sum_i F(xi_i) h_i) < epsilon sum_i h_i = epsilon (b - a), $]

#cont[最后，对充分小的 $h_i$，和 $display(sum_i F(xi_i) h_i)$ 很显然可以任意趋近于极限]

#denseDisplay[$ integral_a^b F(x) dif x. $]

这样一来，我们看到，对于适当选取的区域 $D$ 的分划，所有这 3 个差：$I - hat(S), hat(S) - display(sum_i F(xi_i) h_i)$ 以及 $display(sum_i F(xi_i) h_i) - display(integral_a^b F(x) dif x)$ 都是任意小，从而其和 $I - display(integral_a^b F(x) dif x)$ 也是任意小. 但是 $I - display(integral_a^b F(x) dif x)$ 是不依赖于任何分划的，因而它应当等于零. 这就是说，我们得到

#denseDisplay[$ integral.double_D f(x, y) dif x dif y = integral_a^b dif x integral_(phi_1 (x))^(phi_2 (x)) f(x, y) dif y, $]

#cont[这样，计算二重积分确实化成了两个逐次进行的通常的积分. 内层的积分当然与 $x$ 有关，但已经是与 $y$ 无关了. 当然，不用我们所选的积分顺序，也可以取相反的顺序. 这个附注有时具有实质性的实际意义，因为可能发生这样的事情：交换一下积分次序，我们可以得到相当容易积分的函数.]

#pagebreak(weak: true)
