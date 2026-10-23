#import "../theme.typ": *

#hei[13.] (a) 如下 4 阶方阵 $bold(C)$ 的两个特征向量为 $(1, 1, 1, 1)$ 和 $(1, "i", "i"^2, "i"^3)$, 求出特征值 $e_1, e_2$:

#dmath[$ bold(C) mat(delim: "[", 1; 1; 1; 1) = mat(delim: "[", c_0, c_1, c_2, c_3; c_3, c_0, c_1, c_2; c_2, c_3, c_0, c_1; c_1, c_2, c_3, c_0) mat(delim: "[", 1; 1; 1; 1) = e_1 mat(delim: "[", 1; 1; 1; 1), quad bold(C) mat(delim: "[", 1; "i"; "i"^2; "i"^3) = e_2 mat(delim: "[", 1; "i"; "i"^2; "i"^3). $]

(b) 由 $bold(P) = bold(F) bold(Lambda) bold(F)^(-1)$ 立得 $bold(P)^2 = bold(F) bold(Lambda)^2 bold(F)^(-1)$ 和 $bold(P)^3 = bold(F) bold(Lambda)^3 bold(F)^(-1)$, 于是

#dmath[$ bold(C) = c_0 I + c_1 bold(P) + c_2 bold(P)^2 + c_3 bold(P)^3 $]

#dmath[$ = bold(F)(c_0 I + c_1 bold(Lambda) + c_2 bold(Lambda)^2 + c_3 bold(Lambda)^3) bold(F)^(-1) $]

#dmath[$ = bold(F) bold(E) bold(F)^(-1). $]

括号中的矩阵记为 $bold(E)$, 它是对角矩阵, 包含 $bold(C)$ 的 \_\_\_\_.

#hei[14.] 由 $bold(E) = 2I - bold(Lambda) - bold(Lambda)^3$, 求出 “周期” “$-1, 2, -1$” 矩阵 $bold(C)$ 的特征值, 其中 $bold(Lambda)$ 为 $bold(P)$ 的特征值矩阵. 角落处的元素 $-1$ 使得矩阵 $bold(C)$ 呈现周期性:

#dmath[$ bold(C) = mat(delim: "[", 2, -1, 0, -1; -1, 2, -1, 0; 0, -1, 2, -1; -1, 0, -1, 2) quad text("有") c_0 = 2, c_1 = -1, c_2 = 0, c_3 = -1. $]

#hei[15.] 快速卷积相当于用 $bold(C)$ 快速左乘: 用 $bold(C)$ 左乘向量 $bold(x)$, 可用 $bold(F)(bold(E)(bold(F)^(-1) bold(x)))$ 代替. 直接相乘使用 $n^2$ 次单独乘法. 而已知 $bold(E)$ 和 $bold(F)$ 后, 第二种方法仅用 $n log_2 n + n$ 次乘法. 其中来自 $bold(E)$, $bold(F)$ 和 $bold(F)^(-1)$ 的乘法次数分别为多少?

#hei[16.] (注意) 为什么 $overline(bold(F))$ 的第 $i$ 行与 $bold(F)$ 的第 $N - i$ 行相同 (行号由 0 到 $N - 1$ 标记)?

#hei[17.] 数字 $0, 1, dots, 7$ 的位反转排序是什么? 将它们均以二进制 (基数为 2) 形式写为 $000, 001, dots, 111$, 然后颠倒每个数字各数码的次序. 那么上述 8 个数字现在变为 \_\_\_\_.

#pagebreak()