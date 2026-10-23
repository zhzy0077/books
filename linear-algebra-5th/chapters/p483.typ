#import "../theme.typ": *

#v(6pt)
#align(center)[#image("../assets/fig-p483-icon.png", width: 3.2%)]

#xiti[习题集 9.2]

#ti[1.][求出向量 $u = (1 + "i", 1 - "i", 1 + 2"i")$ 和 $v = ("i", "i", "i")$ 的长度, 并计算 $u^H v$ 和 $v^H u$.]

#ti[2.][对矩阵

$ bold(A) = mat(delim: "[", "i", 1, "i"; 1, "i", "i"), $

计算 $bold(A)^H bold(A)$ 和 $bold(A) bold(A)^H$, 它们都是 \_\_\_\_ 矩阵.]

#ti[3.][对于习题 2 中的矩阵 $bold(A)$, 解 $bold(A) z = 0$, 即求出 $bold(A)$ 的零空间中的向量 $z$. 证明 $z$ 与 $bold(A)^H$ 的各列向量正交, 而 $z$ 与 $bold(A)^T$ 的各列向量并不正交. 现在表示行空间的不再是 $C(bold(A)^T)$, 而是 $C(bold(A)^H)$.]

#ti[4.][习题 3 暗示 $m times n$ 复矩阵 $bold(A)$ 的四个基本子空间为 $C(bold(A))$, $N(bold(A))$, \_\_\_\_ 和 \_\_\_\_. 它们的维数依旧分别为 $r$, $n - r$, $r$ 和 $m - r$, 其中 $r$ 为 $bold(A)$ 的秩. 它们仍旧配对构成正交子空间, 只不过将记号 $""^T$ 换成了 $""^H$.]

#ti[5.][(a) 对于任意复矩阵 $bold(A)$, 证明 $bold(A)^H bold(A)$ 总是埃尔米特矩阵.]

#sub[(b) 若 $bold(A) z = 0$, 则 $bold(A)^H bold(A) z = 0$. 若 $bold(A)^H bold(A) z = 0$, 则左乘 $z^H$ 可证得 $bold(A) z = 0$. 因此 $bold(A)$ 与 $bold(A)^H bold(A)$ 的零空间是 \_\_\_\_. 于是当 $bold(A)$ 的零空间只含 $z = 0$ 时, $bold(A)^H bold(A)$ 是可逆的埃尔米特矩阵.]

#ti[6.][判断正误 (若正确则给出理由, 若错误则举出反例):]

#sub[(a) 若 $bold(A)$ 为实矩阵, 则 $bold(A) + "i" bold(I)$ 为可逆矩阵;]

#sub[(b) 若 $bold(S)$ 为埃尔米特矩阵, 则 $bold(S) + "i" bold(I)$ 为可逆矩阵;]

#sub[(c) 若 $bold(Q)$ 为酉矩阵, 则 $bold(Q) + "i" bold(I)$ 为可逆矩阵.]

#ti[7.][用实数 $c$ 乘埃尔米特矩阵 $bold(S)$ 得到的 $c bold(S)$ 仍然为埃尔米特矩阵吗? 证明当 $bold(S)$ 为埃尔米特矩阵时, $"i" bold(S)$ 为反称埃尔米特矩阵 (即 $"i" bold(S) + ("i" bold(S))^H = bold(O)$). 假设取线性组合系数 \_ 为实数, 则全体 $3 times 3$ 埃尔米特矩阵构成一个实子空间.]

#ti[8.][以下矩阵 $bold(P)$ 属于可逆矩阵、埃尔米特矩阵、酉矩阵中的哪一类?

$ bold(P) = mat(delim: "[", 0, "i", 0; 0, 0, "i"; "i", 0, 0). $

计算 $bold(P)^2$, $bold(P)^3$ 和 $bold(P)^100$. $bold(P)$ 的特征值是什么?]

#ti[9.][求出习题 8 中矩阵 $bold(P)$ 的单位特征向量, 并利用它们作为列向量, 构造酉矩阵 $bold(Q)$. $bold(P)$ 具有的什么性质使得这些特征向量是正交的?]

#ti[10.][对于习题 8 中的矩阵 $bold(P)$, 写出 $3 times 3$ 循环矩阵 $bold(C) = 2 bold(I) + 5 bold(P)$. 它与 $bold(P)$ 有相同的特征向量. 求出 $bold(C)$ 的特征值.]

#ti[11.][设 $bold(Q)$ 和 $bold(U)$ 为酉矩阵, 证明 $bold(Q)^(-1)$ 以及 $bold(Q) bold(U)$ 均为酉矩阵. 可由 $bold(Q)^H bold(Q) = bold(I)$ 和 $bold(U)^H bold(U) = bold(I)$ 入手.]

#pagebreak()