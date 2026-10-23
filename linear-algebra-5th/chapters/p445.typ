#import "../theme.typ": *

#ti[7.][对于以下从 $V = R^2$ 到 $W = R^2$ 的变换 $T$, 请计算 $T(T(bold(v)))$, 并证明当 $T(bold(v))$ 是线性变换时, $T(T(bold(v)))$ 也是线性变换:
#sub[(a) $T(bold(v)) = -bold(v)$; #h(2em) (b) $T(bold(v)) = bold(v) + (1, 1)$;]
#sub[(c) $T(bold(v)) = (-v_2, v_1)$ 为逆时针旋转 $90°$ 的变换;]
#sub[(d) $T(bold(v)) = 1/2 (v_1 + v_2, v_1 + v_2)$ 为投影变换.]]

#ti[8.][请求出下列变换 $T$ 的值域与核 (类似于矩阵的列空间和零空间):
#sub[(a) $T(v_1, v_2) = (v_1 - v_2, 0)$; #h(2em) (b) $T(v_1, v_2, v_3) = (v_1, v_2)$;]
#sub[(c) $T(v_1, v_2) = (0, 0)$; #h(2em) (d) $T(v_1, v_2) = (v_1, v_1)$.]]

#ti[9.][设 “循环” 变换 $T$ 的定义为 $T(v_1, v_2, v_3) = (v_2, v_3, v_1)$, 请问 $T(T(bold(v)))$ 是什么? $T^3(bold(v))$ 是什么? $T^100(bold(v))$ 呢? 请试着对 $bold(v)$ 施行 100 次变换 $T$.]

#ti[10.][当一个从 $V$ 到 $W$ 的线性变换的值域是整个 $W$, 且核只包含 $bold(v) = bold(0)$ 时, 该变换就存在从 $W$ 到 $V$ 的逆变换, 此时对 $W$ 中的每一个 $bold(w)$, $T(bold(v)) = bold(w)$ 有唯一解 $bold(v)$. 请问为什么以下线性变换 $T$ 不可逆?
#sub[(a) $T(v_1, v_2) = (v_2, v_2), quad W = R^2$;]
#sub[(b) $T(v_1, v_2) = (v_1, v_2, v_1 + v_2), quad W = R^3$;]
#sub[(c) $T(v_1, v_2) = v_1, quad W = R^1$.]]

#ti[11.][设变换 $T$ 满足 $T(bold(v)) = bold(A) bold(v)$, 其中 $bold(A)$ 是一个 $m times n$ 矩阵, 则变换 $T$ 的作用是 “用矩阵 $bold(A)$ 左乘”.
#sub[(a) 请问输入空间 $V$ 与输出空间 $W$ 分别是什么?]
#sub[(b) 为什么变换 $T$ 的值域是 $bold(A)$ 的列空间?]
#sub[(c) 为什么变换 $T$ 的核是 $bold(A)$ 的零空间?]]

#ti[12.][设线性变换 $T$ 将 $(1, 1)$ 变换为 $(2, 2)$, $(2, 0)$ 变换为 $(0, 0)$, 请对以下 $bold(v)$, 计算 $T(bold(v))$:
#sub[(a) $bold(v) = (2, 2)$; #h(2em) (b) $bold(v) = (3, 1)$; #h(2em) (c) $bold(v) = (-1, 1)$; #h(2em) (d) $bold(v) = (a, b)$.]]

习题 13—19 可能稍难一点, 因为输入空间 $V$ 包含了全部二阶方阵 $M$.

#ti[13.][设 $M$ 为任意二阶方阵, $bold(A) = display(mat(1, 2; 3, 4))$, 将变换 $T$ 定义为 $T(bold(M)) = bold(A) bold(M)$, 请利用矩阵乘法的运算律证明 $T$ 是线性变换.]

#ti[14.][设 $bold(A) = display(mat(1, 2; 3, 5))$, 请证明上述 $T$ 的值域是整个矩阵空间 $V$ 且核仅含零矩阵:
#sub[(a) 若 $bold(A) bold(M) = bold(O)$, 请证明 $bold(M)$ 一定是零矩阵;]
#sub[(b) 对任意二阶方阵 $bold(B)$, 求出 $bold(A) bold(M) = bold(B)$ 的一个解.]]

#ti[15.][设 $bold(A) = display(mat(1, 2; 3, 6))$ 且 $T(bold(M)) = bold(A) bold(M)$, 请证明单位矩阵 $bold(I)$ 不属于 $T$ 的值域. 请求出一个非零矩阵 $bold(M)$ 使得 $T(bold(M)) = bold(A) bold(M)$ 是零矩阵.]

#pagebreak()