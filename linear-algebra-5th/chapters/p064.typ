#import "../theme.typ": *

习题 9—14 是关于矩阵与向量乘法的.

#hei[9.] 利用矩阵每一行与列向量的点积来计算下列 $bold(A) bold(x)$:

#grid(columns: (auto, auto), column-gutter: 3em, align: horizon,
  [(a) $mat(delim: "[", 1, 2, 4; -2, 3, 1; -4, 1, 2) mat(delim: "[", 2; 2; 3);$],
  [(b) $mat(delim: "[", 2, 1, 0, 0; 1, 2, 1, 0; 0, 1, 2, 1; 0, 0, 1, 2) mat(delim: "[", 1; 1; 1; 2).$],
)

#hei[10.] 利用矩阵列向量的线性组合来计算习题 9 中的 $bold(A) bold(x)$. 此时习题 9(a) 变为

#dmath[$ bold(A) bold(x) = 2 mat(delim: "[", 1; -2; -4) + 2 mat(delim: "[", 2; 3; 1) + 3 mat(delim: "[", 4; 1; 2) = mat(delim: "[", gap: #0.9em, ; ; ). $]

对于 $3 times 3$ 矩阵 $bold(A)$, 计算 $bold(A) bold(x)$ 需要多少次单独的乘法运算?

#hei[11.] 逐行或逐列计算下列 $bold(A) bold(x)$ 的两个分量:

#grid(columns: (1fr, 1fr, 1fr), column-gutter: 1em, align: (center, center, center),
  [$ mat(delim: "[", 2, 3; 5, 1) mat(delim: "[", 4; 2) ,$],
  [$ mat(delim: "[", 3, 6; 6, 12) mat(delim: "[", 2; -1) ,$],
  [$ mat(delim: "[", 1, 2, 4; 2, 0, 1) mat(delim: "[", 3; 1; 1) .$],
)

#hei[12.] 利用 $bold(A)$ 左乘 $bold(x)$ 来计算下列 $bold(A) bold(x)$ 的三个分量:

#grid(columns: (1fr, 1fr, 1fr), column-gutter: 1em, align: (center, center, center),
  [$ mat(delim: "[", 0, 0, 1; 0, 1, 0; 1, 0, 0) mat(delim: "[", x; y; z) ,$],
  [$ mat(delim: "[", 2, 1, 3; 1, 2, 3; 3, 3, 6) mat(delim: "[", 1; 1; -1) ,$],
  [$ mat(delim: "[", 2, 1; 1, 2; 3, 3) mat(delim: "[", 1; 1) .$],
)

#hei[13.] (a) 用 $m$ 行 $n$ 列矩阵 $bold(A)$ 左乘含 \_\_\_\_ 个分量的向量, 所得结果是含 \_\_\_\_ 个分量的向量;

(b) 线性方程组 $bold(A) bold(x) = bold(b)$ 中 $m$ 个方程对应的平面在 \_\_\_\_ 维空间中. $bold(A)$ 的列向量的线性组合在 \_\_\_\_ 维空间中.

#hei[14.] 请将 $2x + 3y + z + 5t = 8$ 写成矩阵 $bold(A)$ (有多少行?) 左乘列向量 $bold(x) = (x, y, z, t)$ 生成向量 $bold(b)$ 的形式. 所有的解 $bold(x)$ 构成四维空间中的一个 “超平面”, 这是一个三维 “平面”, 没有四维 “体积”.

习题 15—22 是关于对向量起特定作用的矩阵的.

#hei[15.] (a) 请写出 $2 times 2$ 单位矩阵 $bold(I)$, 其中 $bold(I)$ 左乘 $mat(delim: "[", x; y)$ 等于 $mat(delim: "[", x; y)$;

(b) 请写出 $2 times 2$ 交换矩阵 $bold(P)$, 其中 $bold(P)$ 左乘 $mat(delim: "[", x; y)$ 等于 $mat(delim: "[", y; x)$.



#pagebreak()
