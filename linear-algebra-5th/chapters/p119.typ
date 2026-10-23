#import "../theme.typ": *

#hei[24.] 对 $[bold(U) quad bold(I)]$ 应用高斯-若尔当消元法来计算上三角形矩阵 $bold(U)^(-1)$:

$ bold(U) bold(U)^(-1) = bold(I) , quad mat(delim: "[",1,a,b;0,1,c;0,0,1) [x_1 quad x_2 quad x_3] = mat(delim: "[",1,0,0;0,1,0;0,0,1) . $

#hei[25.] 对 $[bold(A) quad bold(I)]$ 和 $[bold(B) quad bold(I)]$ 应用消元法来计算 $bold(A)^(-1)$ 和 $bold(B)^(-1)$ (如果存在), 其中

$ bold(A) = mat(delim: "[",2,1,1;1,2,1;1,1,2) , quad bold(B) = mat(delim: "[",2,-1,-1;-1,2,-1;-1,-1,2) . $

#hei[26.] 请求出消元矩阵 $bold(E)_(21), bold(E)_(12)$ 和对角矩阵 $bold(D)^(-1)$ 将 $bold(A) = mat(delim: "[",1,2;2,6)$ 化为单位矩阵, 并利用矩阵乘积 $bold(D)^(-1) bold(E)_(12) bold(E)_(21)$ 来计算 $bold(A)^(-1)$.

#hei[27.] 对 $[bold(A) quad bold(I)]$ 应用高斯-若尔当方法来计算 $bold(A)$ 的逆矩阵:

(a) $bold(A) = mat(delim: "[",1,0,0;2,1,3;0,0,1)$; #h(3em) (b) $bold(A) = mat(delim: "[",1,1,1;1,2,2;1,2,3)$.

#hei[28.] 请先换行再应用高斯-若尔当方法来计算 $bold(A)^(-1)$:

$ [bold(A) quad bold(I)] = mat(delim: "[",0,2,1,0;2,2,0,1) . $

#hei[29.] 判断正误 (如果错误请举出反例, 如果正确请说明原因):

(a) 含零行的 4 阶方阵不可逆;

(b) 主对角线的元素都是 1 的矩阵是可逆矩阵;

(c) 若 $bold(A)$ 为可逆矩阵, 则 $bold(A)^(-1)$ 和 $bold(A)^2$ 是可逆矩阵.

#hei[30.] (推荐) 若 $a != 0$ 且 $a != b$, 请证明 $bold(A)$ 是可逆矩阵 (计算主元或 $bold(A)^(-1)$), 然后求 $c$ 的三个取值使得矩阵 $bold(C)$ 不可逆, 其中

$ bold(A) = mat(delim: "[",a,b,b;a,a,b;a,a,a) , quad bold(C) = mat(delim: "[",2,c,c;c,c,c;8,7,c) . $

#hei[31.] 如下所示矩阵 $bold(A)$ 有一个值得注意的逆矩阵, 请对 $[bold(A) quad bold(I)]$ 应用消元法来计算 $bold(A)^(-1)$. 将 $bold(A)$ 推广到 5 阶 “交错矩阵” 并猜测它的逆矩阵, 然后利用乘法进行确认.

求 $bold(A) = mat(delim: "[",1,-1,1,-1;0,1,-1,1;0,0,1,-1;0,0,0,1)$ 的逆矩阵并求解 $bold(A) bold(x) = (1,1,1,1)$.



#pagebreak()
