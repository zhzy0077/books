#import "../theme.typ": *

请对具体例子计算 $bold(S)$, 其中

#dmath[$ mat(delim: "[", a, b; c, bold(I)) = mat(delim: "[", 2, 3, 3; 4, 1, 0; 4, 0, 1) . $]

分块矩阵的主元是 $bold(A)$ 和 $bold(S)$, 若这两个子块可逆, 则 $mat(delim: "[", bold(A), bold(B); bold(C), bold(D))$ 也可逆.

#ti[44.][利用等式 $bold(A)(bold(I) + bold(B) bold(A)) = (bold(I) + bold(A) bold(B)) bold(A)$ 如何将 $bold(I) + bold(B) bold(A)$ 和 $bold(I) + bold(A) bold(B)$ 两者的逆产生联系? 二者同时可逆或者奇异 (此结论并不明显).]



#pagebreak()
