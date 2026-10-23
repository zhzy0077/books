#import "../theme.typ": *

#hei[(b)] 请举例说明存在奇异矩阵 $bold(A)$ 和 $bold(B)$ 使得 $bold(A) + bold(B)$ 可逆.

#ti[12.][若乘积 $bold(C) = bold(A) bold(B)$ 是可逆矩阵 ($bold(A)$ 和 $bold(B)$ 都是方阵), 则 $bold(A)$ 是可逆矩阵. 请利用 $bold(C)^(-1)$ 和 $bold(B)$ 求出计算 $bold(A)^(-1)$ 的公式.]

#ti[13.][若三个方阵的乘积 $bold(M) = bold(A) bold(B) bold(C)$ 是可逆矩阵, 则 $bold(B)$ 是可逆矩阵. ($bold(A)$ 和 $bold(C)$ 也是可逆矩阵.) 请利用 $bold(M)^(-1)$, $bold(A)$ 和 $bold(C)$ 求出计算 $bold(B)^(-1)$ 的公式.]

#ti[14.][若将矩阵 $bold(A)$ 的第 1 行加到第 2 行后得矩阵 $bold(B)$, 如何利用 $bold(A)^(-1)$ 来计算 $bold(B)^(-1)$? 注意乘法的顺序. 例如, 二阶方阵 $bold(B) = mat(delim: "[", 1,0;1,1) bold(A)$ 的逆矩阵是 #underline[#h(3em)].]

#ti[15.][若矩阵 $bold(A)$ 有一列元素全为 0, 请证明 $bold(A)$ 不可逆.]

#ti[16.][计算乘积 $mat(delim: "[", a,b;c,d) mat(delim: "[", d,-b;-c,a)$. 若 $a d != b c$, 请分别求出每个矩阵的逆矩阵.]

#ti[17.][(a) 左乘什么样的三阶方阵 $bold(E)$ 与三个消元步骤: 从第 2 行中减去第 1 行, 从第 3 行中减去第 1 行, 再从第 3 行中减去第 2 行, 有相同的作用?

#sub[(b) 右乘什么样的矩阵 $bold(L)$ 与三个连续的反向消元步骤: 先将第 2 行加到第 3 行, 再将第 1 行加到第 3 行, 最后将第 1 行加到第 2 行, 有相同的作用?]]

#ti[18.][若 $bold(B)$ 是 $bold(A)^2$ 的逆矩阵, 请证明 $bold(A) bold(B)$ 是 $bold(A)$ 的逆矩阵.]

#ti[19.][请求出数字 $a$ 和 $b$ 来得到 #raw("5*eye(4) - ones(4,4)") 的逆矩阵:]

#dmath[$ mat(delim: "[", 4,-1,-1,-1;-1,4,-1,-1;-1,-1,4,-1;-1,-1,-1,4)^(-1) = mat(delim: "[", a,b,b,b;b,a,b,b;b,b,a,b;b,b,b,a) . $]

对于 #raw("6*eye(5) - ones(5,5)") 的逆矩阵, 数字 $a$ 和 $b$ 又是多少?

#ti[20.][请执行矩阵乘法 #raw("A*ones(4,1)") 来证明 #raw("A = 4*eye(4) - ones(4,4)") 是不可逆矩阵.]

#ti[21.][以数字 1 和 0 作为元素的二阶方阵共有 16 个, 请问其中有多少个是可逆矩阵?]

习题 22—28 是关于计算 $bold(A)^(-1)$ 的高斯-若尔当消元法的.

#ti[22.][请利用初等行变换, 在将 $bold(A)$ 化简为 $bold(I)$ 的同时将 $bold(I)$ 变为 $bold(A)^(-1)$:]

(a) $[bold(A) quad bold(I)] = mat(delim: "[", 1,3,1,0;2,7,0,1)$; #h(3em) (b) $[bold(A) quad bold(I)] = mat(delim: "[", 1,4,1,0;3,9,0,1)$.

#ti[23.][模仿前文例子构造一个三阶方阵 $bold(A)$, 所有元素都为正号, 再消去主元上方和下方的元素将 $[bold(A) quad bold(I)]$ 化简为 $[bold(I) quad bold(A)^(-1)]$:]

#dmath[$ [bold(A) quad bold(I)] = mat(delim: "[", 2,1,0,1,0,0;1,2,1,0,1,0;0,1,2,0,0,1) . $]



#pagebreak()
