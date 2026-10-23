#import "../theme.typ": *

现在摆在我们面前的完全确定的任务是：选择数字 $alpha_k, beta_k$，使积分 (9) 得到可能的最小值．很显然，这个积分是 $2n + 1$ 个变量 $alpha_0, alpha_1, beta_1, dots.c, alpha_n, beta_n$ 的函数，因此这里是一个多元函数的极小值问题．但是，这个问题的特殊性质使得解决它时可以不用微分学的方法．

把积分 (9) 改写为形式

#dmath[$ integral_(-pi)^pi f^2 (x) dif x + integral_(-pi)^pi Pi_n^2 (x) dif x - 2 integral_(-pi)^pi f(x) Pi_n (x) dif x. $]

#cont[以 $a_k, b_k$ 来表示函数 $f(x)$ 的傅里叶系数，很显然，我们由公式 (7) 和 (8) 得到]

#eqnum(10)[$ integral_(-pi)^pi f(x) Pi_n (x) dif x = pi { frac(alpha_0 a_0, 2) + sum_(k=1)^n (alpha_k a_k + beta_k b_k) } . $]

#cont[从另一方面讲，如果我们注意到]

#dmath[$ integral_(-pi)^pi cos^2 k x dif x = integral_(-pi)^pi sin^2 k x dif x = pi, $]

#cont[则函数组 (5) 的正交性容易给出]

#eqnum(11)[$ integral_(-pi)^pi Pi_n^2 (x) dif x = pi { frac(alpha_0^2, 2) + sum_(k=1)^n (alpha_k^2 + beta_k^2) } . $]

#cont[比较 (10) 式和 (11) 式，并利用初等的关系式]

#dmath[$ alpha_k^2 - 2a_k alpha_k &= (alpha_k - a_k)^2 - a_k^2, \
  beta_k^2 - 2b_k beta_k &= (beta_k - b_k)^2 - b_k^2, $]

#cont[我们得到]

#align(center)[$ &integral_(-pi)^pi Pi_n^2 (x) dif x - 2 integral_(-pi)^pi f(x) Pi_n (x) dif x \
  &= pi { frac((alpha_0 - a_0)^2, 2) + sum_(k=1)^n [(alpha_k - a_k)^2 + (beta_k - b_k)^2] } \
  &quad - pi { frac(a_0^2, 2) + sum_(k=1)^n (a_k^2 + b_k^2) }, $]

#cont[因而有]

#dmath[$ integral_(-pi)^pi [f(x) - Pi_n (x)]^2 dif x $]

#pagebreak(weak: true)
