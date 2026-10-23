#import "../theme.typ": *

#align(center)[#v(8pt)#text(font: ("SimHei", "Noto Sans CJK SC"), size: 16pt)[线性代数与数据学习]#v(8pt)]

#yaodian[
  #hei[线性代数与数据学习] (搜索 math mit learningfromdata 以访问相关网页)  这是麻省理工学院的应用线性代数课程 18.065 的新教材. 它以矩阵的几种基本分解开篇:

  #dmath[$ bold(A) = bold(L) bold(U), quad bold(A) = bold(Q) bold(R), quad bold(A) = bold(X) bold(Λ) bold(X)^(-1), $]

  #dmath[$ bold(S) = bold(Q) bold(Λ) bold(Q)^T, quad bold(A) = bold(U) bold(Σ) bold(V)^T, quad bold(A) = bold(C) bold(M) bold(R). $]

  后三个分解式是数据分析的基础——对称矩阵 $bold(S)$ 的特征值矩阵 $bold(Λ)$, 任意矩阵 $bold(A)$ 的奇异值矩阵 $bold(Σ)$ (奇异值分解也是该书最精彩的部分), 列混合行因子分解式 $bold(A) = bold(C) bold(M) bold(R)$.

  深度学习旨在发现训练数据中的模式. 矩阵乘法与非线性斜坡函数 $"ReLU"(x) = max \{0, x\}$ 交织在一起, 得到可以解释新数据的学习函数. 该教材阐释了这样做得以成功的方式与原因——仅需使用课堂时间. 充分使用线性代数和学生课题是授课的关键步骤.
]

#pagebreak()