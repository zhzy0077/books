#import "../theme.typ": *
#set par(spacing: 14pt, leading: 13pt)

$bold(E)_1 bold(E)_2 bold(E)_3$ 的相乘顺序与消元的顺序 (因 $bold(E)_3$ 先作用) 正好相反. 但是 $bold(E)_1 bold(E)_2 bold(E)_3 = bold(L)$ 是逆转消元步骤并恢复矩阵 $bold(A)$ 的正确顺序.

#hei[41.] 二阶差分矩阵 (前文中的矩阵 $bold(K)$) 如果以 $t_(11) = 1$ (而不是 $k_(11) = 2$) 开始, 就会有美观的逆矩阵. 以下是三阶三对角矩阵 $bold(T)$ 及其逆矩阵:

#dmath[$ bold(T) = mat(delim: "[",1,-1,0;-1,2,-1;0,-1,2) , quad bold(T)^(-1) = mat(delim: "[",3,2,1;2,2,1;1,1,1) . $]

求逆矩阵 $bold(T)^(-1)$ 的一种方法是对 $[bold(T) quad bold(I)]$ 执行高斯-若尔当消元法. 作者倾向于先将 $bold(T)$ 写成一阶差分矩阵 $bold(L)$ 左乘 $bold(U)$, 而 $bold(L)$ 与 $bold(U)$ 的逆矩阵是例 2.5 A 中的累加矩阵, 从而有 $bold(T) = bold(L) bold(U)$ 且 $bold(T)^(-1) = bold(U)^(-1) bold(L)^(-1)$:

#dmath[$ bold(T) = mat(delim: "[",1,,;-1,1,;0,-1,1) mat(delim: "[",1,-1,0;,1,-1;,,1) , quad bold(T)^(-1) = mat(delim: "[",1,1,1;,1,1;,,1) mat(delim: "[",1,,;1,1,;1,1,1) . $]

#align(center)[作差 #h(4em) 作差 #h(10em) 求和 #h(4em) 求和]

#hei[问题]  考虑 4 阶的情形, 请问 4 阶矩阵 $bold(T)$ 的主元是什么? 其 4 阶逆矩阵是什么? 交换乘法次序后, $bold(U) bold(L)$ 所得的矩阵 $bold(T)^*$ 是什么? $bold(T)^*$ 的逆矩阵是什么?

#hei[42.] 如下所示的两个差分矩阵都很重要. 它们可逆吗?

#eqL[#hei[循环矩阵]][$ bold(C) = mat(delim: "[",2,-1,0,-1;-1,2,-1,0;0,-1,2,-1;-1,0,-1,2) , $]

#eqL[#hei[自由端矩阵]][$ bold(F) = mat(delim: "[",1,-1,0,0;-1,2,-1,0;0,-1,2,-1;0,0,-1,1) . $]

#hei[43.] 分块矩阵的消元法. 从如下分块矩阵的第 2 行 $[bold(C) quad bold(D)]$ 中减去 $bold(C) bold(A)^(-1)$ 左乘第 1 行 $[bold(A) quad bold(B)]$, 得到 “舒尔补” $bold(S)$:

#dmath[$ mat(delim: "[",bold(I), bold(O); -bold(C) bold(A)^(-1), bold(I)) mat(delim: "[",bold(A), bold(B); bold(C), bold(D)) = mat(delim: "[",bold(A), bold(B); bold(O), bold(S)) , $]

其中 $bold(A)$ 和 $bold(D)$ 是方阵, $bold(S) = bold(D) - bold(C) bold(A)^(-1) bold(B)$. 然后对上式右边的分块矩阵从第 2 列中减去 $bold(A)^(-1) bold(B)$ 右乘第 1 列得

#dmath[$ mat(delim: "[",bold(A), bold(B); bold(O), bold(S)) mat(delim: "[",bold(I), -bold(A)^(-1) bold(B); bold(O), bold(I)) = ? $]



#pagebreak()
