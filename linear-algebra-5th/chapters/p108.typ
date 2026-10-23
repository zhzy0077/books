#import "../theme.typ": *

注 4 (重要)  设存在非零向量 $bold(x)$ 使得 $bold(A) bold(x) = 0$, 则矩阵 $bold(A)$ 不可逆: 没有矩阵能够从 0 反推得到 $bold(x)$, 因为

#dmath[$ "若" bold(A) "可逆, 则" bold(A) bold(x) = 0 "只有零解" bold(x) = bold(A)^(-1) 0 = 0 . $]

注 5  二阶方阵 $bold(A) = mat(delim: "[", a, b; c, d)$ 可逆当且仅当 $a d - b c != 0$:

#eqnumL([二阶可逆方阵], $ mat(delim: "[", a, b; c, d)^(-1) = 1/(a d - b c) mat(delim: "[", d, -b; -c, a), $, 3)

其中 $a d - b c$ 是方阵 $bold(A)$ 的行列式. 若方阵的行列式不为零, 则该方阵可逆 (第 5 章). 在学习行列式之前, 一般利用是否有 $n$ 个主元来判断方阵的可逆性.

注 6  当主对角线上的元素都不为零时, 对角矩阵可逆#footnote[译者注: 式中未明确写出的元素均为 0, 后续类似形式均按此理解.]:

#dmath[$ "若" bold(A) = mat(delim: "[", d_1, , , ; , d_2, , ; , , dots.down, ; , , , d_n), quad "则" quad bold(A)^(-1) = mat(delim: "[", 1/d_1, , , ; , 1/d_2, , ; , , dots.down, ; , , , 1/d_n) . $]

#hei[例 1]  二阶方阵 $bold(A) = mat(delim: "[", 1, 2; 1, 2)$ 不可逆: 因为 $a d - b c = 2 - 2 = 0$, 故不满足注记 5 的要求; 当 $bold(x) = (2, -1)$ 时, $bold(A) bold(x) = 0$, 故不能通过注记 3 的检验; 因为消元法将矩阵 $bold(A)$ 的第 2 行变成了零行, 它没有两个主元, 不满足注记 1 的要求.

#align(center, hei[乘积 $bold(A) bold(B)$ 的逆矩阵])

对于两个非零的数 $a$ 和 $b$, 它们的和 $a + b$ 不一定有倒数. 例如, $a = 3$ 和 $b = -3$ 的倒数分别是 $1/3$ 和 $-1/3$, 而它们的和 $a + b = 0$ 没有倒数. 但是乘积 $a b = -9$ 的倒数是 $1/3 times (-1/3)$.

对于两个矩阵 $bold(A)$ 和 $bold(B)$ 也具有类似的结论. $bold(A), bold(B)$ 均可逆不能保证 $bold(A) + bold(B)$ 也可逆, 但是当且仅当 $bold(A)$ 和 $bold(B)$ 是同阶方阵且都可逆时, 乘积 $bold(A) bold(B)$ 可逆. 需要注意, 乘积的逆矩阵中 $bold(A)^(-1)$ 和 $bold(B)^(-1)$ 要以相反的顺序出现:

#dingli[
  若 $bold(A)$ 和 $bold(B)$ 是同阶可逆矩阵, 则 $bold(A) bold(B)$ 可逆, 且 $bold(A) bold(B)$ 的逆矩阵是

  #eqnum($ (bold(A) bold(B))^(-1) = bold(B)^(-1) bold(A)^(-1) . $, 4)
]



#pagebreak()
