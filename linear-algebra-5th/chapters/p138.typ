#import "../theme.typ": *

#subsec[对称矩阵]

对于对称矩阵 $bold(A)$, 将 $bold(A)$ 转置成 $bold(A)^T$ 不会带来任何变化, 即 $bold(A)^T = bold(A)$. 它的位置 $(j,i)$ 元素与关于主对角线对称的位置 $(i,j)$ 元素相等. 对称矩阵是最重要的一类矩阵, 本书用特定字母 $bold(S)$ 来表示.

#gainian[定义][对于对称矩阵 $bold(S)$ 有 $bold(S)^T = bold(S)$, 即 $s_(j i) = s_(i j)$.]

例如,

#eqL[对称矩阵][$ bold(S) = mat(delim: "[", 1,2;2,5) = bold(S)^T , quad bold(D) = mat(delim: "[", 1,0;0,10) = bold(D)^T . $]

对称矩阵的逆矩阵也是对称矩阵. 因 $bold(S)^(-1)$ 的转置是

#dmath[$ (bold(S)^(-1))^T = (bold(S)^T)^(-1) = bold(S)^(-1) , $]

故 $bold(S)^(-1)$ 是对称矩阵 (当 $bold(S)$ 可逆时). 对上述 $bold(S)$ 和 $bold(D)$,

#eqL[对称逆矩阵][$ bold(S)^(-1) = mat(delim: "[", 5,-2;-2,1) quad text("与") quad bold(D)^(-1) = mat(delim: "[", 1,0;0,0.1) . $]

对任意矩阵 $bold(A)$, 可用 $bold(A)$ 与 $bold(A)^T$ 的乘积来构造对称矩阵.

#subsec[对称的乘积 $bold(A)^T bold(A)$, $bold(A) bold(A)^T$ 与 $bold(L) bold(D) bold(L)^T$]

设 $bold(A)$ 是任意矩阵——不必是方阵, 则 $bold(A)^T$ 左乘 $bold(A)$ 的乘积 $bold(S) = bold(A)^T bold(A)$ 一定是对称的方阵:

#eqnum($bold(A)^T bold(A) text(" 的转置是 ") bold(A)^T (bold(A)^T)^T, text(" 等于 ") bold(A)^T bold(A).$, 6)

以上是 $bold(A)^T bold(A)$ 具有对称性的一个快速证明. 也可以观察 $bold(A)^T bold(A)$ 的 $(i,j)$ 元素, 它是 $bold(A)^T$ 的第 $i$ 行 (即 $bold(A)$ 的第 $i$ 列) 与 $bold(A)$ 的第 $j$ 列的内积, 而 $(j,i)$ 元素也是第 $j$ 列和第 $i$ 列的内积, 因此 $bold(A)^T bold(A)$ 是对称矩阵.

$bold(A) bold(A)^T$ 也是对称矩阵. ($bold(A)$ 和 $bold(A)^T$ 的外形使得乘法是有意义的.) 但是 $bold(A) bold(A)^T$ 与 $bold(A)^T bold(A)$ 通常不同. 从作者的经验来看, 大部分科学问题始于一般矩阵 $bold(A)$, 最后归结于 $bold(A)^T bold(A)$ 或者 $bold(A) bold(A)^T$ 或者二者都有, 例如, 最小二乘问题就是如此.

#hei[例 2]  分别用 $bold(A) = mat(delim: "[", -1,1,0;0,-1,1)$ 左乘和右乘 $bold(A)^T = mat(delim: "[", -1,0;1,-1;0,1)$, 都得到对称矩阵:

#dmath[$ bold(A) bold(A)^T = mat(delim: "[", 2,-1;-1,2) , quad bold(A)^T bold(A) = mat(delim: "[", 1,-1,0;-1,2,-1;0,-1,1) . $]

当 $bold(A)$ 是 $m times n$ 矩阵时, 乘积 $bold(A)^T bold(A)$ 是 $n$ 阶方阵, $bold(A) bold(A)^T$ 是 $m$ 阶方阵. 二者都是对称矩阵, 并且对主对角线上的元素都是非负数 (为什么?). 即使 $m = n$, 也很有可能 $bold(A)^T bold(A) != bold(A) bold(A)^T$. 除个别特殊情况外, 这两个乘积一般不相等.



#pagebreak()
