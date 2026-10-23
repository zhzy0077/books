#import "../theme.typ": *

#hei[解]  将这些变换作用于单位矩阵 $bold(I)$ 得

#align(center)[#grid(columns: (auto, auto, auto), column-gutter: 2em, align: horizon,
  [$ bold(E)_(21) = mat(delim: "[", 1, 0, 0; -4, 1, 0; 0, 0, 1) $],
  [和],
  [$ bold(P)_(32) = mat(delim: "[", 1, 0, 0; 0, 0, 1; 0, 1, 0) . $],
)]

用 $bold(E)_(21)$ 右乘矩阵 $bold(A)$ 相当于从第 1 列中减去第 2 列的 4 倍, 用 $bold(P)_(32)$ 右乘矩阵 $bold(A)$ 相当于交换第 2 列和第 3 列.

#hei[2.3 B]  请写出线性方程组

#dmath[$ cases(x + 2y + 2z = 1, 4x + 8y + 9z = 3, 3y + 2z = 1) $]

的增广矩阵 $[bold(A) quad bold(b)]$. 在此基础上用 $bold(E)_(21)$ 消元再利用 $bold(P)_(32)$ 换行以得到一个三角形方程组, 然后回代求解. 这两个矩阵相乘所得的 $bold(P)_(32) bold(E)_(21)$ 能够同时完成上述两个步骤, 求该乘积.

#hei[解]  利用 $bold(E)_(21)$ (乘数为 $-4$) 左乘增广矩阵可消去第 2 行第 1 列的元素 4, 但是第 2 行第 2 列的元素也变成了 0:

#align(center)[#grid(columns: (auto, auto), column-gutter: 2em, align: horizon,
  [$ [bold(A) quad bold(b)] = mat(delim: "[", 1, 2, 2, 1; 4, 8, 9, 3; 0, 3, 2, 1) , $],
  [$ bold(E)_(21) [bold(A) quad bold(b)] = mat(delim: "[", 1, 2, 2, 1; 0, 0, 1, -1; 0, 3, 2, 1) , $],
)]

故再利用 $bold(P)_(32)$ 交换第 2 行和第 3 行得到上三角形方程组. 然后回代可依次求解 $z, y$ 和 $x$. 即:

#dmath[$ bold(P)_(32) bold(E)_(21) [bold(A) quad bold(b)] = mat(delim: "[", 1, 2, 2, 1; 0, 3, 2, 1; 0, 0, 1, -1) , quad mat(delim: "[", x; y; z) = mat(delim: "[", 1; 1; -1) . $]

乘积 $bold(P)_(32) bold(E)_(21)$ 能够同时完成上述消元和换行两个步骤. 为得到该乘积, 可将 $bold(P)_(32)$ 作用于 $bold(E)_(21)$,

#eqL[一个矩阵, \ 两个步骤][$ bold(P)_(32) bold(E)_(21) $  表示对 $bold(E)_(21)$ 换行, 得到 $ mat(delim: "[", 1, 0, 0; 0, 0, 1; -4, 1, 0) . $]

#hei[2.3 C]  请用两种不同方法计算以下矩阵乘法: 第一种方法, 用 $bold(A)$ 的行左乘 $bold(B)$ 的列; 第二种方法, 用 $bold(A)$ 的列左乘 $bold(B)$ 的行, 这个不太常规的方法会得到两个单独的矩阵且相加之和是 $bold(A) bold(B)$. 请分析上述计算各需要多少次单独的乘法?

#eqL[两种方法 \ 结果相同][$ bold(A) bold(B) = mat(delim: "[", 3, 4; 1, 5; 2, 0) mat(delim: "[", 2, 4; 1, 1) = mat(delim: "[", 10, 16; 7, 9; 4, 8) . $]



#pagebreak()
