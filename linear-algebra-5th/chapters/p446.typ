#import "../theme.typ": *

#hei[16.]　设变换 $T$ 对每个二阶方阵 $bold(M)$ 进行转置. 先尝试求矩阵 $bold(A)$ 使得 $bold(A) bold(M) = bold(M)^T$, 再证明不存在这种矩阵 $bold(A)$. 那么是否这个线性变换并不对应一个矩阵? 实际上对应的矩阵为 4 阶方阵!

#hei[17.]　对每个二阶方阵进行转置的变换 $T$ 显然是线性变换. 请判断以下性质哪些是正确的?

(a) $T^2$ 是恒等变换;

(b) $T$ 的核仅含零矩阵;

(c) $T$ 的值域是所有二阶方阵;

(d) $T(bold(M)) = -bold(M)$ 不可能成立.

#hei[18.]　设变换

$ T(bold(M)) = mat(delim: "[", 1, 0; 0, 0) bold(M) mat(delim: "[", 0, 0; 0, 1), $

请求出一个使 $T(bold(M)) != bold(O)$ 的矩阵 $bold(M)$. 描述所有使 $T(bold(M)) = bold(O)$ 的矩阵 $bold(M)$ ($T$ 的核) 以及所有输出矩阵 $T(bold(M))$ ($T$ 的值域).

#hei[19.]　若 $bold(A)$ 与 $bold(B)$ 为可逆矩阵且 $T(bold(M)) = bold(A) bold(M) bold(B)$, 则 $T^(-1)(bold(M))$ 为 ( )$bold(M)$( ).

习题 20—26 是关于 “房子” 变换的, 输出是 $T(bold(H)) = bold(A) bold(H)$ (图 8.2).

#hei[20.]　请问如何从由 $T$ 得到的图形 (房子) 中分辨出矩阵 $bold(A)$ 是

(a) 对角矩阵? #h(1.5em) (b) 秩为 1 的矩阵? #h(1.5em) (c) 下三角形矩阵?

#hei[21.]　将定义中的矩阵 $bold(A)$ 分别换成下列矩阵, 并描述 $T$ 的图形 (房子):

$ bold(D) = mat(delim: "[", 2, 0; 0, 1), quad bold(A) = mat(delim: "[", 0.7, 0.7; 0.3, 0.3), quad bold(U) = mat(delim: "[", 1, 1; 0, 1). $

#hei[22.]　请问矩阵 $bold(A) = mat(delim: "[", a, b; c, d)$ 满足什么条件能够分别确保 $T(bold(H))$ (房子)

(a) 竖直向上?

(b) 在每个方向上都放大为 3 倍?

(c) 在不改变形状的前提下, 进行旋转?

#hei[23.]　当变换 $T$ 满足 $T(bold(v)) = -bold(v) + (1, 0)$ 时, 请分析图形 $T(bold(H))$ (房子), 此时 $T$ 是 “仿射变换”.

#hei[24.]　请修改房子图形的矩阵 $bold(H)$ 来增加一个烟囱.

#hei[25.]　标准房子的图形可以利用指令 #raw("plot2d(H)") 来绘制. 以下程序中用 #raw("o") 表示圆, 用#raw("--")表示线段:

#pagebreak()
