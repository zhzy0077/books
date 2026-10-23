#import "../theme.typ": *

#hei[20.] 请分别将以下对称矩阵 $bold(S)$ 分解成 $bold(S) = bold(L) bold(D) bold(L)^T$, 其中主元矩阵 $bold(D)$ 是对角矩阵:

#align(center)[(a) $bold(S) = mat(delim: "[", 1,3;3,2)$;  (b) $bold(S) = mat(delim: "[", 1,b;b,c)$;  (c) $bold(S) = mat(delim: "[", 2,-1,0;-1,2,-1;0,-1,2)$.]

#hei[21.] 对下列矩阵 $bold(S)$ 利用第一个主元将第 1 列其余的元素消为零, 请计算此时矩阵右下角子块所对应的二阶对称矩阵:

#align(center)[(a) $bold(S) = mat(delim: "[", 2,4,8;4,3,9;8,9,0)$;  (b) $bold(S) = mat(delim: "[", 1,b,c;b,d,e;c,e,f)$.]

习题 22—24 是关于分解式 $bold(P) bold(A) = bold(L) bold(U)$ 和 $bold(A) = bold(L)_1 bold(P)_1 bold(U)_1$ 的.

#hei[22.] 请计算下列矩阵 $bold(A)$ 的 $bold(P) bold(A) = bold(L) bold(U)$ 分解式 (并进行检验):

#align(center)[(a) $bold(A) = mat(delim: "[", 0,1,1;1,0,1;2,3,4)$;  (b) $bold(A) = mat(delim: "[", 1,2,0;2,4,1;1,1,1)$.]

#hei[23.] 请找出一个需要进行 3 次换行才能完成消元的 4 阶置换矩阵 (记为 $bold(A)$). 请问这个矩阵的分解因子 $bold(P), bold(L)$ 和 $bold(U)$ 分别是什么?

#hei[24.] 将如下矩阵 $bold(A)$ 分别分解成 $bold(P) bold(A) = bold(L) bold(U)$ 和 $bold(A) = bold(L)_1 bold(P)_1 bold(U)_1$ (从第 2 行减去第 1 行的 3 倍之后才能对第 3 行换行):

#align(center)[$ bold(A) = mat(delim: "[", 0,1,2;0,3,8;2,1,1) . $]

#hei[25.] 请证明单位矩阵不可能写成 3 个 (或者 5 个) 换行矩阵的乘积, 但是可以写成 2 个 (或者 4 个) 换行矩阵的乘积.

#hei[26.] (a) 对如下矩阵 $bold(S)$ 先用消元矩阵 $bold(E)_(21)$ 消去第一个主元下方的 3, 再用乘法 $bold(E)_(21) bold(S) bold(E)_(21)^T$ 消去两个 3:

#grid(columns: (1fr, auto, 1fr),
  align(center)[$ bold(S) = mat(delim: "[", 1,3,0;3,11,4;0,4,9) $],
  align(horizon)[可化简为],
  align(center)[$ bold(D) = mat(delim: "[", 1,0,0;0,2,0;0,0,1) ; $],
)

(b) 然后用消元矩阵 $bold(E)_(32)$ 消去第二个主元下方的 4, 再用乘法 $bold(E)_(32) bold(E)_(21) bold(S) bold(E)_(21)^T bold(E)_(32)^T$ 将 $bold(S)$ 化简成 $bold(D)$. 请对上述所有 $bold(E)_(i j)$ 求逆以计算出 $bold(S) = bold(L) bold(D) bold(L)^T$ 中的矩阵 $bold(L)$.

#hei[27.] 若一个 4 阶方阵的每一行都由数字 0,1,2,3 按一定次序排列而成, 请问这个矩阵可能是对称矩阵吗?



#pagebreak()
