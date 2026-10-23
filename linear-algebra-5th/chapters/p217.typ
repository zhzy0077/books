#import "../theme.typ": *

#hei[21.]  设 $bold(A)$ 为两个秩 1 矩阵的和: $bold(A) = bold(u) bold(v)^T + bold(w) bold(z)^T$.

#h(2em) (a) 哪些向量生成 $bold(A)$ 的列空间?

#h(2em) (b) 哪些向量生成 $bold(A)$ 的行空间?

#h(2em) (c) 当 $\_\_\_\_$ 或 $\_\_\_\_$ 时, $bold(A)$ 的秩不超过 2;

#h(2em) (d) 当 $bold(u) = bold(z) = (1, 0, 0)$, $bold(v) = bold(w) = (0, 0, 1)$ 时, 计算 $bold(A)$ 及其秩.

#hei[22.]  构造矩阵 $bold(A) = bold(u) bold(v)^T + bold(w) bold(z)^T$, 使得列空间的基为 $(1, 2, 4), (2, 2, 1)$, 且行空间的基为 $(1, 0), (1, 1)$. 将 $bold(A)$ 写为 ($3 times 2$ 矩阵) 左乘 ($2 times 2$ 矩阵) 的形式.

#hei[23.]  不算出以下矩阵乘积, 求出 $bold(A)$ 的行空间和列空间的基:

#align(center)[$ bold(A) = mat(1, 2; 4, 5; 2, 7) mat(3, 0, 3; 1, 1, 2) . $]

由上式右端两个矩阵的形状, 如何确定 $bold(A)$ 不是可逆矩阵?

#hei[24.]  (重要) 当 $bold(d)$ 属于 $bold(A)$ 的四个子空间中哪一个时, $bold(A)^T bold(y) = bold(d)$ 可解? 当 $\_\_\_\_$ 空间只含零向量时, 解 $bold(y)$ 唯一.

#hei[25.]  判断正误 (正确则给出理由, 错误则举出反例):

#h(2em) (a) $bold(A)$ 与 $bold(A)^T$ 主元个数相同;

#h(2em) (b) $bold(A)$ 与 $bold(A)^T$ 左零空间相同;

#h(2em) (c) 如果 $bold(A)$ 的行空间等于列空间, 那么 $bold(A)^T = bold(A)$;

#h(2em) (d) 如果 $bold(A)^T = -bold(A)$, 那么 $bold(A)$ 的行空间等于列空间.

#hei[26.]  给定 $a, b, c$, 且 $a != 0$, 如何选择 $d$, 使得 $mat(a, b; c, d)$ 的秩为 1? 求出行空间与零空间的一组基, 并证明它们互相垂直.

#hei[27.]  求出 $8 times 8$ “跳棋棋盘” 矩阵 $bold(B)$ 和 $8 times 8$ “国际象棋” 矩阵 $bold(C)$ 的秩:

#align(center)[$ bold(B) = mat(1, 0, 1, 0, 1, 0, 1, 0; 0, 1, 0, 1, 0, 1, 0, 1; 1, 0, 1, 0, 1, 0, 1, 0; dots.v, dots.v, dots.v, dots.v, dots.v, dots.v, dots.v, dots.v; 0, 1, 0, 1, 0, 1, 0, 1) , quad bold(C) = mat(r, n, b, q, k, b, n, r; p, p, p, p, p, p, p, p; dots.v, dots.v, dots.v, dots.v, dots.v, dots.v, dots.v, dots.v; p, p, p, p, p, p, p, p; r, n, b, q, k, b, n, r) . $]

$bold(C)$ 中省略了四个全零行, 且数值 $r, n, b, q, k, p$ 互异#footnote[译者注: 国际象棋中, 六种棋子为车、马、象、后、王、兵, 英文分别是 rook, knight, bishop, queen, king, pawn. 这里以其首字母指代各棋子. 为避免与王混淆, knight 简记为 n.]. 求出 $bold(B)$ 与 $bold(C)$ 的行空间和左零空间的基. 挑战题: 求出 $bold(C)$ 的零空间的一组基.

#hei[28.]  三子棋 (tic-tac-toe) 游戏的棋盘局面可视为一个 $3 times 3$ 矩阵 $bold(A)$, 且每个元素只能取值 0 或 1. 如果一局游戏结束时, 双方均未赢, 是否可能出现 $bold(A)$ 中有 5 个 1 和 4 个 0, 而 $bold(A)$ 的秩为 2?



#pagebreak()
