#import "../theme.typ": *

#ti[32.][设矩阵 $bold(P)$ 和 $bold(Q)$ 与 $bold(I)$ 有相同的行向量, 但是行按任意顺序排列, 即 $bold(P), bold(Q)$ 为 “置换矩阵”. 请求解 $(bold(P) - bold(Q)) bold(x) = 0$ 来证明 $bold(P) - bold(Q)$ 为奇异矩阵.]

#ti[33.][设以下分块矩阵均可逆, 请找到相应的逆矩阵并进行检验:

#dmath[$ mat(delim: "[", bold(I), bold(O); bold(C), bold(I)) , quad mat(delim: "[", bold(A), bold(O); bold(C), bold(D)) , quad mat(delim: "[", bold(O), bold(I); bold(I), bold(D)) . $]]

#ti[34.][若 4 阶方阵 $bold(A)$ 的各行都由数字 0,1,2,3 的某种排列构成, 请问 $bold(A)$ 是否可逆? 类似地, 若 4 阶方阵 $bold(B)$ 的各行由数字 0,1,2,-3 的某种排列构成, 请问 $bold(B)$ 是否可逆?]

#ti[35.][对于例 2.5 C 中的帕斯卡三角形矩阵 $bold(L)$ 有 $bold(L)^(-1) = bold(D) bold(L) bold(D)$, 其中对角矩阵 $bold(D)$ 有交替的元素 1,-1,1,-1, 则 $bold(L) bold(D) bold(L) bold(D) = bold(I)$. 求 LD = pascal(4,1) 的逆矩阵.]

#ti[36.][对于希尔伯特 (Hilbert) 矩阵 $bold(H)$ 有 $h_(i j) = 1/(i+j-1)$. 先用 MATLAB 指令 #raw("invhilb(6)") 求得 6 阶希尔伯特矩阵的逆矩阵, 然后用指令 #raw("inv(hilb(6))") 求逆矩阵. 显然电脑不会算错, 为什么这两个逆矩阵不同?]

#ti[37.][(a) 请在 MATLAB 中利用指令 #raw("inv(P)") 来计算 4 阶对称矩阵 #raw("P = pascal(4)") 的逆矩阵;

(b) 请用 #raw("L = abs(pascal(4,1))") 构建帕斯卡下三角形矩阵 $bold(L)$ 并检验 $bold(P) = bold(L) bold(L)^T$.]

#ti[38.][若矩阵 #raw("A = ones(4)") 且向量 #raw("b = rand(4,1)"), 如何用 MATLAB 判断线性方程组 $bold(A) bold(x) = bold(b)$ 无解? 对于 #raw("b = ones(4,1)"), 由 #raw("A\\b") 求得 $bold(A) bold(x) = bold(b)$ 的解是什么?]

#align(center)[#image("../assets/fig-p120-icon.png", width: 3.2%)]
#line(length: 100%)
#align(center, hei("挑 战 题"))

#ti[39.][(推荐) 设 4 阶方阵

#dmath[$ bold(A) = mat(delim: "[", 1,-a,0,0;0,1,-b,0;0,0,1,-c;0,0,0,1) . $]

求这个双对角矩阵的逆矩阵 $bold(A)^(-1)$.]

#ti[40.][设 4 阶方阵

#dmath[$ bold(E)_1 = mat(delim: "[", 1,0,0,0;a,1,0,0;b,0,1,0;c,0,0,1) , quad bold(E)_2 = mat(delim: "[", 1,0,0,0;0,1,0,0;0,d,1,0;0,e,0,1) , quad bold(E)_2 = mat(delim: "[", 1,0,0,0;0,1,0,0;0,0,1,0;0,0,f,1) , $]

其中 $a,b,dots.c,f$ 均非零, 请计算 $bold(L) = bold(E)_1 bold(E)_2 bold(E)_3$ 来证明这些非零元被复制到 $bold(L)$ 中的对应位置.]

// UNCERTAIN: 第 40 题第 3 个矩阵原书印作 $bold(E)_2$, 据下文 $L = E_1 E_2 E_3$ 推断应为 $bold(E)_3$.



#pagebreak()
