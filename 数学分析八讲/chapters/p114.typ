#import "../theme.typ": *

#leadLabel[定理]要使有界函数 $f(x)$ 在区间 $[a, b]$ 上可积，当且仅当满足以下条件：对于无论怎样小的 $epsilon > 0$，区间 $[a, b]$ 上使函数 $f(x)$ 的振幅超过 $epsilon$ 的所有点都能够包含于有限多个区间之内，而这些区间的总长度不大于 $epsilon$.

#leadLabel[证明]1) 设定理的条件得以满足. 令 $delta_1, delta_2, dots.c, delta_n$ 为一组区间，它们包含了所有（使得）在其上函数 $f(x)$ 的振幅超过 $epsilon$ 的点，在此令 #box[$display(sum_(i=1)^n delta_i < epsilon)$]. 其余的区间我们表之以 $d_1, d_2, dots.c, d_N$. 因为在任何区间 $d_i$ 的任意一点上 $f(x)$ 的振幅不大于 $epsilon$，则由第三讲“间断点”一节的定理，该函数在这样一种区间上的振幅将小于 $2 epsilon$，只要这种区间整个地落在区间 $d_i$ 之中，而且其长度充分小. 现在只要再认定区间 $[a, b]$ 的分划所分出的子区间 $Delta_k$ 是任意地充分细（即具有充分小的 $l_T$）. 按照前一节末的方法进行讨论，即把和 (2) 分成两部分，其一是整个区间 $Delta_k$ 都属于区间 $d_i$ 之一，其二是哪怕只是部分地落入区间 $delta_i$ 之一，我们容易得出，和 (2) 的第一部分小于 $2 epsilon (b - a)$，而第二部分不超过 $2 mu (epsilon + 2 n l_T)$，其中 $mu$ 为函数 $|f(x)|$ 在区间 $[a, b]$ 上的上确界，而 $n$ 是区间 $delta_i$ 的个数. 选择 $epsilon$ 及 $l_T$ 充分小，这样一来，我们就可以使得和 (2) 任意小，这就是所要证明的.

2\) 设 $f(x)$ 在区间 $[a, b]$ 上可积且 $epsilon$ 是任意的正数. 我们可以选取区间 $[a, b]$ 这样的分划，使得相应地有和 (2) 小于 $epsilon^2$. 现在要注意和 (2) 的所有项都非负，因而当我们从中只保留 $omega_k > epsilon$ 的项而剔除其余项时，和不会增加. 这样一来，即有

#dmath[$ epsilon^2 > sum_(k=1)^n omega_k Delta_k gt.eq.slant sum_(omega_k > epsilon) omega_k Delta_k gt.eq.slant epsilon sum_(omega_k > epsilon) Delta_k, $]

#cont[由此得]

#dmath[$ sum_(omega_k > epsilon) Delta_k < epsilon, $]

#cont[但包含于上述和中的区间 $Delta_k$ 很显然包含了区间 $[a, b]$ 上所有使函数 $f(x)$ 的振幅超过 $epsilon$ 的点（因为这样的点不可能属于使得 $omega_k lt.eq.slant epsilon$ 的区间 $Delta_k$）. 这也就是说，我们所要证明的定理之中的可积性条件确实是必要的.]

从所证的定理可推出区间 $[a, b]$ 上的任何单调函数的可积性. 实际上，如同我们在第三讲中所看到的，任何这样的函数在已给区间上必然有界. 其次，我们已经看到，对于无论怎样小的 $epsilon > 0$，区间 $[a, b]$ 上使得该函数有 $> epsilon$ 的振幅的点的个数应当是有限的. 但有限多个点总能包含于有限多个区间中，且这些区间的长度和可以任意小. 这就是说，我们刚才证明过的定理中所谈到的可积性准则，对每一个单调函数必然满足.

#sec[几何应用与物理应用的格式]

我们所研究的积分概念，只与一定形式的和密切相关（或者用极限的思想或者

#pagebreak(weak: true)
