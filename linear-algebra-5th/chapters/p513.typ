#import "../theme.typ": *

#hei[弹簧圈]

在上述两端自由情形下, 再用一个弹簧将质点 3 和质点 1 连接起来就可以形成一个圈. 这时, $bold(K)$ 仍是不可逆矩阵——刚度矩阵 $bold(K)_"循环"$ 是奇异矩阵:

#eqnum($ bold(A)_"循环"^T bold(A)_"循环" = mat(delim: "[", 1,-1,0; 0,1,-1; -1,0,1) mat(delim: "[", 1,0,-1; -1,1,0; 0,-1,1) = mat(delim: "[", 2,-1,-1; -1,2,-1; -1,-1,2) . $, 16)

上述矩阵的主元为 2 和 $3/2$, 特征值分别为 3, 3 和 0, 行列式为 0. 该矩阵的零空间仍然包含向量 $bold(x) = (1,1,1)$, 这意味着所有质点一起移动. 另外, 位移向量 $(1,1,1)$ 也在矩阵 $bold(A)_"循环"$ 和 $bold(K)_"循环" = bold(A)^T bold(C) bold(A)$ 的零空间中.

下面再次回顾用差分方程近似求解微分方程的方法, 以帮助读者将微积分与线性代数联系起来.

#dmath[$ "设方程" quad -(d)/(d x) (c(x) (d u)/(d x)) = f(x) quad "满足" quad u(0) = 0, quad "且" quad u(1) = 0 quad "或" quad (d u)/(d x)(1) = 0. $]

将区间 $[0,1]$ 分成 $N$ 个长度为 $Delta x$ 的小区间. (如果所取的步长 $Delta x$ 足够小, 那么可以获得非常满意的解.) 用 $bold(A) bold(u)$ 代替导数 $(d u)/(d x)$, 同时用 $bold(A)^T bold(y)$ 代替 $-(d y)/(d x)$#footnote[译者注: 设 $y(x) = c(x) (d y)/(d x)$。], 此时矩阵 $bold(A)$ 和 $bold(A)^T$ 中的元素都含 $1/(Delta x)$. 边值条件为 $u_0 = 0$ 和 $u_N = 0$ (或 $y_N = 0$). 三个运算 $-(d)/(d x)$, 乘 $c(x)$ 和 $(d)/(d x)$ 对应的矩阵分别为 $bold(A)^T$, $bold(C)$ 和 $bold(A)$:

#dmath[$ bold(f) = bold(A)^T bold(y), quad bold(y) = bold(C) bold(e), quad bold(e) = bold(A) bold(u), quad "由此可得" quad bold(A)^T bold(C) bold(A) bold(u) = bold(f). $]

以上是计算科学与工程中的一个基本例子. 实际建模与求解的步骤为

(1) 用微分方程描述实际问题;

(2) 将微分方程离散成差分方程;

(3) 求解差分方程 (利用边值条件);

(4) 诠释解的含义, 再将解绘制成图形, 必要时重新建模.

数值模拟已成为科学领域的第三个分支, 另外两个分支为实验和理论推导. 数值模拟的应用非常广泛, 比如在计算机上设计波音 777 要比进行风洞试验成本低得多.

作者的另外两本著作 #emph[Introduction to Applied Mathematics] 和 #emph[Computational Science and Engineering] (均由 Wellesley-Cambridge 出版社出版) 进一步讨论了上述内容. 作者希望本书能帮助读者了解这些计算背后的原理框架.

#barHead[■ 习题集 10.2]

#ti[1.][对两端固定边值问题, 证明 $det bold(A)_0^T bold(C)_0 bold(A)_0 = c_1 c_2 c_3 + c_1 c_3 c_4 + c_1 c_2 c_4 + c_2 c_3 c_4$. 对固定-自由边值问题求 $det bold(A)_1^T bold(C)_1 bold(A)_1$.]

#pagebreak()